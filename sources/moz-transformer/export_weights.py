#!/usr/bin/env python3
"""
export_weights.py -- Export pretrained music model weights to flat binary format for MOZ'Transformer.

Supports:
  - TensorFlow 1 checkpoints (Magenta Music Transformer, CocoNet, Performance RNN)
  - PyTorch checkpoints (.pt / .pth)

Usage:
  python3 export_weights.py <checkpoint> [output_dir]

For TF1 checkpoints, pass the base path WITHOUT extension:
  python3 export_weights.py /path/to/unconditional_model_16.ckpt
  python3 export_weights.py /path/to/coconet/checkpoint

For PyTorch checkpoints:
  python3 export_weights.py /path/to/model.pt

Output directory defaults to <checkpoint_basename>_weights/ next to the checkpoint.

The output contains:
  manifest.json   -- tensor names, shapes, filenames
  *.bin           -- flat float32 binary arrays

Load in MOZLib:
  (moz-transformer:load-model "/path/to/model_weights/")

Downloading Magenta checkpoints (run these once before exporting):
  Music Transformer (unconditional):
    curl -O https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.data-00000-of-00001
    curl -O https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.index
    curl -O https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.meta

  CocoNet:
    curl -O https://storage.googleapis.com/magentadata/models/coconet/checkpoint
    curl -O https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.data-00000-of-00001
    curl -O https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.index
    curl -O https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.meta
"""

import sys
import os
import json
import struct


def detect_format(checkpoint_path):
    """Detect whether checkpoint is TF1 or PyTorch."""
    # TF1: look for .index file
    if os.path.exists(checkpoint_path + ".index"):
        return "tf1"
    if os.path.exists(checkpoint_path + ".ckpt.index"):
        return "tf1"
    # TF1 checkpoint file (contains path to actual ckpt)
    if os.path.basename(checkpoint_path) == "checkpoint":
        return "tf1_dir"
    # PyTorch
    if checkpoint_path.endswith(".pt") or checkpoint_path.endswith(".pth"):
        return "pytorch"
    # Try PyTorch as fallback
    return "pytorch"


def write_tensor(output_dir, name, numpy_array, manifest):
    """Write a single numpy array to binary file and update manifest."""
    arr = numpy_array.astype("float32")
    shape = list(arr.shape)
    numel = arr.size

    # Sanitize filename
    safe_name = name.replace("/", "_").replace(".", "_").replace(":", "_")
    filename = safe_name + ".bin"
    filepath = os.path.join(output_dir, filename)

    arr_flat = arr.flatten()
    with open(filepath, "wb") as f:
        f.write(struct.pack("{}f".format(len(arr_flat)), *arr_flat.tolist()))

    manifest[name] = {
        "file": filename,
        "shape": shape,
        "dtype": "float32",
        "numel": numel
    }
    print("  {}: {} -> {}".format(name, shape, filename))


def export_tf1(checkpoint_path, output_dir):
    """Export TensorFlow 1 checkpoint (Magenta format)."""
    try:
        import tensorflow.compat.v1 as tf
        tf.disable_v2_behavior()
        print("Using TensorFlow (compat v1 mode)")
    except ImportError:
        try:
            import tensorflow as tf
            print("Using TensorFlow v1")
        except ImportError:
            print("ERROR: TensorFlow not installed.")
            print("Install with: pip install tensorflow")
            sys.exit(1)

    # If given a 'checkpoint' file, read the actual path from it
    if os.path.basename(checkpoint_path) == "checkpoint":
        checkpoint_dir = os.path.dirname(checkpoint_path)
        ckpt = tf.train.latest_checkpoint(checkpoint_dir)
        if ckpt is None:
            print("ERROR: Could not find checkpoint in {}".format(checkpoint_dir))
            sys.exit(1)
        print("Found checkpoint: {}".format(ckpt))
        checkpoint_path = ckpt

    # List all variables in the checkpoint
    print("Reading TF1 checkpoint: {}".format(checkpoint_path))
    try:
        var_list = tf.train.list_variables(checkpoint_path)
    except Exception as e:
        print("ERROR reading checkpoint: {}".format(e))
        sys.exit(1)

    print("Found {} variables".format(len(var_list)))

    manifest = {}
    skipped = 0

    # Load each variable
    for name, shape in var_list:
        # Skip optimizer/training variables — we only want model weights
        skip_patterns = [
            "Adam", "adam", "Adagrad", "momentum", "global_step",
            "ExponentialMovingAverage", "learning_rate", "loss_scale",
            "beta1_power", "beta2_power", "clip_by_global_norm"
        ]
        should_skip = any(p in name for p in skip_patterns)
        if should_skip:
            skipped += 1
            continue

        try:
            value = tf.train.load_variable(checkpoint_path, name)
            write_tensor(output_dir, name, value, manifest)
        except Exception as e:
            print("  WARNING: Could not load {}: {}".format(name, e))

    if skipped > 0:
        print("  (skipped {} optimizer/training variables)".format(skipped))

    return manifest


def export_pytorch(checkpoint_path, output_dir):
    """Export PyTorch checkpoint."""
    try:
        import torch
    except ImportError:
        print("ERROR: PyTorch not installed.")
        print("Install with: pip install torch")
        sys.exit(1)

    print("Loading PyTorch checkpoint: {}".format(checkpoint_path))
    try:
        ckpt = torch.load(checkpoint_path, map_location="cpu")
    except Exception as e:
        print("ERROR loading checkpoint: {}".format(e))
        sys.exit(1)

    # Extract state dict
    if isinstance(ckpt, dict):
        if "state_dict" in ckpt:
            state_dict = ckpt["state_dict"]
            print("Format: wrapped (state_dict key)")
        elif "model_state_dict" in ckpt:
            state_dict = ckpt["model_state_dict"]
            print("Format: wrapped (model_state_dict key)")
        else:
            state_dict = ckpt
            print("Format: raw state dict")
    else:
        try:
            state_dict = ckpt.state_dict()
            print("Format: full model object")
        except AttributeError:
            print("ERROR: Cannot extract state dict")
            sys.exit(1)

    # Strip DataParallel prefix
    cleaned = {}
    for k, v in state_dict.items():
        key = k[7:] if k.startswith("module.") else k
        cleaned[key] = v

    print("Found {} tensors".format(len(cleaned)))

    manifest = {}
    for name, tensor in cleaned.items():
        try:
            arr = tensor.detach().float().numpy()
            write_tensor(output_dir, name, arr, manifest)
        except Exception as e:
            print("  WARNING: Could not export {}: {}".format(name, e))

    return manifest


def export_weights(checkpoint_path, output_dir=None):
    checkpoint_path = os.path.abspath(checkpoint_path)

    # Determine output directory
    if output_dir is None:
        # Strip extensions for base name
        base = checkpoint_path
        for ext in [".ckpt", ".pt", ".pth", ".data-00000-of-00001",
                    ".index", ".meta"]:
            if base.endswith(ext):
                base = base[:-len(ext)]
        if os.path.basename(base) == "checkpoint":
            base = os.path.dirname(base)
        output_dir = base + "_weights"

    output_dir = os.path.abspath(output_dir)
    os.makedirs(output_dir, exist_ok=True)
    print("Exporting to: {}".format(output_dir))

    fmt = detect_format(checkpoint_path)
    print("Detected format: {}".format(fmt))

    if fmt in ("tf1", "tf1_dir"):
        manifest = export_tf1(checkpoint_path, output_dir)
    else:
        manifest = export_pytorch(checkpoint_path, output_dir)

    # Write manifest
    manifest_path = os.path.join(output_dir, "manifest.json")
    with open(manifest_path, "w") as f:
        json.dump(manifest, f, indent=2)

    print("\nDone.")
    print("Tensors exported: {}".format(len(manifest)))
    print("Manifest: {}".format(manifest_path))
    print("\nTo load in MOZLib:")
    print('  (moz-transformer:load-model "{}")'.format(output_dir))


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        sys.exit(1)

    checkpoint_path = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else None
    export_weights(checkpoint_path, output_dir)

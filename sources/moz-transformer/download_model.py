#!/usr/bin/env python3
"""
download_model.py -- Download and export a pretrained music model for MOZ'Transformer.

Usage:
  python3 download_model.py <model_name> [output_base_dir]

Available models:
  music_transformer   -- Google Magenta Music Transformer (unconditional, classical piano)
  coconet             -- Google Magenta CocoNet (Bach chorales)

Output base dir defaults to ~/Documents/MOZLib-models/
Each model exports to: <output_base_dir>/<model_name>_weights/

This script is designed to be called from Max's shell object:
  shell "python3 /path/to/download_model.py music_transformer"
  -> prints the weights directory path on the last line for Max to read back

Requires:
  pip install tensorflow    (for Magenta TF1 checkpoints)
  pip install requests      (for downloading)
"""

import sys
import os
import json

MODELS = {
    "music_transformer": {
        "description": "Google Magenta Music Transformer (unconditional, classical piano)",
        "files": [
            {
                "url": "https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.data-00000-of-00001",
                "filename": "unconditional_model_16.ckpt.data-00000-of-00001"
            },
            {
                "url": "https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.index",
                "filename": "unconditional_model_16.ckpt.index"
            },
            {
                "url": "https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.meta",
                "filename": "unconditional_model_16.ckpt.meta"
            }
        ],
        "ckpt_base": "unconditional_model_16.ckpt",
        "format": "tf1"
    },
    "coconet": {
        "description": "Google Magenta CocoNet (Bach chorale harmonization)",
        "files": [
            {
                "url": "https://storage.googleapis.com/magentadata/models/coconet/checkpoint",
                "filename": "checkpoint"
            },
            {
                "url": "https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.data-00000-of-00001",
                "filename": "model.ckpt-0.data-00000-of-00001"
            },
            {
                "url": "https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.index",
                "filename": "model.ckpt-0.index"
            },
            {
                "url": "https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.meta",
                "filename": "model.ckpt-0.meta"
            }
        ],
        "ckpt_base": "checkpoint",
        "format": "tf1"
    }
}


def download_file(url, dest_path):
    """Download a file with progress display."""
    try:
        import requests
    except ImportError:
        print("ERROR: requests not installed. Run: pip install requests")
        sys.exit(1)

    filename = os.path.basename(dest_path)
    print("  Downloading {}...".format(filename))

    try:
        response = requests.get(url, stream=True)
        response.raise_for_status()

        total = int(response.headers.get("content-length", 0))
        downloaded = 0

        with open(dest_path, "wb") as f:
            for chunk in response.iter_content(chunk_size=65536):
                if chunk:
                    f.write(chunk)
                    downloaded += len(chunk)
                    if total > 0:
                        pct = int(downloaded * 100 / total)
                        mb = downloaded / (1024 * 1024)
                        print("\r    {:.1f} MB  {}%".format(mb, pct),
                              end="", flush=True)
        print()  # newline after progress
        print("    -> {}".format(dest_path))

    except Exception as e:
        print("ERROR downloading {}: {}".format(url, e))
        sys.exit(1)


def download_and_export(model_name, output_base_dir=None):
    if model_name not in MODELS:
        print("ERROR: Unknown model '{}'".format(model_name))
        print("Available: {}".format(", ".join(MODELS.keys())))
        sys.exit(1)

    model_info = MODELS[model_name]

    # Default output base dir
    if output_base_dir is None:
        home = os.path.expanduser("~")
        output_base_dir = os.path.join(home, "Documents", "MOZLib-models")

    output_base_dir = os.path.abspath(output_base_dir)
    ckpt_dir = os.path.join(output_base_dir, model_name + "_ckpt")
    weights_dir = os.path.join(output_base_dir, model_name + "_weights")

    os.makedirs(ckpt_dir, exist_ok=True)
    os.makedirs(weights_dir, exist_ok=True)

    print("=" * 60)
    print("MOZ'Transformer model download")
    print("Model:  {}".format(model_name))
    print("Desc:   {}".format(model_info["description"]))
    print("=" * 60)

    # Download checkpoint files
    all_present = True
    for file_info in model_info["files"]:
        dest = os.path.join(ckpt_dir, file_info["filename"])
        if os.path.exists(dest):
            print("  Already downloaded: {}".format(file_info["filename"]))
        else:
            all_present = False
            download_file(file_info["url"], dest)

    if all_present:
        print("All checkpoint files already present, skipping download.")

    # Check if weights already exported
    manifest_path = os.path.join(weights_dir, "manifest.json")
    if os.path.exists(manifest_path):
        print("\nWeights already exported at: {}".format(weights_dir))
        print("\nMOZ_WEIGHTS_DIR:{}".format(weights_dir))
        return weights_dir

    # Export weights
    print("\nExporting weights...")
    ckpt_path = os.path.join(ckpt_dir, model_info["ckpt_base"])

    # Import and run export_weights
    script_dir = os.path.dirname(os.path.abspath(__file__))
    sys.path.insert(0, script_dir)

    try:
        import export_weights as ew
        ew.export_weights(ckpt_path, weights_dir)
    except ImportError:
        print("ERROR: export_weights.py not found in {}".format(script_dir))
        print("Make sure export_weights.py is in the same directory as this script.")
        sys.exit(1)

    print("\nModel ready.")
    print("Weights directory: {}".format(weights_dir))

    # Print machine-readable output for Max to parse
    # Max shell object reads stdout — last line with this prefix gives the path
    print("\nMOZ_WEIGHTS_DIR:{}".format(weights_dir))

    return weights_dir


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(__doc__)
        print("Available models:")
        for name, info in MODELS.items():
            print("  {:20s} {}".format(name, info["description"]))
        sys.exit(1)

    model_name = sys.argv[1]
    output_base_dir = sys.argv[2] if len(sys.argv) > 2 else None
    download_and_export(model_name, output_base_dir)

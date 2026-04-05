/**
 * download-model.js — MOZ'Transformer model downloader for Node4Max
 *
 * Télécharge les checkpoints Magenta directement depuis Max.
 *
 * Usage depuis Max:
 *   [node.script download-model.js]
 *   -> envoyer "download music_transformer" ou "download coconet"
 *   -> envoyer "download music_transformer /custom/output/path"
 *
 * Outlets:
 *   0: messages de progression et statut (bang quand terminé)
 *   1: path du checkpoint (à passer à load-model-from-ckpt en Lisp)
 *   2: erreurs
 *
 * Inlet:
 *   "download <model_name> [output_dir]"
 *   "list"  -> liste les modèles disponibles
 */

const Max = require('max-api');
const https = require('https');
const fs = require('fs');
const path = require('path');
const os = require('os');

// -------------------------------------------------------------------------
// Modèles disponibles
// -------------------------------------------------------------------------

const MODELS = {
  music_transformer: {
    description: 'Google Magenta Music Transformer (piano classique, ~85MB)',
    files: [
      'https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.data-00000-of-00001',
      'https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.index',
      'https://storage.googleapis.com/magentadata/models/music_transformer/checkpoints/unconditional_model_16.ckpt.meta'
    ],
    ckpt_base: 'unconditional_model_16.ckpt'
  },
  coconet: {
    description: 'Google Magenta CocoNet (chorals de Bach, ~120MB)',
    files: [
      'https://storage.googleapis.com/magentadata/models/coconet/checkpoint',
      'https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.data-00000-of-00001',
      'https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.index',
      'https://storage.googleapis.com/magentadata/models/coconet/model.ckpt-0.meta'
    ],
    ckpt_base: 'model.ckpt-0'
  }
};

// -------------------------------------------------------------------------
// Téléchargement d'un fichier avec progression
// -------------------------------------------------------------------------

function downloadFile(url, destPath) {
  return new Promise((resolve, reject) => {
    const filename = path.basename(url);

    // Déjà téléchargé ?
    if (fs.existsSync(destPath)) {
      Max.post(`  déjà présent: ${filename}`);
      resolve();
      return;
    }

    Max.post(`  téléchargement: ${filename}`);

    const tmpPath = destPath + '.tmp';
    const file = fs.createWriteStream(tmpPath);

    const request = https.get(url, (response) => {
      // Gérer les redirections
      if (response.statusCode === 301 || response.statusCode === 302) {
        file.close();
        fs.unlinkSync(tmpPath);
        downloadFile(response.headers.location, destPath)
          .then(resolve)
          .catch(reject);
        return;
      }

      if (response.statusCode !== 200) {
        file.close();
        fs.unlinkSync(tmpPath);
        reject(new Error(`HTTP ${response.statusCode} pour ${url}`));
        return;
      }

      const totalBytes = parseInt(response.headers['content-length'] || '0', 10);
      let downloadedBytes = 0;
      let lastPct = -1;

      response.on('data', (chunk) => {
        downloadedBytes += chunk.length;
        if (totalBytes > 0) {
          const pct = Math.floor(downloadedBytes * 100 / totalBytes);
          // Envoyer progression toutes les 10%
          if (pct !== lastPct && pct % 10 === 0) {
            lastPct = pct;
            const mb = (downloadedBytes / (1024 * 1024)).toFixed(1);
            Max.outlet(0, `progress ${filename} ${pct}% ${mb}MB`);
          }
        }
      });

      response.pipe(file);

      file.on('finish', () => {
        file.close(() => {
          fs.renameSync(tmpPath, destPath);
          Max.post(`  -> ${destPath}`);
          resolve();
        });
      });
    });

    request.on('error', (err) => {
      file.close();
      if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
      reject(err);
    });

    file.on('error', (err) => {
      file.close();
      if (fs.existsSync(tmpPath)) fs.unlinkSync(tmpPath);
      reject(err);
    });
  });
}

// -------------------------------------------------------------------------
// Téléchargement d'un modèle complet
// -------------------------------------------------------------------------

async function downloadModel(modelName, outputDir) {
  const info = MODELS[modelName];
  if (!info) {
    const available = Object.keys(MODELS).join(', ');
    Max.outlet(2, `modèle inconnu: ${modelName} (disponibles: ${available})`);
    return;
  }

  // Répertoire de sortie par défaut
  if (!outputDir) {
    outputDir = path.join(os.homedir(), 'ml', 'MOZLib-models', modelName);
  }

  // Créer le répertoire si nécessaire — sans jamais effacer ce qui existe
  const mlDir       = path.join(os.homedir(), 'ml');
  const modelsDir   = path.join(mlDir, 'MOZLib-models');

  for (const dir of [mlDir, modelsDir, outputDir]) {
    if (!fs.existsSync(dir)) {
      fs.mkdirSync(dir);
      Max.post(`  créé: ${dir}`);
    } else {
      Max.post(`  existe déjà: ${dir}`);
    }
  }

  Max.outlet(0, `début du téléchargement: ${modelName}`);
  Max.post(`=== MOZ'Transformer download ===`);
  Max.post(`Modèle: ${modelName}`);
  Max.post(`Desc:   ${info.description}`);
  Max.post(`Dest:   ${outputDir}`);

  try {
    // Télécharger chaque fichier séquentiellement
    for (let i = 0; i < info.files.length; i++) {
      const url = info.files[i];
      const filename = path.basename(url);
      const destPath = path.join(outputDir, filename);

      Max.outlet(0, `fichier ${i + 1}/${info.files.length}: ${filename}`);
      await downloadFile(url, destPath);
    }

    const ckptPath = path.join(outputDir, info.ckpt_base);

    Max.post(`\nTéléchargement terminé.`);
    Max.post(`Charger avec:`);
    Max.post(`  (moz-transformer:load-model-from-ckpt "${ckptPath}")`);

    // Outlet 0: signal de fin
    Max.outlet(0, 'done');
    // Outlet 1: le path du checkpoint pour Max/Lisp
    Max.outlet(1, ckptPath);

  } catch (err) {
    Max.post(`ERREUR: ${err.message}`);
    Max.outlet(2, `erreur: ${err.message}`);
  }
}

// -------------------------------------------------------------------------
// Handlers Max
// -------------------------------------------------------------------------

Max.addHandler('download', (...args) => {
  const modelName = args[0];
  const outputDir = args[1] || null;

  if (!modelName) {
    Max.outlet(2, 'usage: download <model_name> [output_dir]');
    return;
  }

  downloadModel(modelName, outputDir);
});

Max.addHandler('list', () => {
  Max.post('=== Modèles disponibles ===');
  for (const [name, info] of Object.entries(MODELS)) {
    Max.post(`  ${name}: ${info.description}`);
    Max.outlet(0, `model ${name}`);
  }
});

// -------------------------------------------------------------------------
// Démarrage
// -------------------------------------------------------------------------

Max.post('MOZ\'Transformer download script prêt.');
Max.post('Envoyer "download music_transformer" ou "download coconet"');
Max.outlet(0, 'ready');

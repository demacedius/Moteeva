import express from 'express';
import { fileURLToPath } from 'url';
import { dirname, join } from 'path';
import { readdirSync } from 'fs';

const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

const app = express();
const port = process.env.PORT || 3000;

const clientPath = join(__dirname, '.svelte-kit/output/client');
const entryPath = join(clientPath, '_app/immutable/entry');
const assetsPath = join(clientPath, '_app/immutable/assets');

// Find entry files dynamically
const entryFiles = readdirSync(entryPath);
const startFile = entryFiles.find(f => f.startsWith('start.'));
const appFile = entryFiles.find(f => f.startsWith('app.'));

// Find CSS files
let cssFiles = [];
try {
  cssFiles = readdirSync(assetsPath).filter(f => f.endsWith('.css'));
} catch (err) {
  console.log('No CSS files found');
}

// Serve static files
app.use(express.static(clientPath));

// SPA fallback - generate HTML with correct entry files
app.get('*', (req, res) => {
  const cssLinks = cssFiles.map(css => `<link rel="stylesheet" href="/_app/immutable/assets/${css}">`).join('\n  ');

  res.send(`
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Moteeva</title>
  ${cssLinks}
</head>
<body data-sveltekit-preload-data="hover">
  <div style="display: contents"></div>
  ${startFile ? `<script type="module" src="/_app/immutable/entry/${startFile}"></script>` : ''}
  ${appFile ? `<script type="module" src="/_app/immutable/entry/${appFile}"></script>` : ''}
</body>
</html>
  `);
});

app.listen(port, () => {
  console.log(`Server running on port ${port}`);
  console.log(`Entry files: start=${startFile}, app=${appFile}`);
  console.log(`CSS files: ${cssFiles.join(', ')}`);
});

#!/bin/bash

# Script de déploiement automatique pour Moteeva
# Usage: ./deploy.sh

set -e  # Arrêter en cas d'erreur

echo "🚀 Démarrage du déploiement de Moteeva..."

# 1. Build local
echo "📦 Build de l'application..."
npm run build

# 2. Création de l'archive
echo "🗜️  Création de l'archive..."
rm -f moteeva-sources.tar.gz
tar --exclude='node_modules' --exclude='.svelte-kit' --exclude='.DS_Store' -czf moteeva-sources.tar.gz . 2>/dev/null || true

# 3. Transfert vers le serveur
echo "📤 Transfert vers le serveur..."
scp -i ~/.ssh/github_actions_moteeva moteeva-sources.tar.gz dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com:~/

# 4. Déploiement sur le serveur
echo "🔧 Déploiement sur le serveur..."
ssh -i ~/.ssh/github_actions_moteeva dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com << 'ENDSSH'
cd /srv/customer/apps/moteeva
tar -xzf ~/moteeva-sources.tar.gz
npm install
npx svelte-kit sync
npm run build
pm2 restart moteeva || pm2 start build/index.js --name moteeva
pm2 save
echo "✅ Build terminé sur le serveur"
ENDSSH

echo "✅ Déploiement terminé avec succès !"
echo "🌐 Le site est maintenant en ligne sur https://moteeva.fr"
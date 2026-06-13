#!/bin/bash

# Script de déploiement automatique pour Moteeva
# Usage: ./deploy.sh

set -e  # Arrêter en cas d'erreur

echo "🚀 Démarrage du déploiement de Moteeva..."

# 1. Build local
echo "📦 Build de l'application..."
npm run build

# 2. Création de l'archive (build déjà compilé localement)
echo "🗜️  Création de l'archive..."
rm -f moteeva-deploy.tar.gz
tar --exclude='node_modules' --exclude='.svelte-kit' --exclude='.DS_Store' --exclude='*.tar.gz' -czf moteeva-deploy.tar.gz build package.json package-lock.json 2>/dev/null || true

# 3. Transfert vers le serveur
echo "📤 Transfert vers le serveur..."
scp -i ~/.ssh/github_actions_moteeva moteeva-deploy.tar.gz dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com:~/

# 4. Déploiement sur le serveur
echo "🔧 Déploiement sur le serveur..."
ssh -i ~/.ssh/github_actions_moteeva dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com << 'ENDSSH'
cd /srv/customer/apps/moteeva
tar -xzf ~/moteeva-deploy.tar.gz
npm ci --production
rm ~/moteeva-deploy.tar.gz
echo "✅ Déploiement terminé sur le serveur"
ENDSSH

echo "✅ Déploiement terminé avec succès !"
echo "🌐 Le site est maintenant en ligne sur https://moteeva.fr"
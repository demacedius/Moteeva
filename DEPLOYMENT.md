# Configuration du déploiement automatique

## GitHub Actions

Le déploiement automatique vers Infomaniak se fait via GitHub Actions. À chaque push sur la branche `main`, le site est automatiquement déployé.

## Configuration des secrets GitHub

Pour que le déploiement fonctionne, il faut configurer le secret suivant dans GitHub :

1. Aller sur https://github.com/demacedius/Moteeva/settings/secrets/actions
2. Cliquer sur "New repository secret"
3. Ajouter le secret suivant :

### SSH_PRIVATE_KEY

La clé privée SSH pour se connecter au serveur Infomaniak.

**Comment obtenir la clé :**

```bash
# Sur votre machine locale, générer une paire de clés SSH si vous n'en avez pas
ssh-keygen -t ed25519 -C "github-actions-moteeva" -f ~/.ssh/moteeva_deploy

# Copier la clé publique sur le serveur Infomaniak
ssh-copy-id -i ~/.ssh/moteeva_deploy.pub dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com

# Afficher la clé privée pour la copier dans GitHub
cat ~/.ssh/moteeva_deploy
```

Copier tout le contenu de la clé privée (y compris les lignes `-----BEGIN ... PRIVATE KEY-----` et `-----END ... PRIVATE KEY-----`) et le coller dans le secret `SSH_PRIVATE_KEY` sur GitHub.

## Mise à jour des paramètres Infomaniak

**IMPORTANT :** Il faut mettre à jour les paramètres Node.js dans le panel Infomaniak :

**Ancienne configuration (ne fonctionne plus) :**
- Commande d'exécution : `node /srv/customer/apps/moteeva/build/index.js`

**Nouvelle configuration (à utiliser) :**
- Commande d'exécution : `node /srv/customer/apps/moteeva/.svelte-kit/output/server/index.js`
- Commande de construction : `cd /srv/customer/apps/moteeva && npm install && npx svelte-kit sync && npm run build`
- Port : `3000`

## Correction du problème PM2 sur le serveur

Si vous voyez l'erreur `Cannot find module '/srv/customer/apps/moteeva/build/index.js'`, c'est parce que PM2 utilise l'ancien chemin.

**Pour corriger :**

```bash
# Se connecter au serveur
ssh dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com

# Supprimer l'ancienne configuration PM2
pm2 delete moteeva

# Démarrer avec le bon chemin
pm2 start /srv/customer/apps/moteeva/.svelte-kit/output/server/index.js --name moteeva

# Sauvegarder la configuration
pm2 save
```

## Déploiement manuel

Si besoin de déployer manuellement sans passer par GitHub Actions :

```bash
# Localement
npm run build
tar --exclude='node_modules' --exclude='.git' --exclude='.DS_Store' -czf moteeva-deploy.tar.gz .
scp moteeva-deploy.tar.gz dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com:~/

# Sur le serveur
ssh dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com
cd /srv/customer/apps/moteeva
rm -rf * .[^.]* 2>/dev/null || true
tar -xzf ~/moteeva-deploy.tar.gz
rm ~/moteeva-deploy.tar.gz
npm ci --production
pm2 restart moteeva
```

## Vérifier le statut

```bash
# Se connecter au serveur
ssh dS7BhMKpcsV_moteeva@57-105796.ssh.hosting-ik.com

# Vérifier le statut de PM2
pm2 status

# Voir les logs
pm2 logs moteeva
```

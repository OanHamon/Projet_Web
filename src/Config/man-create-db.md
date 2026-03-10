# Guide pour l'installation et la configuration de MySQL avec PHP

## 1. Installer MySQL Server

Installez le serveur MySQL afin de pouvoir héberger vos bases de données :

```bash
sudo apt update
sudo apt install mysql-server
```

## 2. Installer PHP et les extensions nécessaires

Pour que PHP puisse communiquer avec MySQL, installez PHP, l'extension `php-mysql` et le module Apache pour PHP :

```bash
sudo apt install php php-mysql libapache2-mod-php
```

Redémarrez Apache afin de prendre en compte les nouvelles extensions :

```bash
sudo systemctl restart apache2
```

## 3. Créer une nouvelle base de données et un utilisateur MySQL

Lancez le client MySQL en mode superutilisateur :

```bash
sudo mysql
```

Une fois dans l'invite MySQL (`mysql>`), exécutez les commandes suivantes en adaptant le nom de la base, le nom d'utilisateur et le mot de passe en fonction de vos besoins :

```sql
-- Créer une base de données nommée dbName
CREATE DATABASE dbName;

-- Créer un utilisateur appelé 'user' avec le mot de passe 'motdepasse'
CREATE USER 'user'@'localhost' IDENTIFIED BY 'motdepasse';

-- Accorder tous les droits sur la base 'dbName' au nouvel utilisateur
GRANT ALL PRIVILEGES ON dbName.* TO 'user'@'localhost';

-- Rafraîchir les privilèges pour que les changements prennent effet
FLUSH PRIVILEGES;
```

Enfin, quittez le client MySQL :

```sql
EXIT;
```

> **Remarque** : Remplacez `dbName`, `user` et `motdepasse` par les valeurs adaptées à votre projet. Conservez vos identifiants en lieu sûr.
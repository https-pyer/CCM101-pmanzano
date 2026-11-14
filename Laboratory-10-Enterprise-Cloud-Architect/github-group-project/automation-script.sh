#!/bin/bash
TARGET_DIR="/home/vboxuser/docker-stuff"
BACKUP_DIR="$TARGET_DIR/backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

cd "$TARGET_DIR"
mkdir -p "$BACKUP_DIR"

echo "ops task starting $(date)"

echo "database (postgresql) is being backed up..."
docker compose exec -T db pg_dumpall -U cloudnova-admin > "$BACKUP_DIR/db_backup_$TIMESTAMP.sql"

find "$BACKUP_DIR" -type f -name "*.sql" -mtime +30 -delete
echo "backup complete, can be found in $BACKUP_DIR"

echo "ssl certs renewing..."
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout ./certs/server.key \
  -out ./certs/server.crt \
  -subj "/CN=cloudnova.server" \
  -addext "subjectAltName = DNS:vault.cloudnova.server, DNS:gitea.cloudnova.server, DNS:pihole.cloudnova.server"

echo "proxy reloading"
docker compose exec -T nginx nginx -s reload

echo "ops complete"
# RedisDB

**Codespace / Devcontainer**

Dieses Repository enthält eine Devcontainer-Definition, die einen Workspace-Container mit installiertem `redis-cli` und einen Redis-Service per `docker-compose` startet.

Schnellstart:

- Öffne den Codespace (oder starte den Devcontainer lokal).
- Der Redis-Server startet automatisch und ist unter Port `6379` verfügbar.
- Verbinde dich im Workspace mit dem Redis-CLI:

direkter Start der CLI von Redis

```bash
redis-cli
```


## Fehlerbehebung

Falls `redis-cli` eine Fehlermeldung "Could not connect to Redis at 127.0.0.1:6379: Connection refused" anzeigt:

1. **Überprüfe, ob der Port-Forwarding-Tunnel läuft:**
   ```bash
   pgrep -f "socat TCP-LISTEN:6379"
   ```

2. **Starte den Tunnel manuell neu:**
   ```bash
   bash /workspaces/RedisDB/.devcontainer/start-redis-tunnel.sh
   ```

3. **Alternativ kannst du direkt zum Redis-Service verbinden:**
   ```bash
   redis-cli -h redis ping
   ```

Der Tunnel sollte automatisch beim Start des Devcontainers eingerichtet werden. Falls nicht, wird er beim ersten Öffnen eines Terminals gestartet.

Dateien:

- [/.devcontainer/devcontainer.json](.devcontainer/devcontainer.json)
- [/.devcontainer/docker-compose.yml](.devcontainer/docker-compose.yml)
- [/.devcontainer/Dockerfile](.devcontainer/Dockerfile)

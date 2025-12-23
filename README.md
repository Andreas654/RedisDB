# RedisDB

**Codespace / Devcontainer**

Dieses Repository enthält eine Devcontainer-Definition, die einen Workspace-Container mit installiertem `redis-cli` und einen Redis-Service per `docker-compose` startet.

Schnellstart:

- Öffne den Codespace (oder starte den Devcontainer lokal).
- Der Redis-Server startet automatisch und ist unter Port `6379` verfügbar.
- Verbinde dich im Workspace mit dem Redis-CLI:

```bash
redis-cli ping
```

Oder alternativ direkt zum Redis-Service:

```bash
redis-cli -h redis ping
```

Dateien:

- [/.devcontainer/devcontainer.json](.devcontainer/devcontainer.json)
- [/.devcontainer/docker-compose.yml](.devcontainer/docker-compose.yml)
- [/.devcontainer/Dockerfile](.devcontainer/Dockerfile)

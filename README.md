# RedisDB

**Codespace / Devcontainer**

Dieses Repository enthält eine Devcontainer-Definition, die einen Workspace-Container mit installiertem `redis-cli` und einen Redis-Service per `docker-compose` startet.

Schnellstart:

- Öffne den Codespace (oder starte den Devcontainer lokal).
- Der Redis-Server ist unter Port `6379` verfügbar und weitergeleitet.
- Verbinde dich im Workspace mit dem Redis-CLI:

```
redis-cli -h redis ping
```

Dateien:

- [/.devcontainer/devcontainer.json](.devcontainer/devcontainer.json)
- [/.devcontainer/docker-compose.yml](.devcontainer/docker-compose.yml)
- [/.devcontainer/Dockerfile](.devcontainer/Dockerfile)

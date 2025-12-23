FROM mcr.microsoft.com/devcontainers/base:0-bullseye

# Installiere nur Redis CLI-Tools, kein Server (der läuft separat in Docker Compose)
RUN apt-get update && \
    apt-get install -y wget gnupg && \
    wget -qO - https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb bullseye main" | tee /etc/apt/sources.list.d/redis.list && \
    apt-get update && \
    apt-get install -y redis-tools && \
    rm -rf /var/lib/apt/lists/*

FROM mcr.microsoft.com/devcontainers/base:bookworm

# Installiere nur Redis CLI-Tools, kein Server (der läuft separat in Docker Compose)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
        gnupg \
        ca-certificates && \
    wget -qO - https://packages.redis.io/gpg | gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg && \
    echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb bookworm main" | tee /etc/apt/sources.list.d/redis.list && \
    apt-get update && \
    apt-get install -y --no-install-recommends redis-tools && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

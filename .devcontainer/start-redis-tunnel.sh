#!/bin/bash

# Wait for Redis to be ready
echo "Waiting for Redis to be ready..."
RETRIES=30
while [ $RETRIES -gt 0 ]; do
    if redis-cli -h redis ping > /dev/null 2>&1; then
        echo "Redis is ready!"
        break
    fi
    echo "Waiting for Redis... ($RETRIES attempts remaining)"
    RETRIES=$((RETRIES-1))
    sleep 2
done

if [ $RETRIES -eq 0 ]; then
    echo "WARNING: Redis not reachable after 60 seconds!"
    exit 1
fi

# Check if socat is already running
if pgrep -f "socat TCP-LISTEN:6379" > /dev/null; then
    echo "Port forwarding is already running"
    exit 0
fi

# Start port forwarding from localhost:6379 to redis:6379
echo "Starting port forwarding from localhost:6379 to redis:6379..."
socat TCP-LISTEN:6379,fork,reuseaddr TCP:redis:6379 > /tmp/socat.log 2>&1 &

# Give socat a moment to start
sleep 1

# Verify socat is running
if pgrep -f "socat TCP-LISTEN:6379" > /dev/null; then
    echo "Port forwarding started successfully!"
    echo "You can now use 'redis-cli' to connect to Redis at 127.0.0.1:6379"
else
    echo "ERROR: Failed to start port forwarding!"
    exit 1
fi

#!/bin/sh
# docker-entrypoint.sh
#
# This script runs as the Docker entrypoint and handles:
# 1. Setting proper permissions on volume mounts
# 2. Dropping privileges to the non-root user
# 3. Starting the application

# Fix ownership of mounted volumes (running as root)
for dir in /app/pb_data /app/pb_public /app/pb_hooks /app/pb_migrations; do
  if [ -d "$dir" ]; then
    chown -R appuser:appgroup "$dir"
  fi
done

# Run the application as the non-root appuser
exec su-exec appuser:appgroup "$@"

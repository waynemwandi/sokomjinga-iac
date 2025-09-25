#!/usr/bin/env bash
set -euo pipefail
cd ~/apps/sokomjinga/sokomjinga-frontend && git pull
cd ~/apps/sokomjinga/sokomjinga-api      && git pull
cd ~/apps/sokomjinga/sokomjinga-iac      && git pull
cd ~/apps/sokomjinga/sokomjinga-iac
docker compose down --remove-orphans
docker compose --profile caddy up -d --build
docker compose ps

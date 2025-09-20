# SokoMjinga IAC

Docker Compose stack for running SokoMjinga locally or on a server.

## **Services**

- proxy: Nginx on :80
- frontend: SvelteKit (Node adapter) behind Nginx
- api: FastAPI behind Nginx
- db: MySQL 8

## **Routes**

- `/` → frontend
- `/api/` → api

---

## Prereqs

- Docker Desktop (or Docker + Compose v2)
- Copy `.env.example` to `.env` and fill values

---

## Quick start

```bash
# repos should live side-by-side:
# sokomjinga-frontend/, sokomjinga-api/, sokomjinga-iac/ (this repo)

cp .env.example .env
docker compose up -d --build

# open app
http://localhost

# health check
curl http://localhost/api/health
```

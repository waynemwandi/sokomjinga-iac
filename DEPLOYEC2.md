# Deploy to EC2

sudo apt update && sudo apt install -y docker.io docker-compose-plugin

sudo usermod -aG docker $USER && newgrp docker

## clone repos side by side (as your screenshot)

## .../projects/sokomjinga/

git clone <api_repo_url> sokomjinga-api
git clone <frontend_repo_url> sokomjinga-frontend
git clone <iac_repo_url> sokomjinga-iac

## set env

cd sokomjinga-iac

cp .env .env.local && nano .env # set real passwords

## build + run

docker compose build

docker compose up -d

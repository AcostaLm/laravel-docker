cd /home/ubuntu/docker/laravel/src
git fetch && git reset --hard && git pull
cd ..
docker compose run --rm composer install
docker compose run --rm npm install
docker compose run --rm npm run build
docker compose run --rm artisan optimize

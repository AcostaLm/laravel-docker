FROM dunglas/frankenphp

RUN install-php-extensions \
    pcntl redis
    # Add other PHP extensions here...

COPY . /app

ENTRYPOINT ["php", "artisan", "octane:frankenphp"]
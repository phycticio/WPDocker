FROM wordpress:latest

RUN apt-get update && apt-get install -y \
    libzip-dev \
    libpng-dev \
    zip \
    && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install zip \
    && pecl install redis \
    && docker-php-ext-enable redis
FROM wordpress:fpm-alpine
RUN set -ex;     \
    apk add --no-cache --virtual .build-deps         \
    $PHPIZE_DEPS         \
    liblzf-dev         \
    zlib-dev     ;         \
    pecl install redis;         \
    docker-php-ext-enable redis;         \
    apk del .build-deps

FROM php:8.2-fpm

WORKDIR /var/www/html

COPY web_site .

RUN docker-php-ext-install pdo pdo_mysql
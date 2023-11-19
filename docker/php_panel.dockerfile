FROM php:8.2-fpm

WORKDIR /var/www/html

COPY panel .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 777 /var/www/html/storage
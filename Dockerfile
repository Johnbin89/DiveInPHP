FROM php:7.2-apache
COPY . /var/www/html/
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

EXPOSE 80
CMD service apache2 start

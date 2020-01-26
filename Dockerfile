FROM php:7.2-apache
COPY . /var/www/html/
COPY --from=composer:latest /uRUsr/bin/composer /usr/local/bin/composer
RUN cd /var/www/html/ &&\
    composer install


EXPOSE 80
CMD apachectl -D FOREGROUND

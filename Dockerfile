FROM php:7.2-apache
COPY . /var/www/html/
#COPY --from=composer:latest /uRUsr/bin/composer /usr/local/bin/composer
RUN cd /var/www/html/ &&\
    curl -s http://getcomposer.org/installer | php &&\
    php composer.phar install


EXPOSE 80
CMD apachectl -D FOREGROUND

FROM php:7.2-apache
COPY . /var/www/html/
#COPY --from=composer:latest /uRUsr/bin/composer /usr/local/bin/composer


RUN apt-get update && apt-get install -y git &&\
    apt-get install php7-mysql &&\
    cd ~ &&\
    curl -sS https://getcomposer.org/installer -o composer-setup.php &&\
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer &&\
    cd /var/www/html/ &&\
    php /usr/local/bin/composer install


EXPOSE 80
CMD apachectl -D FOREGROUND

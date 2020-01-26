FROM php:7.2-apache
COPY . /var/www/html/
RUN cd /var/www/html/ &&\
    composer install

EXPOSE 80
CMD service apache2 start
FROM php:7.2-apache
COPY . /var/www/html/
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer &&\
    composer install

EXPOSE 80
CMD service apache2 start

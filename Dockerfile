FROM php:7.2-apache
COPY . /var/www/html/
#COPY --from=composer:latest /uRUsr/bin/composer /usr/local/bin/composer
   
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
# Tools
    apt-utils \
    wget \
    git \
    nano \
    iputils-ping \
    mysql-client \
    locales \
# Configure PHP
    libxml2-dev libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev && \
    docker-php-ext-install -j$(nproc) mysqli && \
    #echo 'always_populate_raw_post_data = -1\nmax_execution_time = 240\nmemory_limit = 512M\nmax_input_vars = 1500\nupload_max_filesize = 200M\npost_max_size = 300M' > /usr/local/etc/php/conf.d/typo3.ini && \
# Configure bash
    #echo 'export LS_OPTIONS="--color=auto"\nalias ls="ls $LS_OPTIONS"\nalias ll="ls $LS_OPTIONS -aGFlh"\nalias l="ls $LS_OPTIONS -FG"' > ~/.bashrc && \
# Configure Apache & clean
    a2enmod rewrite && \
    apt-get clean && \
    apt-get -y purge \
        libxml2-dev libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev && \
    rm -rf /var/lib/apt/lists/* /usr/src/*
 
RUN cd ~ &&\
    curl -sS https://getcomposer.org/installer -o composer-setup.php &&\
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer &&\
    cd /var/www/html/ &&\
    php /usr/local/bin/composer install &&\
    touch /usr/local/etc/php/conf.d/mysqli.ini &&\
    echo "extension=mysqli" >> /usr/local/etc/php/conf.d/mysqli.ini


EXPOSE 80
CMD apachectl -D FOREGROUND

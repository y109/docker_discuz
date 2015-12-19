FROM php:5.6-apache
# Install modules
RUN apt-get update && apt-get install -y \
        php5-mysql  \
    && docker-php-ext-install mysql


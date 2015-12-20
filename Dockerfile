FROM php:5.6-apache

MAINTAINER y109<y109@qq.com>

RUN apt-get update && apt-get install -y \
        php5-mysql  \
    && docker-php-ext-install mysql


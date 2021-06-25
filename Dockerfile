FROM php:7.2-apache

ARG COMPOSER
ENV COMPOSER $COMPOSER

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apt-get update && apt-get install -y git

COPY . /var/www/html

RUN composer install
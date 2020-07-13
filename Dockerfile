FROM node:lts-alpine as build-stage

FROM php:7.3

RUN apt-get update -y && apt-get install -y openssl zip unzip git npm
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN docker-php-ext-install pdo pdo_mysql mbstring

WORKDIR /app

COPY . /app

COPY package*.json ./

RUN composer install

RUN npm install

# RUN npm run build

CMD php artisan serve --host=0.0.0.0 --port=8080
EXPOSE 8080

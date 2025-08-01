FROM php:8.4-cli-alpine

WORKDIR /app

COPY . /app

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
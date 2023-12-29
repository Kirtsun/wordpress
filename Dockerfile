FROM php:8.2-fpm

WORKDIR /var/www/html/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY ./wordpress /var/www/html/

COPY config.wp/wp-config.php /var/www/html/

EXPOSE 9000

CMD ["php-fpm"]

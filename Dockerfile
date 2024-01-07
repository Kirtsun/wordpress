FROM php:8.2-fpm

WORKDIR /var/www/html/

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

COPY ./wordpress /var/www/html/

COPY all_config/config.wp/wp-config.php /var/www/html/

COPY all_config/config.wp/php.ini /usr/local/etc/php/conf.d/custom.ini

EXPOSE 9000

CMD ["php-fpm"]


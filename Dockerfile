FROM php:7.4-apache

COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/
RUN install-php-extensions pcntl mysqli
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

WORKDIR /var/www/html

ENV OWA_VERSION=1.6.9
ADD https://github.com/Open-Web-Analytics/Open-Web-Analytics/releases/download/${OWA_VERSION}/owa_${OWA_VERSION}_packaged.tar /owa.tar

RUN tar -xvf /owa.tar \
    && chown -R www-data:www-data /var/www/html/ \
    && chmod -R 0750 /var/www/html/

COPY --chown=www-data:www-data ./owa-config.php ./
RUN chmod 0700 ./owa-config.php

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD ["apache2-foreground"]
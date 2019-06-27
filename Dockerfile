FROM php:7.2.8

WORKDIR /var/www/html

RUN apt update --fix-missing && \
    apt install -y git && \
    apt install unzip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    chmod +x /usr/local/bin/composer

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/public", "/var/www/html/public/index.php"]
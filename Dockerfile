FROM php:7.3-apache-bullseye

CMD mkdir -p /mnt/images/

WORKDIR /var/www/html

COPY index.php index.php
COPY azure.jpg /var/www/html/images/azure.jpg

EXPOSE 80
CMD ["apache2-foreground"]

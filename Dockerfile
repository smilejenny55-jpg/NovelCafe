# 1. Use an official PHP with Apache (Web Server)
FROM php:8.1-apache

# 2. Install the MySQL extension (Required for your database)
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# 3. Copy your website files into the server's public folder
COPY . /var/www/html/

# 4. Tell Render to listen on Port 80
EXPOSE 80

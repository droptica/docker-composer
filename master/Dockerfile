# Composer Docker Container
FROM composer/composer:base
MAINTAINER Droptica <info@droptica.com>

ENV COMPOSER_VERSION master

# Install Composer
RUN php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --snapshot && rm -rf /tmp/composer-setup.php

# Display version information
RUN composer --version

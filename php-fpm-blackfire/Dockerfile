FROM php:fpm

# Minimal item; change UID to match Mac; leave group as is ..
RUN usermod -u 1000 www-data

# Can change group ID if you wanted too ...
# RUN groupmod -g 1000 www-data  

# Install any pre-reqs for php extensions

# Actually install php extensions ..

# Details from Blackfire doc —> https://blackfire.io/getting-started
# RUN curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/linux/amd64/5.6 
# RUN tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp \ && mv /tmp/blackfire-*.so `php -r "echo ini_get('extension_dir');"`/blackfire.so \ && echo "extension=blackfire.so\nblackfire.agent_socket=\${BLACKFIRE_PORT}" > $PHP_INI_DIR/conf.d/blackfire.ini

RUN curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/linux/amd64/56 \
    && tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp \
    && mv /tmp/blackfire-*.so `php -r "echo ini_get('extension_dir');"`/blackfire.so \
    && echo "extension=blackfire.so\nblackfire.agent_socket=\${BLACKFIRE_PORT}" > $PHP_INI_DIR/conf.d/blackfire.ini

# Don't know why it is not there??
VOLUME /var/www

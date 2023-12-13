General

    php -S localhost:3000 -t public


With XDebug (NO VALE)

    php -S localhost:3000 -t public -dxdebug.mode=debug -dxdebug.start_with_request=yes -dxdebug.remote_port=9003

    php -S localhost:3000 -t public -c /etc/php/8.1/apache2/php.ini -dxdebug.mode=debug -dxdebug.start_with_request=yes


Url
    ?XDEBUG_SESSION_START=1
yum install ImageMagick ImageMagick-devel ImageMagick-perl libsmbclient-devel php-gmp php-bcmath
pecl install imagick redis smbclient acpu
echo "extension=imagick.so" >> /etc/php.ini
echo "extension=redis.so" >> /etc/php.ini
echo "extension=smbclient.so" >> /etc/php.ini
echo "extension=apcu.so" >> /etc/php.ini

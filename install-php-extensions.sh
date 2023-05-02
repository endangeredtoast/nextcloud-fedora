yum install ImageMagick ImageMagick-devel ImageMagick-perl libsmbclient-devel
pecl install imagick redis smbclient
echo "extension=imagick.so" >> /etc/php.ini
echo "extension=redis.so" >> /etc/php.ini
echo "extension=smbclient.so" >> /etc/php.ini

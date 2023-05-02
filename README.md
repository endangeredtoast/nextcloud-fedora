# Install Nextcloud with Nginx and PHP-FPM on Fedora
You'll need to set up a Fedora Server instance first. This is beyond the scope of this article.

## SELinux
First you'll need to disable SELinux.
Edit `/etc/selinux/config` and revert to "permissive" behavior.
```
SELINUX=permissive
```
Then run this command:
```
sudo setenforce 0
```



## Install Required Software
Now you'll need to install the necessary components.
```
sudo dnf install nginx php-fpm php-mysqlnd mariadb-server php-pear php-devel redis phpmyadmin
```



## Disable Apache (if enabled)
```
sudo systemctl disable httpd.service
sudo systemctl stop httpd.service
```


## Enable Services
```
sudo systemctl enable nginx.service php-fpm.service mariadb.service redis.service
sudo systemctl start nginx.service php-fpm.service mariadb.service redis.service
```


## Open Firewall Ports
```
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --reload
```

## Set up Database with phpMyAdmin
Set root password.
```
sudo mysql_secure_installation
```
Login to phpMyAdmin at http://yourserverip/phpMyAdmin with the password you set earlier.
In the left sidebar, click on New. Enter a database name and choose utf8mb4_unicode_ci, then click Create.
On the top navigation bar, click on Privileges. Click on Add User Account.
Enter a username and password for the new account. Scroll down and click on Go. The database and user is now created.

## Install Nextcloud

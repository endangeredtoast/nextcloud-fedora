# Install Nextcloud with Nginx and PHP-FPM on Fedora
You'll need to set up a Fedora Server instance first. This is beyond the scope of this article.

## Prepare your virtual machine
Follow the guide here to prepare your Fedora Server VM for Nginx hosting.
https://github.com/endangeredtoast/howto/blob/main/prepare-fedora-38-server-for-webhosting-with-nginx.md

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

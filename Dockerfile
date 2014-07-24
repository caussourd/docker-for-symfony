FROM centos:centos6

# Install dependencies
RUN yum update -y
RUN yum install -y httpd php php-mysql php-gd php-intl php-pecl-apc php-xml php-mbstring git 

# Install app
#ADD dig-vit-vitality-plan-master /var/www/

# Configure Apache
# Done at the folder level. This command runs before mounting the volume
#RUN chown -R apache:apache /var/www
ADD apache.conf /etc/httpd/conf.d/

# Configure PHP
RUN sed -i '/date.timezone =.*/a date.timezone = Europe\/London' /etc/php.ini

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

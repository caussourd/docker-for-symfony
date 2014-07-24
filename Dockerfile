FROM centos:centos6

# Install dependencies
RUN yum update -y
RUN yum install -y httpd php php-mysql php-gd php-intl php-pecl-apc php-xml php-mbstring git 

# Install app
#ADD dig-vit-vitality-plan-master /var/www/

# Configure Apache
#RUN chown -R apache:apache /var/www
ADD apache.conf /etc/httpd/conf.d/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

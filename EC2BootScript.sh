#!/bin/bash
yum install -y httpd24 php56 mysql55-server php56-mysqlnd
service httpd start
chkconfig httpd on
groupadd www
usermod -a -G www ec2-user
chown -R root:www /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} +
find /var/www -type f -exec chmod 0664 {} +
echo "<title>Joseph Lyon</title><a>AMI ID: ami-88f3e9e9</a><a>#!/bin/bash
yum update -y#!/bin/bash
yum update -y
yum install -y git-all
cd /home/ec2-user
git init
git clone https://github.com/Clavat1216/CS462.git
cd CS462
chmod u+x EC2BootScript.sh
EC2BootScript.sh</a>" > /var/www/html/index.html
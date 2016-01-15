#!/bin/bash
cd /
yum install -y httpd24 php56 mysql55-server php56-mysqlnd
service httpd start
chkconfig httpd on
groupadd www
usermod -a -G www ec2-user
chown -R root:www /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} +
find /var/www -type f -exec chmod 0664 {} +
cat /var/www/html/index.html
echo "<a>Joseph Lyon</a><br>
<a>AMI ID: ami-88f3e9e9</a><br>
<a>User Data: #!/bin/bash<br>
yum update -y<br>
yum install -y git-all<br>
cd /home/ec2-user<br>
git init<br>
git clone https://github.com/Clavat1216/CS462.git<br>
cd CS462<br>
chmod u+x EC2BootScript.sh<br>
sh EC2BootScript.sh</a>" > /var/www/html/index.html


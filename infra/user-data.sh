#!/bin/bash
yum update -y
yum install -y nginx git
systemctl enable nginx
systemctl start nginx

# clone the repo
cd /home/ec2-user
git clone https://github.com/Arash97-Projects/Git.git

# copy HTML to nginx
cp /home/ec2-user/Git/app/index.html /usr/share/nginx/html/index.html

systemctl restart nginx
#! /bin/bash

apt update -y
apt-get install git -y
apt upgrade -y
apt install python3 -y
cd /home/ubuntu/
TOKEN="xxxxxxxxxxxx"
git clone https://$TOKEN@github.com/huseyinesin/my-aws-capstone-project.git
cd /home/ubuntu/my-aws-capstone-project/
apt install python3-pip -y
apt-get install python3.6-dev libmysqlclient-dev -y
pip3 install --upgrade setuptools
pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80



#!/bin/bash

apt-get update -y
apt-get install git -y
apt-get install python3 -y
apt install python3-pip -y
apt-get install python3.7-dev default-libmysqlclient-dev -y
cd /home/ubuntu/
TOKEN="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
git clone https://$TOKEN@github.com/huseyinesin/my-aws-capstone-project.git
cd /home/ubuntu/my-aws-capstone-project
pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80
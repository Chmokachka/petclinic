#!/bin/bash
apt update -y
apt install nginx -y
apt install maven -y
apt install default-jdk -y
apt install git -y
ufw allow 'Nginx HTTP'
git clone https://github.com/spring-projects/spring-petclinic.git
(cd /spring-petclinic && ./mvnw package)
(cd /spring-petclinic && java -jar target/*.jar) 
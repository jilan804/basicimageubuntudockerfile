FROM ubuntu:latest

RUN apt-get update
RUN apt-get install apache2 -y

#change working directory to root of apache webhost
WORKDIR var/www/html

#copy your files, if you want to copy all use COPY . .
COPY index.html index.html

#now start the server
CMD ["apachectl", "-D", "FOREGROUND"]

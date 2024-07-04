FROM centos
RUN sudo yum update -y
RUN sudo yum install httpd -y
COPY ./index.html /var/www/html/index.html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]

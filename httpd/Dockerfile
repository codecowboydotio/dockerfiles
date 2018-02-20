FROM docker.io/centos

MAINTAINER "@svk"

LABEL description="HTTPD Container"
ENV ports 80 443
RUN yum update all && yum install httpd -y 
#COPY index.html /var/www/html
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 80 443

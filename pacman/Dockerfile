FROM docker.io/library/ubuntu

MAINTAINER "@svk"

LABEL description="HTTPD Container"
ENV ports 80 443
RUN DEBIAN_FRONTEND="noninteractive" apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install apache2 git -y
RUN git clone  https://github.com/platzhersh/pacman-canvas /var/www/html/pacman
RUN mv /var/www/html/pacman/* /var/www/html
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 80 443

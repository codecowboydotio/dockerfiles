FROM registry.fedoraproject.org/fedora

MAINTAINER "@svk"

LABEL description="SWAPI json server Container"
RUN dnf -y install git npm nodejs procps-ng
RUN git clone  https://github.com/codecowboydotio/swapi-json-server
WORKDIR /swapi-json-server
RUN npm install
RUN useradd -ms /bin/bash nodeuser
RUN chown -R nodeuser /swapi-json-server
USER nodeuser
CMD ["/usr/bin/npm", "start"]
EXPOSE 3000


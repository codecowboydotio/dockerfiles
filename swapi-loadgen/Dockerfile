FROM registry.fedoraproject.org/fedora

MAINTAINER "@svk"

LABEL description="SWAPI json server loadgen Container"
RUN dnf -y install git curl tor 
COPY ./entrypoint.sh /entrypoint.sh
COPY torrc /etc/tor/
RUN chmod 755 /entrypoint.sh
RUN useradd -ms /bin/bash loadgen
USER loadgen
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 8080

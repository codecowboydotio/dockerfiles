FROM	docker.io/centos:centos7

MAINTAINER svk <svk@redhat.com>


#########################################
#
# Set up environment variables to be used during the build
#
#########################################
ENV HYPERLEDGER_HOME /home/hyperledger

#########################################
#
# Make home directories. 
# Add the current directory to the image so that the software can be unzipped.
#
#########################################
#RUN mkdir $HOME


#########################################
#
# Perform a yum update on the OS
# Install java 1.8
# Unzip the software to /opt/eap7
#
#########################################
RUN yum -y install git go docker
RUN git clone https://github.com/hyperledger/fabric $HYPERLEDGER_HOME


#########################################
#
# Expose the admin port and the default web port
# Create an admin user and password.
# Run the server as a standalone server.
#
#########################################
#EXPOSE 9990 8080

#RUN $EAP_BASE/$EAP7/bin/add-user.sh admin Password123# --silent
#CMD ["/opt/eap7/jboss-eap-7.0/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

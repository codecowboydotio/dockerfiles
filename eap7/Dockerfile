FROM	docker.io/centos:centos7

#########################################
#
# Set up environment variables to be used during the build
#
#########################################
ENV HOME /home/jboss
ENV EAP_BASE /opt/eap7
ENV EAP7ZIP jboss-eap-7.0.0.zip
ENV EAP7 jboss-eap-7.0
ENV TMP $HOME/tmp

#########################################
#
# Make home directories. 
# Add the current directory to the image so that the software can be unzipped.
#
#########################################
RUN mkdir $HOME
RUN mkdir $TMP
ADD . $TMP


#########################################
#
# Perform a yum update on the OS
# Install java 1.8
# Unzip the software to /opt/eap7
#
#########################################
RUN yum -y update ; yum clean all
RUN yum -y install unzip java-1.8.0-openjdk java-1.8.0-openjdk-devel; yum clean all
RUN unzip $TMP/$EAP7ZIP -d $EAP_BASE


#########################################
#
# Expose the admin port and the default web port
# Create an admin user and password.
# Run the server as a standalone server.
#
#########################################
EXPOSE 9990 8080

RUN $EAP_BASE/$EAP7/bin/add-user.sh admin Password123# --silent
CMD ["/opt/eap7/jboss-eap-7.0/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]

#
# Centos base
#

# Pull base image.
FROM centos:7
MAINTAINER Nicolas Fraison <nfraison@yahoo.fr>

# Update the system
RUN yum install -y wget tar net-tools

# Create defaults apps & data folder
RUN mkdir -p /apps /data

ONBUILD RUN yum update -y

# Define working directory.
WORKDIR /data

# Define default command.
CMD /bin/bash
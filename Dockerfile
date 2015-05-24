#
# Centos base
#

# Pull base image.
FROM centos:7
MAINTAINER Nicolas Fraison <nfraison@yahoo.fr>

ENV EPEL_VERSION 7-5

# Add tooling and Epel
RUN yum install -y wget tar net-tools
RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-${EPEL_VERSION}.noarch.rpm && \
    rpm -ivh epel-release-${EPEL_VERSION}.noarch.rpm && \
    rm -f epel-release-${EPEL_VERSION}.noarch.rpm

# Create defaults apps & data folder
RUN mkdir -p /apps /data

ONBUILD RUN yum update -y

# Define working directory.
WORKDIR /data

# Define default command.
CMD /bin/bash
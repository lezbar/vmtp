# docker file for creating a container that has vmtp installed and ready to use
FROM ubuntu:14.04
MAINTAINER openstack-systems-group <openstack-systems-group@cisco.com>

# Install VMTP script and dependencies
RUN apt-get update && apt-get install -y \
   lib32z1-dev \
   libffi-dev \
   libssl-dev \
   libxml2-dev \
   libxslt1-dev \
   libyaml-dev \
   openssh-client \
   python \
   python-dev \
   python-lxml \
   python-pip

COPY . /vmtp/

RUN pip install -r /vmtp/requirements.txt


FROM     ubuntu:12.04
MAINTAINER Aaron Feng "aaron@forty9ten.com"

RUN apt-get update && apt-get install -y openssh-server

# this solved python pipes import issue
RUN apt-get install -y software-properties-common

RUN mkdir /var/run/sshd
RUN echo 'root:changeme' |chpasswd


EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]

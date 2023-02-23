FROM centos:7

RUN yum update -y
RUN yum install openssh-server -y
RUN yum install sudo -y

RUN useradd -rm -d /home/centos -s /bin/bash -g root -u 1000 test

RUN usermod -aG wheel test

RUN echo 'test:test' | chpasswd

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]

##
#docker image build . -t centos-ssh
#docker container run -p 22:22 --name=web centos-ssh
###### check first 22 is not in use I fixed this by using 23 ie 23:22

##set root password
# sudo su
# passwd
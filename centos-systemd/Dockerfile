FROM centos/systemd

RUN yum update -y
RUN yum install openssh-server -y
RUN yum install sudo -y

#RUN useradd -rm -d /home/centos -s /bin/bash -g root -u 1000 test

#RUN usermod -aG wheel test

#RUN echo 'test:test' | chpasswd

RUN ssh-keygen -A

EXPOSE 22

CMD ["/usr/sbin/init"]

##
#docker image build . -t system-ssh
#docker container run --privileged -p 24:22 --name=system -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d system-ssh
###### check first 22 is not in use I fixed this by using 24 ie 24:22

##set root password
# sudo su
# passwd
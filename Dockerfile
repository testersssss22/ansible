FROM ubuntu:latest

RUN apt update && apt install openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test

RUN echo 'test:test' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]


##
#docker image build . -t ubuntu-ssh
#docker container run -p 22:22 --name=web ubuntu-ssh

##ssh as root
# edit:   sudo nano /etc/ssh/sshd_config
# PermitRootLogin without-password change to PermitRootLogin Yes
# then restart ssh server:  sudo service ssh restart

##set root password
# sudo su
# passwd
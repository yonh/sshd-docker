FROM ubuntu:16.04

ADD ./run.sh /run.sh

RUN bash /run.sh

CMD ["/usr/sbin/sshd", "-D"]

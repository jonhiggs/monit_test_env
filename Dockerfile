FROM debian:latest
RUN apt-get update && apt-get install -y procps vim wget
RUN wget https://launchpad.net/ubuntu/+archive/primary/+files/monit_5.3.2.orig.tar.gz -O /usr/local/src/monit_5.3.2.tar.gz
RUN apt-get update && apt-get install -y build-essential
WORKDIR /usr/local/src
RUN tar zxvf monit_5.3.2.tar.gz
WORKDIR /usr/local/src/monit-5.3.2
RUN ./configure --without-ssl
RUN make
RUN make install
WORKDIR /root
CMD monit -I

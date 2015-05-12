FROM ubuntu:14.04
MAINTAINER Infinity-G <developer@infinity-g.com>

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:bitcoin/bitcoin
RUN apt-get update
RUN apt-get install -y bitcoind

RUN cd /; mkdir .bitcoin
ADD ./bitcoin.conf .bitcoin/bitcoin.conf
RUN cd .bitcoin; chmod 600 bitcoin.conf

EXPOSE 18332
CMD ["/bin/bash"]

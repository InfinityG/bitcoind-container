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

# Usage
# =====
# Create image: sudo docker build -t infinityg/bitcoind:v1 .
# Run container (persistent; interactive; port mapping 18332): sudo docker run -p 18332:18332 -it infinityg/bitcoind:v1
# Once started, run the bitcoin daemon: bitcoind -daemon

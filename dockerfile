FROM ubuntu:latest

RUN apt-get update && apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev zlib1g-dev git

RUN git clone https://github.com/fireworm71/veriumMiner
WORKDIR /veriumMiner
RUN ./build.sh

CMD ["./cpuminer", "-o", "stratum+tcp://de2.xbtx.collective-b.net:3333", "-u", "cecepabdul.docker", "-p", "x"]

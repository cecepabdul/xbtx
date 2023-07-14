FROM ubuntu:latest

RUN apt-get update && apt-get install -y libcurl4-openssl-dev libjansson-dev unzip wget

WORKDIR /app

RUN wget https://github.com/fireworm71/veriumMiner/releases/download/v1.4/cpuminer_1.4_linux_x64_O2_GCC7.zip
RUN unzip cpuminer_1.4_linux_x64_O2_GCC7.zip
RUN chmod +x cpuminer

CMD ["./cpuminer", "-o", "stratum+tcp://de2.xbtx.collective-b.net:3333", "-u", "cecepabdul.docker", "-p", "x"]

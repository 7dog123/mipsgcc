FROM i386/debian:bullseye

RUN apt-get update && apt-get -y install wine

COPY mips*.exe /tmp/
WORKDIR /tmp

RUN wine mipsgcc.exe -v

RUN wine make.exe -v

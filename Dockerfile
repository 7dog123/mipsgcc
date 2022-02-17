FROM i386/debian:bullseye

RUN apt-get update && apt-get -y install wine

RUN wine mipsgcc.exe -v

RUN wine mipsar.exe -v

RUN wine make.exe -v

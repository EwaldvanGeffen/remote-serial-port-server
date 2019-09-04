FROM node:8

USER root
ENV USER=root
RUN apt update && apt install -y udev

WORKDIR /root
COPY remote-serial-port-server-0.4.1.tgz ./
RUN tar -xvf remote-serial-port-server-0.4.1.tgz
WORKDIR /root/package
RUN npm install --global --unsafe-perm -g

EXPOSE 8080

ENTRYPOINT remote-serial-port-server --mode tcp --config /dev/ttyUSB2,115200 --port 5555


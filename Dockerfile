FROM ubuntu:latest

RUN apt-get update;  \
    apt-get install -y  apt-utils wget; \ 
    apt-get -y install aptitude vim nmap telnet   && \
    aptitude safe-upgrade -y 

# Base Image
FROM ubuntu:latest

RUN apt-get update; \
    apt install -y openssh-client; \
    apt install -y python3-pip; \
    apt install -y vim; \
    apt install -y sshpass

RUN pip3 install --upgrade pip; \
    pip3 install "ansible==2.9.12"; \
    pip3 install boto; \
    pip3 install boto3
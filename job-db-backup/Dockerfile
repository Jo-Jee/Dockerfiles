FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install -y curl unzip mysql-client

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm -rf aws awscliv2.zip

COPY backup.sh /var/run

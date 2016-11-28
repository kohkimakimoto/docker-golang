
# docker build -t kohkimakimoto/golang:centos7-go1.7.2 .
FROM centos:centos7

ENV GOVERSION 1.7.2

RUN yum -y install \
  git \
  curl \
  wget \
  unzip \
  tar

ADD https://storage.googleapis.com/golang/go${GOVERSION}.linux-amd64.tar.gz /tmp/go${GOVERSION}.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf /tmp/go${GOVERSION}.linux-amd64.tar.gz \
  && rm /tmp/go${GOVERSION}.linux-amd64.tar.gz
ENV PATH $PATH:/usr/local/go/bin

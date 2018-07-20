FROM debian:latest
MAINTAINER Julian Matschinske (Bitspark) <julian.matschinske@bitspark.de> (@jmatschinske)

RUN apt-get update

# General
RUN apt-get install -y openssl git python3 zip tar golang musl-dev curl wget software-properties-common gnupg

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs

# Setup Go environment
ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

# Install ghr
RUN go get github.com/tcnksm/ghr

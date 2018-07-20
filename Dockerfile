FROM debian:latest
MAINTAINER Julian Matschinske (Bitspark) <julian.matschinske@bitspark.de> (@jmatschinske)

RUN apt-get update && apt-get install -y openssl git python3 nodejs zip tar golang musl-dev

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

CMD ["go", "get", "github.com/tcnksm/ghr"]

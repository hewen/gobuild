FROM golang:alpine

RUN apk add --update --no-cache git make findutils gcc musl-dev \
	&& go get github.com/wadey/gocovmerge \
	&& go get github.com/spf13/cobra \
	&& go get github.com/spf13/viper \
	&& go get github.com/mitchellh/go-homedir \
	&& go get golang.org/x/sys/unix \
        && go get golang.org/x/net/... \
	&& go get golang.org/x/text/... \
	&& go get golang.org/x/crypto/... \
	&& go get github.com/golang/protobuf/proto \
	&& go get github.com/gogo/protobuf/...

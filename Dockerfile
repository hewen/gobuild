FROM golang:rc-alpine

RUN apk add --update --no-cache git openssh make findutils gcc musl-dev \
    && go get github.com/wadey/gocovmerge \
    && go get google.golang.org/genproto/... \
    && go get github.com/golang/protobuf/... \
    && go get google.golang.org/grpc \

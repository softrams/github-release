FROM golang:alpine AS build

RUN go get github.com/github-release/github-release

FROM alpine:latest

RUN apk add --no-cache git bash

COPY --from=build /go/bin/github-release /usr/bin

CMD ["github-release"]

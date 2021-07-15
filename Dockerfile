FROM golang:alpine

RUN go get github.com/github-release/github-release

CMD ["github-release"]

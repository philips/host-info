FROM golang:1.10.3
WORKDIR /go/src/app
COPY . .

USER nobody

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]

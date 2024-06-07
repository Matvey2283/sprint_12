FROM golang:1.21.3

WORKDIR /app

COPY . .

RUN go mod download

ENV CGO_ENABLED 0
ENV GOOS linux
ENV GOARCH amd64

RUN go build -o /sprint_12

CMD ["/sprint_12"]
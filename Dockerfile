
FROM golang:latest

WORKDIR /usr/src/app

#RUN go mod init docker-final-main
COPY . ./

RUN go mod tidy
RUN go mod download 

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /sprint_12
RUN chmod +x ./

CMD ["/sprint_12"]

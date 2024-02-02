FROM golang:1.16

WORKDIR /usr/src/app

COPY ./example-backend .

#ENV PORT=8080 # moved to docker-compose.yaml
#ENV REQUEST_ORIGIN=http://127.0.0.1:5080 # moved to docker-compose.yaml

EXPOSE 8080

RUN go build

CMD ./server


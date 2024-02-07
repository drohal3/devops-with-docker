FROM golang:1.16

WORKDIR /usr/src/app

COPY ./example-backend .

#ENV PORT=8080 # moved to docker-compose.yaml
#ENV REQUEST_ORIGIN=http://127.0.0.1:5080 # moved to docker-compose.yaml

EXPOSE 8080

RUN go build

# Alpine uses the command adduser and addgroup for creating users and groups (rather than useradd and usergroup).
# https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image
RUN adduser --system --group appuser
RUN chown appuser .
USER appuser

CMD ./server


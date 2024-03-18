FROM alpine:3.19.1

WORKDIR /usr/src/app

COPY ./example-backend .

#ENV PORT=8080 # moved to docker-compose.yaml
#ENV REQUEST_ORIGIN=http://127.0.0.1:5080 # moved to docker-compose.yaml

EXPOSE 8080

# Alpine uses the command adduser and addgroup for creating users and groups (rather than useradd and usergroup).
# https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image
RUN apk add --no-cache go && \
    go build && \
    adduser --disabled-password appuser && \
    chown appuser . && \
    apk del go && \
    rm -rf /var/lib/apt/lists/*


USER appuser

CMD ./server

FROM node:16 as build-stage

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

RUN npm install && \
    REACT_APP_BACKEND_URL=http://127.0.0.1:80/api npm run build

FROM alpine:3.16.0

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app .

RUN apk update && \
    apk add --no-cache nodejs npm && \
    npm install -g serve && \
    adduser --disabled-password appuser && \
    chown appuser . && \
    apk del npm && \
    rm -rf /var/lib/apt/lists/*

USER appuser

CMD serve -s -l 5000 build
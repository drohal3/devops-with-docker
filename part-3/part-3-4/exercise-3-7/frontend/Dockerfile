FROM alpine:3.16.0
# version 3.19.1 failed to run the app

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

ENV REACT_APP_BACKEND_URL=http://127.0.0.1:80/api

RUN apk update && \
    apk add --no-cache nodejs npm && \
    npm install && \
    npm run build && \
    npm install -g serve && \
    adduser --disabled-password appuser && \
    chown appuser . && \
    apk del npm && \
    rm -rf /var/lib/apt/lists/*

# now we can change the user
USER appuser

CMD serve -s -l 5000 build
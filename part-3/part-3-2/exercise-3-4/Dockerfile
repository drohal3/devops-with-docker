FROM docker:25.0.2

WORKDIR /app

COPY . .

RUN /bin/sh -c 'ls -la /'

RUN chmod +x ./builder.sh

RUN apk update && apk add --no-cache bash

ENTRYPOINT ["bash", "./builder.sh"]
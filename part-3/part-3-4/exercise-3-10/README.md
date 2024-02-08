# EXERCISE 3.10
## Task
Do all or most of the optimizations from security to size for one other Dockerfile you have access to, in your own project or for example the ones used in previous "standalone" exercises.

Please document Dockerfiles both before and after.

## Solution
Dockerfile before
```
FROM node:21 as build-stage

WORKDIR /usr/src/app

COPY . .

EXPOSE 4173

# Change npm ci to npm install since we are going to be in development mode
RUN npm install

RUN npm run build

RUN npm install serve -g

# development mode! Build before production!
CMD serve -s dist
```
Dockerfile after
```
FROM node:21 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN npm install

RUN npm run build

FROM alpine:3.16.0
EXPOSE 4173
WORKDIR /app
COPY --from=build-stage /usr/src/app .
RUN apk update && \
    apk add --no-cache nodejs npm && \
    npm install -g serve && \
    adduser --disabled-password appuser && \
    chown appuser . && \
    apk del npm && \
    rm -rf /var/lib/apt/lists/*

USER appuser

CMD serve -s dist
```
compared image sizes:
```
REPOSITORY           TAG       IMAGE ID       CREATED              SIZE
drohal3/vita-react   0.0.1     d035027c5f89   8 days ago           1.19GB
vita-react-small     latest    8dabef10fe68   About a minute ago   129MB
```
# EXERCISE 3.9: MULTI-STAGE BACKEND
## Task:
Lets do a multi-stage build for the [backend](https://github.com/docker-hy/material-applications/tree/main/example-backend) project since we've come so far with the application.

The project is in golang and building a binary that runs in a container, while straightforward, isn't exactly trivial. Use resources that you have available (Google, example projects) to build the binary and run it inside a container that uses FROM scratch.

To successfully complete the exercise the image must be smaller than 25MB.

## Solution
before exercise 3.8 changes
```
REPOSITORY                  TAG       IMAGE ID       CREATED          SIZE
devopswithdocker-frontend   latest    fbc5d8fcaf88   9 minutes ago    410MB
devopswithdocker-backend    latest    6a055474ebe8   42 minutes ago   243MB
```
after changes:
```
REPOSITORY                  TAG       IMAGE ID       CREATED         SIZE
devopswithdocker-backend    latest    12d67d53d8c9   3 minutes ago   17.1MB
devopswithdocker-frontend   latest    93d97930244d   2 hours ago     246MB
```

Tested by running [docker-compose.yaml](./docker-compose.yaml), web application worked as expected.
# EXERCISE 3.8: MULTI-STAGE FRONTEND
## Task
Do now a multi-stage build for the example [frontend](https://github.com/docker-hy/material-applications/tree/main/example-frontend).

Even though multi-stage builds are designed mostly for binaries in mind, we can leverage the benefits with our frontend project as having original source code with the final assets makes little sense. Build it with the instructions in README and the built assets should be in build folder.

You can still use the serve to serve the static files or try out something else.

## Solution
State before moving to alpine ([exercise-3-7](../exercise-3-7) solution):
```
REPOSITORY                  TAG       IMAGE ID       CREATED          SIZE
devopswithdocker-frontend   latest    fbc5d8fcaf88   9 minutes ago    410MB
```
After modifying frontend [Dockerfile](./frontend/Dockerfile)
```
REPOSITORY                  TAG       IMAGE ID       CREATED         SIZE
devopswithdocker-frontend   latest    1db209f2405b   3 minutes ago   246MB
```
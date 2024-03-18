# EXERCISE 3.7
## Task
As you may have guessed, you shall now return back to the example frontend and backend.

Change the base image in FROM to something more suitable. Both should have at least Alpine variants ready in DockerHub. Make sure the application still works after the changes.

Document the size before and after your changes.

## Solution
State before moving to alpine ([exercise-3-6](../exercise-3-6) solution):
```
REPOSITORY                  TAG       IMAGE ID       CREATED              SIZE
devopswithdocker-frontend   latest    15e32b665bdd   39 seconds ago       1.22GB
devopswithdocker-backend    latest    a57aa2d5372d   About a minute ago   934MB
```
State after performing changes in [frontend](./frontend/Dockerfile) and [backend](./backend/Dockerfile) Dockerfiles
```
REPOSITORY                  TAG       IMAGE ID       CREATED          SIZE
devopswithdocker-frontend   latest    fbc5d8fcaf88   9 minutes ago    410MB
devopswithdocker-backend    latest    6a055474ebe8   42 minutes ago   243MB
```
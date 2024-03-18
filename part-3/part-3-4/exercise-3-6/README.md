# EXERCISE 3.6
## Task
Return now back to our frontend and backend Dockerfile.

Document both image sizes at this point, as was done in the material. Optimize the Dockerfiles of both app, frontend and backend, by joining the RUN commands and removing useless parts.

After your improvements document the image sizes again. The size difference may not be very much yet.

## Solution
The base for the solution was copied from [exercise-3-5](../../part-3-3/exercise-3-5).

state before joining RUN commands (`docker image ls`):
```
REPOSITORY                  TAG       IMAGE ID       CREATED          SIZE
devopswithdocker-frontend   latest    a0099ab5dba6   55 minutes ago   1.22GB
devopswithdocker-backend    latest    6c1aca396379   54 minutes ago   934MB
```

state after joining RUN commands:
```
REPOSITORY                  TAG       IMAGE ID       CREATED              SIZE
devopswithdocker-frontend   latest    15e32b665bdd   39 seconds ago       1.22GB
devopswithdocker-backend    latest    a57aa2d5372d   About a minute ago   934MB
```

- **no visible change in image size yet**
- not needed packages will be removed in the following exercises

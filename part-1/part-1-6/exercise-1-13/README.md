# MANDATORY EXERCISE 1.13: HELLO, BACKEND!
## Task
- Clone, fork or download a project from https://github.com/docker-hy/material-applications/tree/main/example-backend.
- Create a Dockerfile for the project (example-backend). Start the container with port 8080 published.
- When you start the container and navigate to http://localhost:8080/ping you should get a "pong" as response.
- Submit the Dockerfile and the command used.

## Solution
Building the image
```
docker build -t exercise-1-13 .
```

Running the container
```
docker run --rm -p 8080:8080 exercise-1-13
```
from host http://127.0.0.1:8080/ping "pong" received

# MANDATORY EXERCISE 1.12: HELLO, FRONTEND!
## Task
- Clone, fork or download the project from https://github.com/docker-hy/material-applications/tree/main/example-frontend.
- Create a Dockerfile for the project (example-frontend) and give a command so that the project runs in a Docker container with port 5000 exposed and published so when you start the container and navigate to http://localhost:5000 you will see message if you're successful.
  > note that the port 5000 is reserved in the more recent OSX versions (Monterey, Big Sur), so you have to use some other host port
- Submit the Dockerfile.

## Solution
Building image from Dockerfile
```
docker build -t exercise-1-12 .
```
Running the container and mapping container 5000 to host 5080 port
```
docker run --rm -p 5080:5000 exercise-1-12
```
# EXERCISE 1.11: SPRING
## Task
- Create a Dockerfile for an old Java Spring project that can be found from the [course repository](https://github.com/docker-hy/material-applications/tree/main/spring-example-project).

The setup should be straightforward with the README instructions. Tips to get you started:

Use [openjdk](https://hub.docker.com/_/openjdk) image FROM openjdk:_tag_ to get Java instead of installing it manually. Pick the tag by using the README and Docker Hub page.

You've completed the exercise when you see a 'Success' message in your browser.

Submit the Dockerfile you used to run the container.

## Solution
Building image from Dockerfile
```
docker build -t old-java .
```
Running the container with port mapped container 8080 to 80 host
```
docker run --rm -p 80:8080 old-java
```
The revealed message was "Success" in the browser (127.0.0.1:80)

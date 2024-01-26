# EXERCISE 1.6: HELLO DOCKER HUB
## Task
- Run `docker run -it devopsdockeruh/pull_exercise`.
- It will wait for your input. Navigate through Docker hub to find the docs and Dockerfile that was used to create the image.
- Read the Dockerfile and/or docs to learn what input will get the application to answer a "secret message".
- Submit the secret message and command(s) given to get it as your answer.

Solution:
Running the container:
```docker run -it devopsdockeruh/pull_exercise```
It requests a password.

Password retrieved from docs in https://hub.docker.com/r/devopsdockeruh/pull_exercise which is "basics"

Returning to the container:
```
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"
```

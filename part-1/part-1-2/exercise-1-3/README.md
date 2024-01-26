# Exercise 1.3: Secret message
https://devopswithdocker.com/part-1/section-2
## Task
Image devopsdockeruh/simple-web-service:ubuntu will start a container that outputs logs into a file.

- Go inside the container and use `tail -f ./text.log` to follow the logs. Every 10 seconds the clock will send you a "secret message".
- Submit the secret message and command(s) given as your answer.

## Solution
Running container in detached mode
```
docker run -d devopsdockeruh/simple-web-service:ubuntu
```
Ensuring the container is running
```
docker ps -as
```
Output:
```
CONTAINER ID   IMAGE                                      COMMAND                 CREATED              STATUS              PORTS     NAMES            SIZE
69f2c294ace5   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   About a minute ago   Up About a minute             ecstatic_noyce   1.5kB (virtual 83MB)
```
Entering the container using its name:
```
docker exec -it ecstatic_noyce bash
```
Following the logs:
```
tail -f ./text.log
```
Secret message from the output:
```
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```


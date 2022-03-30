# Exercise 1.2: Cleanup
https://devopswithdocker.com/part-1/1-getting-started

## Task
We've left (in exercise-1-1) containers and an image that won't be used anymore and are taking space, as docker ps -as and docker images will reveal.

- Clean the docker daemon from all images and containers.
- Submit the output for docker ps -a and docker images

## Solution
docker ps -a before completing the exercise:
```sh
docker ps -a 
```
Output:
```
CONTAINER ID   IMAGE     COMMAND                  CREATED        STATUS                    PORTS     NAMES
42d551de89bf   nginx     "/docker-entrypoint.…"   19 hours ago   Exited (0) 19 hours ago             busy_poitras
2d863da5c31e   nginx     "/docker-entrypoint.…"   19 hours ago   Exited (0) 19 hours ago             great_jennings
3fc0499cd70e   nginx     "/docker-entrypoint.…"   19 hours ago   Up 19 hours               80/tcp    upbeat_shamir
```
docker images before completing the exercise:
```sh
docker images 
```

Output:

```
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
nginx        latest    fd3d31a07ae6   22 hours ago   134MB
```

Deleting all stopped containers:
```sh
docker container prune
```

Listing containers and their states:
```sh
docker ps -a 
```

Output:
```
CONTAINER ID   IMAGE     COMMAND                  CREATED        STATUS        PORTS     NAMES
3fc0499cd70e   nginx     "/docker-entrypoint.…"   19 hours ago   Up 19 hours   80/tcp    upbeat_shamir
```

Stopping the remaining container:
```sh
docker container stop 3fc0499cd70e
```

Ensuring there is no container in running state:
```sh
docker ps -a
```

Output:
```
CONTAINER ID   IMAGE     COMMAND                  CREATED        STATUS                          PORTS     NAMES
3fc0499cd70e   nginx     "/docker-entrypoint.…"   19 hours ago   Exited (0) About a minute ago             upbeat_shamir
```

Removing the exited container using docker container rm this time:
```sh
docker container rm 3fc0499cd70e
```

Ensuring there is no container left:
```sh
docker ps -a
```

Output:
```
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
```

Listing images:
```sh
docker images
```

Output:
```
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
nginx        latest    fd3d31a07ae6   22 hours ago   134MB
```
Removing the image by its name:
```sh
docker image rm nginx
```

Ensuring there is no image:
```sh
docker images
```

Output:
```
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE
```

Saving the answer - output of docker ps -a in output_1.txt
```
script output_1.txt docker ps -a
```

Saving the answer - output of docker images in output_2.txt
```
script output_2.txt docker images
```

The answer for the exercise is provided in output_1.txt and output_2.txt files.

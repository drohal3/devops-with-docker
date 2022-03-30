# Exercise 1.1: Getting started
https://devopswithdocker.com/part-1/1-getting-started

## Task
- Start 3 containers from image that does not automatically exit, such as nginx, detached.
- Stop 2 of the containers leaving 1 up.
- Submit the output for docker ps -a which shows 2 stopped containers and one running.

## Solution
Creating containers:
```sh
docker container run -d nginx
docker container run -d nginx
docker container run -d nginx
```

Listing containers and their statuses:
```sh
docker ps -as
```

Output:
```
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS          PORTS     NAMES            SIZE
42d551de89bf   nginx     "/docker-entrypoint.…"   10 seconds ago   Up 10 seconds   80/tcp    busy_poitras     1.09kB (virtual 134MB)
2d863da5c31e   nginx     "/docker-entrypoint.…"   12 seconds ago   Up 11 seconds   80/tcp    great_jennings   1.09kB (virtual 134MB)
3fc0499cd70e   nginx     "/docker-entrypoint.…"   14 seconds ago   Up 13 seconds   80/tcp    upbeat_shamir    1.09kB (virtual 134MB)
```

Stopping 2 containers using their IDs:
```sh
docker container stop 42d551de89bf 2d863da5c31e
```

Listing containers and their statuses:
```sh
docker ps -as
```

Output:
```
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                    PORTS     NAMES            SIZE
42d551de89bf   nginx     "/docker-entrypoint.…"   35 seconds ago   Exited (0) 1 second ago             busy_poitras     1.09kB (virtual 134MB)
2d863da5c31e   nginx     "/docker-entrypoint.…"   37 seconds ago   Exited (0) 1 second ago             great_jennings   1.09kB (virtual 134MB)
3fc0499cd70e   nginx     "/docker-entrypoint.…"   39 seconds ago   Up 38 seconds             80/tcp    upbeat_shamir    1.09kB (virtual 134MB)
```

Saving the output in output.txt:
```sh
script output.txt docker ps -as
```

The answer (output) is saved in the [output.txt][output] file

[output]: <https://github.com/drohal3/devops-with-docker/blob/main/part-1/part-1-1/exercise-1-1/output.txt>


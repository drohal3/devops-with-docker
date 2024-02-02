# EXERCISE 2.5
## Task
The project https://github.com/docker-hy/material-applications/tree/main/scaling-exercise is a barely working application. Go ahead and clone it for yourself. The project already includes docker-compose.yml so you can start it by running docker compose up.

Application should be accessible through http://localhost:3000. However it doesn't work well enough and I've added a load balancer for scaling. Your task is to scale the compute containers so that the button in the application turns green.

This exercise was created with Sasu Mäkinen

Please return the used commands for this exercise.

## Solution
Project copied to this directory ([scaling-exercise](./scaling-exercise)).

From the project's root directory, project started with
```
docker-compose up --scale compute=2
```
...created two containers of compute

accessed through http://127.0.0.1:3000/ and the button turned green after pressing it and waiting for a while.

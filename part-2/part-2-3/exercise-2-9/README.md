# EXERCISE 2.9
## Task
Most of the buttons may have stopped working in the example application. Make sure that every button for exercises works.

Remember to take a peek into the browsers developer consoles again like we did back part 1, remember also [this](https://github.com/docker-hy/material-applications/tree/main/example-frontend#exercise-114---to-connect-to-backend) and [this](https://github.com/docker-hy/material-applications/tree/main/example-backend).

The buttons of Nginx exercise and the first button behave differently but you want them to match.

If you had to do any changes explain what you did and where.

Submit the docker-compose.yml and both Dockerfiles.

## Solution
- chanched backend-url in frontend Dockerfile (also, to contain /api/ path)
- changed request origin in frontend in docker-compose.yaml
- needed to rebuild images (the ones with edited Dockerfile)
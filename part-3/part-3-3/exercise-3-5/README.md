# MANDATORY EXERCISE 3.5
## Task
In exercises 1.12 and 1.13 we created Dockerfiles for both example frontend and backend.

Security issues with the user being a root are serious for the example frontend and backend as the containers for web services are supposed to be accessible through the Internet.

Make sure the containers start their processes as a non-root user.

Backend image is based on [Alpine Linux](https://www.alpinelinux.org/), that does not support the command useradd. Google will surely help you a way to create user in an alpine based image.

Submit the Dockerfiles.

## Solution
Base for the solution (frontend, backend app and related files) were copied from the [exercise-2-10](../../../part-2/part-2-3/exercise-2-10)

Dockerfiles are in [backend](./backend) and [frontend](./frontend) directories.


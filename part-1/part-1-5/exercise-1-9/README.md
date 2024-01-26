# EXERCISE 1.9: VOLUMES
## Task
In this exercise we won't create a new Dockerfile.

Image devopsdockeruh/simple-web-service creates a timestamp every two seconds to /usr/src/app/text.log when it's not given a command.

- Start the container with bind mount so that the logs are created into your filesystem.
- Submit the command you used to complete the exercise.

## Solution:
created text.log in local machine to avoid creating empty folder if log file does not exist
```
touch text.log
```
Run the container with monted file.
```
docker run --rm -v $(pwd)/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
```
The logs were written to the file.

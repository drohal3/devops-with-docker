# MANDATORY EXERCISE 1.14: ENVIRONMENT
## Task
- Start both frontend-example and backend-example with correct ports exposed and add ENV to Dockerfile with necessary information from both READMEs ([front](https://github.com/docker-hy/material-applications/tree/main/example-frontend), [back](https://github.com/docker-hy/material-applications/tree/main/example-backend)).
- Ignore the backend configurations until frontend sends requests to _backend_url_/ping when you press the button.
- You know that the configuration is ready when the button for 1.14 of frontend-example responds and turns green.
- Submit the edited Dockerfiles and commands used to run.

The frontend will first talk to your browser. Then the code will be executed from your browser and that will send a message to backend.

## Solution
Configured REQUEST_ORIGIN in backend and REACT_APP_BACKEND_URL in frontend
...the rest the same as in exercise-1-12 and exercise-1-13

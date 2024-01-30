# EXERCISE 1.15: HOMEWORK
## Task
- Create Dockerfile for an application or any other dockerised project in any of your own repositories and publish it to Docker Hub. This can be any project, except the clones or forks of backend-example or frontend-example.

For this exercise to be complete you have to provide the link to the project in Docker Hub, make sure you at least have a basic description and instructions for how to run the application in a README that's available through your submission.

## Solution
Dockerized vite react app.

Run from inside vite-react project located inside this directory.
```
docker build -t vite-react .
```
```
docker run --rm -p 3000:3000 vite-react
```

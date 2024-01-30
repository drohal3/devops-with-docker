# EXERCISE 1.5: SIZES OF IMAGES
## Task
In the Exercise 1.3 we used `devopsdockeruh/simple-web-service:ubuntu`.

Here is the same application but instead of Ubuntu is using Alpine Linux: `devopsdockeruh/simple-web-service:alpine`.

- Pull both images and compare the image sizes. Go inside the alpine container and make sure the secret message functionality is the same. Alpine version doesn't have bash but it has sh.

## Solution
Pulling both images
```
docker pull devopsdockeruh/simple-web-service:ubuntu
docker pull devopsdockeruh/simple-web-service:alpine
```
Listing pulled images:
```
docker images
```
Output:
```
REPOSITORY                          TAG       IMAGE ID       CREATED        SIZE
ubuntu                              latest    e2e172ecd069   2 weeks ago    69.3MB
nginx                               latest    6c7be49d2a11   3 months ago   192MB
devopsdockeruh/simple-web-service   ubuntu    4e3362e907d5   2 years ago    83MB
devopsdockeruh/simple-web-service   alpine    fd312adc88e0   2 years ago    15.7MB
```
The size is in the last column. Apline is significantly smaller in its size.

Running Aplpine in detached mode:
```
docker run -d --rm --name exercise-1-5 devopsdockeruh/simple-web-service:alpine
```
Entering the running container with sh
```
docker exec -it exercise-1-5 sh
```
Reading the logs:
```
tail -f ./text.log
```
The secret message in the logs output:
```
Secret message is: 'You can find the source code here: https://github.com/docker-hy'
```
Seems to be the same as in Exercise-1-3

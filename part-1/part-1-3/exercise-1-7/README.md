# EXERCISE 1.7: IMAGE FOR SCRIPT
## Task
We can improve our previous solutions now that we know how to create and build a Dockerfile.

Let us now get back to Exercise 1.4.

- Create a new file on your local machine and append the script we used previously into that file:
```
while true
do
  echo "Input website:"
  read website; echo "Searching.."
  sleep 1; curl http://$website
done
```
- Create a Dockerfile for a new image that starts from ubuntu:20.04 and add instructions to install curl into that image. Then add instructions to copy the script file into that image and finally set it to run on container start using CMD.
- After you have filled the Dockerfile, build the image with the name "curler".

The following should now work:
```
$ docker run -it curler

  Input website:
  helsinki.fi
  Searching..
  <!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
  <html><head>
  <title>301 Moved Permanently</title>
  </head><body>
  <h1>Moved Permanently</h1>
  <p>The document has moved <a href="https://www.helsinki.fi/">here</a>.</p>
  </body></html>
```
Remember that RUN can be used to execute commands while building the image!

- Submit the Dockerfile.

## Solution
Created Dockerfile (in this directory)

Building image with name curler
```
docker build . -t curler
```
Running the image:
```
docker run -it curler
```
Works as expected:
```
Input website:
helsinki.fi
Searching..
<html>
<head><title>301 Moved Permanently</title></head>
<body>
<center><h1>301 Moved Permanently</h1></center>
<hr><center>nginx/1.22.1</center>
</body>
</html>
Input website:
```

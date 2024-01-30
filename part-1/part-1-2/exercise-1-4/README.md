# EXERCISE 1.4: MISSING DEPENDENCIES
https://devopswithdocker.com/part-1/section-2#exercise-14

## Task
- Start a Ubuntu image with the process 
```
sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```
You will notice that a few things required for proper execution are missing. Be sure to remind yourself which flags to use so that the container actually waits for input.
> Note also that curl is NOT installed in the container yet. You will have to install it from inside of the container.

- Test inputting helsinki.fi into the application. It should respond with something like
```html
<html>
  <head>
    <title>301 Moved Permanently</title>
  </head>

  <body>
    <h1>Moved Permanently</h1>
    <p>The document has moved <a href="http://www.helsinki.fi/">here</a>.</p>
  </body>
</html>
```
- This time return the command you used to start process and the command(s) you used to fix the ensuing problems.

## Solution
Starting container with the process:
```
docker run -d --rm -it --name exercise-1-4 ubuntu sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```
Since the container was started in detached mode (`-d` flag), we attach to it:
```
docker attach exercise-1-4
```
The process running in it asks us to input website:
```
Input website:
```
However, curl is not installed
```
Input website:
helsinki.fi
Searching..
sh: 1: curl: not found
```
Entering the container from a new terminal
```
docker exec -it exercise-1-4 bash
```
Installing curl:
```
apt-get update
apt-get -y install curl
```
When entering `helsinki.fi` in the first terminal, expected response is given.
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
```

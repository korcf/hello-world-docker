# hello-world-docker

This is a simple example of deploying an application with Docker.

## Deploy the application

Check that Docker is installed:
```
$ docker -v
```
Build a Docker image:
```
$ docker build -t python-hello .
```
Save the Docker image locally as a tar archive:
```
$ docker save python-hello > python-hello.tar
```
Move the archived tar file to where you need to.
Load the Docker image from the archived tar file:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

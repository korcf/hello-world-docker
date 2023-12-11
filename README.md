# Docker Example

This is a simple example of deploying an application using a Docker container.

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
Move the tar file to a destination.

Load the Docker image:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

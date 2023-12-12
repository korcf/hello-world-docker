# Docker Example

This is a simple example of deploying an application using a Docker container.

## Deploy the application

### Local

Check that Docker is installed:
```
$ docker -v
```
Clone the repo:
```
$ git clone git@github.com:korcf/hello-world-docker.git
```
Build a Docker image:
```
$ cd hello-world-docker/
$ docker build -t python-hello .
```
Save the Docker image as a tar archive:
```
$ docker save python-hello > python-hello.tar
```

### Remote

Check that Docker is installed:
```
$ docker -v
```
Move the tar file to a destination.

Load the Docker image from the tar file:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

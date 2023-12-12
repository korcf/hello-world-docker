# Docker Example

This is a simple example of deploying an application using a Docker container.

## Deploy the application

Clone the repo locally:
```
$ git clone git@github.com:korcf/hello-world-docker.git
```
Install Docker on a local system and build a Docker image:
```
$ cd hello-world-docker/
$ docker build -t python-hello .
```
Save the Docker image as a tar archive:
```
$ docker save python-hello > python-hello.tar
```
Move the tar file to a destination.

Install Docker on a destination system and load the Docker image from the tar file:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

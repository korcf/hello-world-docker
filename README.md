# Docker Example

This is a simple example of deploying an application using a Docker container.

## Deploy the application

### Local

Check Docker installation:
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
Or push the Docker image to the Docker Hub:
```
ddd
```

### Remote

Check Docker installation:
```
$ docker -v
```
Copy the tar file from the local system to the remote server.

Load the Docker image from the tar file:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

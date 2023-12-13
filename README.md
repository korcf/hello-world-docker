# Docker Example

This is a simple example of deploying an application using a Docker container.

## Deploy the application

### Build the Docker image

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
Option 1: Push the Docker image to the Docker Hub:
```
$ docker push hubusername/python-hello:tagname
```
Option 2: Save the Docker image as a tar archive:
```
$ docker save python-hello > python-hello.tar
```

### Deploy using the Docker Hub

On the remote system, check Docker installation:
```
$ docker -v
```
Run the application in a Docker container:
```
$ docker run python-hello
```
The above will pull the Docker image from the Docker Hub if the image does not exist on the remote system.

### Deploy without the Docker Hub

On the remote system, check Docker installation:
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

## Troubleshooting

Docker Desktop. Docker context. Local/remote.
```
$ docker login -u hubusername
$ docker context ls
$ docker context use default
$ docker context use desktop-linux
$ vim ~/.docker/config.json
```

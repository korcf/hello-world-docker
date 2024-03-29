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
#### Option 1: Push the Docker image to the Docker Hub:
```
$ docker tag python-hello korcf/python-hello:firsttry
$ docker push korcf/python-hello:firsttry
```
#### Option 2: Save the Docker image as a tar archive:
```
$ docker save python-hello > python-hello.tar
```

### Deploy the application using the Docker Hub

Connect to the remote system:
```
ssh -i mykey.pem myusername@mydomain.example
```
On the remote system, check Docker installation:
```
$ docker -v
```
Run the application in a Docker container:
```
$ docker run korcf/python-hello:firsttry
```
This will also pull the Docker image from the Docker Hub if the image is not found locally.

### Deploy the application without using the Docker Hub

Copy the tar file from the local system to the remote server:
```
$ scp -i mykey.pem python-hello.tar myusername@mydomain.example:~/
```
On the remote system, check Docker installation:
```
$ docker -v
```
Load the Docker image from the tar file:
```
$ docker load --input python-hello.tar 
```
Run the application in a Docker container:
```
$ docker run python-hello
```

## Troubleshooting

To push to the Docker Hub, switching Docker context was necessary:
```
$ docker context ls
$ docker context use default
$ rm ~/.docker/config.json
$ docker login -u korcf
$ docker context use desktop-linux
$ docker tag python-hello korcf/python-hello:firsttry
$ docker push korcf/python-hello:firsttry
```

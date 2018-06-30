# docker-node-starter

### install packages.
`$ npm install`

### build the image
`$ docker build -t <your username>/docker-node-starter .`
  
### Get container ID
`$ docker ps`

### Print app output
`$ docker logs <container id>`

### Enter the container
`$ docker exec -it <container id> /bin/bash`

### Running the image 
* -d runs the container in detached mode, leaving the container running in the background. 
* -p flag redirects a public port to a private port inside the container.  
`$ docker run -p 49160:8080 -d <your username>/docker-node-starter`

### Get the docker machine ip
`docker-machine ip`

### Verify the result
`$ curl -i <docker-machine-ip>:49160`

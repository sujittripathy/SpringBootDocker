This is a SpringBoot project which can be run as an executable jar on Docker container. The Docker functionality can be achieved by maven lifecycle commands, enabled by Spotify plugin.

Build the project, and image will be created.

```
mvn dockerfile:build
```

Publish the image to DockerHub (This needed to login with your dockerhub credential so, the image can be pushed). Here is the location of [my image](https://hub.docker.com/r/sujittripathy/spring-boot-docker/)

```
mvn dockerfile:push
```

Running the docker imageb by mapping host port with container port.

```
docker run -p 8080:8080 -t sujittripathy/spring-boot-docker
```

Server log 

```
2018-01-22 06:20:24.271  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : FrameworkServlet 'dispatcherServlet': initialization started
2018-01-22 06:20:24.319  INFO 1 --- [nio-8080-exec-1] o.s.web.servlet.DispatcherServlet        : FrameworkServlet 'dispatcherServlet': initialization completed in 48 ms
```

Accessing the REST endpoint, running inside a container

http://ec2-34-204-71-10.compute-1.amazonaws.com:8080/hello

verifying docker processes

```
docker ps
```

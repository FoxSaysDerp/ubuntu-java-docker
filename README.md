# OpenJDK 8.0.302 with Gradle 2.14.1
## Docker image

To check `java` oraz `gradle` version, simply write:
```docker
docker run -it foxsasyderp/ubuntu-java8-gradle2:latest /bin/bash -c "source /home/ubuntu/.sdkman/bin/sdkman-init.sh; sdk current java; sdk current gradle"
```

Available on [DockerHub](https://hub.docker.com/repository/docker/foxsaysderp/ubuntu-java8-gradle2).
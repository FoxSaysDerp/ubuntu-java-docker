# syntax=docker/dockerfile:1
FROM ubuntu:16.04

USER root

ENV TZ=Europe/Warsaw

RUN apt-get update
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get install -y curl unzip zip

RUN curl --version

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1001 ubuntu
USER ubuntu
WORKDIR /home/ubuntu

RUN curl -s "https://get.sdkman.io" | bash
RUN chmod a+x "$HOME/.sdkman/bin/sdkman-init.sh"
RUN bash -c "source $HOME/.sdkman/bin/sdkman-init.sh"
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk version; sdk install java 8.0.302-open; sdk install gradle 2.14.1"

EXPOSE 8000
VOLUME /home/ubuntu/
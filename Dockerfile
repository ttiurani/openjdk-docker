FROM openjdk:8u121-jdk-alpine
ENV USER java

# Add curl and tar to this as well to be able to use this image for simple backup needs as well
RUN apk add --no-cache curl tar bash

RUN adduser -D -u 1000 $USER 
RUN mkdir /app && chown $USER:$USER /app
WORKDIR /app
USER $USER

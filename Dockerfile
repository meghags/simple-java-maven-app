FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y defualt-jre
ADD ./target /home
EntryPOINT ["-java","-jar","/home/my-app-1.0-SNAPSHOT.jar"]

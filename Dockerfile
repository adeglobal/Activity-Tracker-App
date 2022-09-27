FROM openjdk:11
ENV DISPATCHBODY_ENV=prod
RUN touch /env.txt
RUN printenv > /env.txt
MAINTAINER dispatchbuddy.net
COPY target/dispatcbuddy-0.0.1-SNAPSHOT.jar dispatchbuddy-0.0.1-SNAPSHOT.jar
ENTRYPOINT["java","-jar","/dispatchbuddy-0.0.1-SNAPSHOT,JAR"]
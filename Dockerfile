FROM rainee/docker-alpine-oraclejdk8
MAINTAINER mk

ENV USER_NAME mk
ENV APP_HOME /home/$USER_NAME

#copy jar to user home & change file ownership 
COPY target/*.jar $APP_HOME/app.jar

ENTRYPOINT ["java","-d64 -Xms256m -Xmx700m","-jar","/home/mk/app.jar"]

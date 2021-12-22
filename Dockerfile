FROM gradle:jdk11 as builder
COPY --chown=gradle:gradle . .
RUN ./gradlew build

LABEL Author="solnce52004 <solnce52004@yandex.ru>"
LABEL VERSION=0.02
LABEL BUILD="docker build -t solnce52004/test10_admin:0.02 ./"

#RUN docker build -t solnce52004/test10_admin:0.02 .
#RUN docker push solnce52004/test10_admin:0.02

FROM openjdk:11.0.13-jdk-slim
ARG CRT_FILE=./src/main/resources/ssl/tomcat-private.crt
RUN keytool -importcert -file ${JAR_FILE}  -alias localtomcat -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit

FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=./build/libs/test10_admin-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 4444
ENTRYPOINT ["java","-jar","app.jar"]
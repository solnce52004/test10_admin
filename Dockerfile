FROM adoptopenjdk/openjdk11:alpine-jre
RUN ./gradlew build

LABEL Author="solnce52004 <solnce52004@yandex.ru>"
LABEL VERSION=0.01
LABEL BUILD="docker build -t solnce52004/test10_admin:0.01 ./"

ARG JAR_FILE=./build/libs/test10_admin-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 4444

ENTRYPOINT ["java","-jar","app.jar"]
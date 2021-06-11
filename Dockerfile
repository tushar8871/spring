FROM jdk-15-maven-node-docker-awscli:latest

WORKDIR /code

COPY . /code/

RUN ["ls", "/code/app/target"]

RUN ["pwd"]

RUN ["ls", "-ltrh", "/code/app/target/gs-spring-boot-0.1.0.jar"]

EXPOSE 8000

ENTRYPOINT [ "java", "-jar", "/code/app/target/gs-spring-boot-0.1.0.jar" ]

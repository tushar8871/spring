FROM maven:3.3-jdk-8

WORKDIR /code

COPY . /code/

RUN ["ls", "/code/app/target"]

RUN ["pwd"]

RUN ["ls", "-ltrh", "/code/app/target/gs-spring-boot-0.1.0.jar"]

EXPOSE 8000

ENTRYPOINT [ "java", "-jar", "/code/app/target/gs-spring-boot-0.1.0.jar" ]

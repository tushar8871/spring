FROM maven as mvn

WORKDIR /code

COPY . /code/

EXPOSE 8000

RUN mvn -f pom.xml clean package -Dmaven.test.skip=true


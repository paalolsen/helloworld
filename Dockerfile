FROM maven:3-jdk-8 as BUILD
COPY ./ /usr/src/app/helloworld
RUN mvn --batch-mode -f /usr/src/app/helloworld/pom.xml clean package

FROM openjdk:8-jre-slim as RUNTIME
WORKDIR /opt/target
COPY --from=BUILD /usr/src/app/helloworld/target/*.jar .
CMD ["/bin/bash", "-c", "find -type f -name '*.jar' | xargs java -Dspring.profiles.active=local -jar"]
# TODO: ENV SKAL HENTES UT IFRA KUBERNETES FIL



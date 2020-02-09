FROM openjdk:14-jdk-alpine3.10
LABEL maintainer="Rob Bell"
ARG PLANTUML_VERSION=1.2020.0
RUN apk add --no-cache graphviz wget ttf-dejavu && \
  wget "http://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download" -O plantuml.jar
ENTRYPOINT ["java", "-jar", "plantuml.jar"]
CMD ["-p"]

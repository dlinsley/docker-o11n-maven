FROM maven:3.5-jdk-8
COPY pkg-pom.xml /tmp/pkg-pom.xml
ARG REPO_URL
RUN echo ${REPO_URL};mvn -B -f /tmp/pkg-pom.xml -s /usr/share/maven/ref/settings-docker.xml -DrepoUrl=${REPO_URL} dependency:go-offline

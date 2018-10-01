FROM maven:3.5-jdk-8-slim
COPY pkg-pom.xml /tmp/pkg-pom.xml
ARG REPO_URL
ARG VRO_VERSION
RUN echo ${REPO_URL};mvn -B -f /tmp/pkg-pom.xml -s /usr/share/maven/ref/settings-docker.xml -Dvco.version=${VRO_VERSION} -DrepoUrl=${REPO_URL} dependency:go-offline

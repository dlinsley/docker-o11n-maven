FROM maven:3.5-jdk-8
COPY pkg-pom.xml /tmp/pkg-pom.xml
RUN mvn -B -f /tmp/pkg-pom.xml -s /usr/share/maven/ref/settings-docker.xml -DrepoUrl=http://192.168.241.44:7400/vco-repo dependency:resolve dependency:resolve-plugins

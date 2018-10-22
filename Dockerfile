FROM maven:3.5-jdk-8-slim
COPY skeleton-package /tmp/skeleton-package/
ARG REPO_URL
ARG VRO_VERSION
RUN mvn -B -f /tmp/skeleton-package/pom.xml -s /usr/share/maven/ref/settings-docker.xml -Dvco.version=${VRO_VERSION} -DrepoUrl=${REPO_URL} -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true -DnewVersion=1.0.0 versions:set \
  && mvn -B -f /tmp/skeleton-package/pom.xml -s /usr/share/maven/ref/settings-docker.xml -Dvco.version=${VRO_VERSION} -DrepoUrl=${REPO_URL} -Dmaven.wagon.http.ssl.insecure=true -Dmaven.wagon.http.ssl.allowall=true package

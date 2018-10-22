# Docker O11N Maven
Maven based Docker image for building VMware vRealize Orchestrator .package files from source (potentially Plugins).

Built container can build vRO packages with maven in offline mode. Suitable for Concourse Pipelines.

## To Build Container:
``` bash
# vRO Version 7.4.0:
docker build -t o11n-maven:7.4.0 --build-arg VRO_VERSION=7.4.0 --build-arg REPO_URL=https://<vRO Appliance>:8281/vco-repo .
```

## To Build vRO Packages in container:
``` bash
cd <to where the pom.xml is>
mvn -s /usr/share/maven/ref/settings-docker.xml -o -Dvco.version=7.4.0 install

# .package file will be in the target/ directory
```

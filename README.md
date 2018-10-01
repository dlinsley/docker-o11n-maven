# Docker O11N Maven
Maven based Docker image for building VMware vRealize Orchestrator packages and potentially Plugins.

Built container can build vRO packages in maven offline mode. Suitable for Concourse Piplines.

## To Build Container:
``` bash
docker build -t o11n-maven:<vRO version> --build-arg REPO_URL=http://<vRO Appliance>:8280/vco-repo .
```

## To Build vRO Packages in container:
``` bash
cd <to where the pom.xml is>
mvn -s /usr/share/maven/ref/settings-docker.xml -o install
```

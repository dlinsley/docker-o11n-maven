# Docker O11N Maven
Maven based Docker image for building VMware vRealize Orchestrator packages and potentially Plugins.

Built container can build vRO packages in maven offline mode. Suitable for Concourse Piplines.

## To Build:
``` bash
docker build -t o11n-maven:<vRO version> --build-arg REPO_URL=http://<vRO Appliance>:8280/vco-repo .
```

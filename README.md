## Wireguard client with ssh server inside docker container

[![Build Status](https://drone.andrey.im/api/badges/shad/wireguard-client-with-ssh/status.svg?ref=refs/heads/master)](https://drone.andrey.im/shad/wireguard-client-with-ssh)

[Docker Hub Link](https://hub.docker.com/r/andrey0001/wireguard-client-with-ssh)

Use it to start container with simple ssh-server. Public key should be provided as github username (GUSER). Wireguard config should be provided as URL (CONFIG_URL)

#### Example RUN
```bash
docker run -it \
   -e GUSER=andrey0001 \
   -e CONFIG_URL="https://andrey.org/alpine-test-wireguard-config.conf" \
   --privileged  \
   --name wg-ssh \
   --hostname wg-ssh \
   -d reg.andrey.org/wireguard-client-with-ssh
```

#### Environment variables
```
GUSER - guthub username to get public ssh-key 
CONFIG_URL - url of wireguard client config 
```
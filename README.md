## Wireguard client with ssh server inside docker container

Use it to start container with simple ssh-server. Public key should be provided as github username (GUSER). Wireguard config should be provided as URL (CONFIG_URL)

#### Example RUN
```bash
docker run -it -e GUSER=andrey0001 -e CONFIG_URL="https://andrey.org/alpine-test-wireguard-config.conf" --cap-add NET_ADMIN --name wg-ssh --hostname wg-ssh -d reg.andrey.org/wireguard-client-with-ssh
```

#### Environment variables
```
GUSER - guthub username to get public ssh-key 
CONFIG_URL - url of wireguard client config 
```
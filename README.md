#### RUN
```bash
docker run -it -e GUSER=andrey0001 -e CONFIG_URL="https://andrey.org/alpine-test.conf" --cap-add NET_ADMIN --name wgdnl --hostname wgdnl -d reg.andrey.org/alpine-ssh-wg:dnl
```

#### Env
```
GUSER - guthub username to get public ssh-key 
CONFIG_URL - url of wireguard client config 
```

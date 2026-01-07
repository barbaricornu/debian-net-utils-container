# Network utils Docker


## Getting started

### Run docker with host network
```
$ docker run --rm -it --network=host barbaricornu/debian-net-utils:latest
```
### Run docker with mynetwork
```
$ docker run --rm -it --network=mynet barbaricornu/debian-net-utils:latest
```
### Run docker with default network
```
$ docker run --rm -it barbaricornu/debian-net-utils:latest
```
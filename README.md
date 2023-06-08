# OpenEMS

https://openems.github.io/openems.io/openems/latest/gettingstarted.html

Running OpenEMS ecosystem in docker (with some simulation enabled)

# Docker

## Build

Enter the following commands in their respective folders.

```
cd openems-backend
./downloadBackend.sh
docker build -t openems-backend .
```

```
cd openems-edge
./downloadEdge.sh
docker build -t openems-edge .
```

```
cd openems-ui
docker build -f backend.Dockerfile -t openems-ui-backend .
docker build -f edge.Dockerfile -t openems-ui-edge .
```

## Run

`docker-compose up --force-recreate`

# OpenEMS Edge
## Apache Felix Web Console Configuration 
http://localhost:8080/system/console/configMgr

## UI
http://localhost:4201


# OpenEMS backend
## Apache Felix Web Console Configuration 
http://localhost:8079/system/console/configMgr

## UI
http://localhost:4202

### Useful links
Simulate OCPP connection:
https://simplesimulator.consolinno-it.de/

Simply point it at `ws://localhost:8887`
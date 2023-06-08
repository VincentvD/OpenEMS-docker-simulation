# OpenEMS practical info

https://openems.github.io/openems.io/openems/latest/gettingstarted.html

# Docker

## Build

Enter the following commands in their respective folders.

`./downloadBackend.sh`
`docker build -t openems-backend .`

`./downloadEdge.sh`
`docker build -t openems-edge .`

`docker build -f backend.Dockerfile -t openems-ui-backend .`

`docker build -f edge.Dockerfile -t openems-ui-edge .`

## Run

`docker-compose up`

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

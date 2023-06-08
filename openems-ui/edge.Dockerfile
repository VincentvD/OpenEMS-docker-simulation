FROM node:16-alpine as build-stage

RUN apk update && apk add git
RUN git clone --branch '2023.6.0' https://github.com/OpenEMS/openems.git

WORKDIR /openems/ui

RUN npm i -g  @angular/cli
RUN npm install
RUN ng build -c "openems,openems-edge-dev"

# ---------------------------------------------

FROM nginx:latest
COPY --from=build-stage /openems/ui/target /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

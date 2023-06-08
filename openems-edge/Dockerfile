FROM openjdk:17-slim
RUN mkdir -p /opt/openems-edge
WORKDIR /opt/openems-edge
COPY openems-edge.jar ./
COPY config.d ./config.d
USER root
CMD ["java", "-jar", "-Dopenems.data.dir=/var/lib/openems/", "-Dfelix.cm.dir=/opt/openems-edge/config.d", "-Djava.util.concurrent.ForkJoinPool.common.parallelism=100", "/opt/openems-edge/openems-edge.jar"]
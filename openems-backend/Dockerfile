FROM openjdk:17-slim
RUN mkdir -p /opt/openems-backend
WORKDIR /opt/openems-backend
COPY openems-backend.jar ./
COPY config.d ./config.d
USER root
CMD ["java", "-jar", "-XX:+ExitOnOutOfMemoryError", "-Dopenems.data.dir=/var/lib/openems/", "-Dfelix.cm.dir=/opt/openems-backend/config.d", "-Djava.util.concurrent.ForkJoinPool.common.parallelism=100", "/opt/openems-backend/openems-backend.jar"]
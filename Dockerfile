FROM docker.elastic.co/apm/apm-server:7.8.1
COPY apm-server.docker.yml /usr/share/apm-server/apm-server.yml
USER root
RUN chown root:apm-server /usr/share/apm-server/apm-server.yml
USER apm-server

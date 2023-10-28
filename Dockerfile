FROM openjdk:8

ENV DIGDAG_VERSION latest

RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag

COPY config/server.properties /etc/digdag/

WORKDIR /workspace

ENTRYPOINT ["java", "-jar", "/usr/local/bin/digdag", "server", "--config", "/etc/digdag/server.properties"]

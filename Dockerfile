FROM openjdk:8

ENV DIGDAG_VERSION latest

WORKDIR /workspace

RUN curl -o /usr/local/bin/digdag --create-dirs -L "https://dl.digdag.io/digdag-${DIGDAG_VERSION}" && \
    chmod +x /usr/local/bin/digdag

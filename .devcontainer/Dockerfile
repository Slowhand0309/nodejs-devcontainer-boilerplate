FROM node:22.17.0-slim
LABEL maintainer="Slowhand0309"

# syntax=docker/dockerfile:1.7
USER root

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt \
    apt-get update && \
    apt-get install -y --no-install-recommends sudo vim ca-certificates && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/src/node_modules /home/node/.claude && \
  chown -R node:node /usr/src/node_modules /home/node/.claude

USER node
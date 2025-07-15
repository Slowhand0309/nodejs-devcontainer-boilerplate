#!/bin/sh

# rename -p xxxx to your project name
docker compose -p nodejs-devcontainer -f .devcontainer/compose.yaml down

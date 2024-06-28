#!/bin/sh

# rename -p xxxx to your project name
docker compose -p nodejs_devcontainer -f .devcontainer/compose.yaml down

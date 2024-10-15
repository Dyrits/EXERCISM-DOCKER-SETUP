#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
  export "$(cat ./.env | xargs)"
fi

# Build the image
docker build -t exercism:3.5.2 ./

# Run the container with the environment variables and chain the commands
docker run -it --rm --env-file .env -v "$(pwd)":/root/exercism exercism:3.5.2 /bin/sh -c "exercism configure --token=$EXERCISM_TOKEN --workspace=/root/exercism && cd /root/exercism && /bin/sh"
# Exercism Docker Setup

This repository contains a Docker setup for running the Exercism CLI tool. It includes a `Dockerfile` to build the Docker image and a script to run the container with the necessary configuration.

> Why ? The idea is to have a clean and isolated environment to run the Exercism CLI tool without installing it on your system. It also allows you to run the tool on any system that has Docker installed.

## Prerequisites

- Docker installed on your system
- An Exercism API token

## Setup

1. Clone the repository:
 ```sh
 git clone git@github.com:Dyrits/EXERCISM-DOCKER-SETUP.git ./exercism
 cd ./exercism
 ```

2. Create a `.env` file in the root directory with your Exercism token:
 ```sh
 echo "EXERCISM_TOKEN=<YOUR_EXERCISM_TOKEN>" >  .env
 ```

3. Build the image, run the container and open the shell (from the container):
 ```sh 
 sh ./exercism.sh
 ```

An alternative way is to use Docker Compose to build the image, run the container and open the shell (from the container):
```sh
docker-compose run exercism
```

## Usage

From the container shell, you can run the Exercism CLI tool from inside the container. For example, to download the exercises for a specific track, you can run:
```sh
exercism download --exercise=<exercise> --track=<track>
```

It will download the exercise files to the `/exercism` directory inside the container which is mounted to the current `./` directory.

> Note : The container doesn't contain the different language runtimes. You need to install them on your system to run the tests for the exercises locally (outside the container).
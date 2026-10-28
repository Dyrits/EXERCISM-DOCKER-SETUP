# EXERCISM-DOCKER-SETUP

## About The Project

A utility project: a Docker setup for running the Exercism CLI tool in a clean, isolated environment, without installing it on the host system. It includes a Dockerfile to build the image (the CLI is downloaded from the Exercism releases) and a Docker Compose file to run the container with the necessary configuration.

### Built With

- Docker
- Docker Compose

## Getting Started

### Prerequisites

- Docker installed on your system
- An Exercism API token

### Setup

Clone the repository:

```sh
git clone git@github.com:Dyrits/EXERCISM-DOCKER-SETUP.git ./exercism
cd ./exercism
```

Create a `.env` file in the root directory with your Exercism token (see `.env.example`):

```sh
echo "EXERCISM_TOKEN=<YOUR_EXERCISM_TOKEN>" > .env
```

Build the image and run the container using Docker Compose:

```sh
docker-compose run exercism
```

It will directly put you inside the container (in a shell) with the Exercism CLI tool installed.

### Usage

From the container shell, you can run the Exercism CLI tool. For example, to download the exercises for a specific track:

```sh
exercism download --exercise=<exercise> --track=<track>
```

It will download the exercise files to the `/exercism` directory inside the container, which is mounted to the current `./` directory.

Note (from the original README): the container does not contain the different language runtimes; you need to install them on your system to run the tests for the exercises locally (outside the container).

## License

No license file is present in this repository.

## Contact

Dyrits - https://github.com/Dyrits

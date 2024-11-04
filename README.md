# Docker Newman Image

## Overview
This repository contains a custom Docker image for running Postman Newman collections. The image is based on `postman/newman:5.3.1-alpine` and includes additional configurations and utilities to enhance its functionality.

## Features
- **Base Image**: `postman/newman:5.3.1-alpine`
- **Updated Packages**: All packages are updated to the latest versions.
- **Global Node Module**: Installs `newman-reporter-csvallinone` globally.
- **Additional Packages**: Includes `curl`, `zip`, and `ping` for extended capabilities.
- **Custom DNS Configuration**: Sets DNS to `8.8.8.8` and `1.1.1.1` for reliable name resolution.
- **Environment Variables**: Sets `NODE_PATH` to `/usr/local/lib/node_modules`.
- **Working Directory**: `/etc/newman`
- **Entry Point**: Runs `newman` as the default entry point.

## Prerequisites
- Docker installed on your system.
- A Postman collection file (`collection.json`) to run.

## Installation and Usage
### Build the Docker Image
Clone this repository and navigate to the project directory:
```bash
git clone https://github.com/username/docker-newman-image.git
cd docker-newman-image
```
Build the Docker image:
docker build -t custom-newman:latest .

Run a Collection
Place your collection.json in a local directory (e.g., ~/newman-collections) and use the following command to run it:
`docker run -it --rm -v ~/newman-collections:/etc/newman custom-newman:latest run /etc/newman/collection.json`

Customizations
To modify the packages or Node modules installed, update the Dockerfile accordingly.
Ensure that the collection.json path matches your use case.
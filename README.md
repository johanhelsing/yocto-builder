# Docker image for building yocto

It's probably possible to edit the `FROM` line in the `Dockerfile` to base off
another Ubuntu version.

## Usage

### Build docker image

    docker build -t yocto-builder .

### Start a container from the image

    docker run -ti -v /home/youruser/build/:/home/build yocto-builder

Then clone and build poky as usual.

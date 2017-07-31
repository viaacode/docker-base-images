# docker-base-images
Docker base images containing VIAA-specific timezone, locale, repository and
proxy configuration

These images are customized versions of the standard docker.io images. They
contain settings that are specific for building and running containers in the
VIAA environment.

This allows to:
- create portable build scripts (not containing VIAA implementation details)
- use third party build scripts without modification in the VIAA environment.

Transparant usage of these images by the build scripts is achieved by tagging
them appropriately,

### Example
The debian base image is built as follows:
```bash
$ docker pull docker.io/debian:jessie       # pull in base image from docker hub
$ docker build -t debian:jessie debian      # costumize and tag it as debian:jessie
$ docker tag -f debian:jessie debian:latest # move 'latest' tag to our customized image
```
which results in:
```bash
$ docker images
REPOSITORY          TAG        IMAGE ID        CREATED             VIRTUAL SIZE
debian              jessie     8ed8b1d08bca    44 seconds ago      143.1 MB
debian              latest     8ed8b1d08bca    44 seconds ago      143.1 MB
docker.io/debian    jessie     0e3ae4e5f143    6 days ago          123.4 MB
```

Build scripts staring with `FROM debian:jessie` or `FROM debian:latest` will now
use the customized image


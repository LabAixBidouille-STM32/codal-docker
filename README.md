# codal-docker[![Build Status](https://travis-ci.org/LabAixBidouille-STM32/codal-docker.svg?branch=master)](https://travis-ci.org/LabAixBidouille-STM32/codal-docker)

This repository contains a dockerfile that specifies a dependency on the codal-toolchains docker-image. It allows one to specify a github personal access token via the docker build command:

```
 docker build . --build-arg AUTH_TOKEN=<your personal authorisation token for github>
```

This means that any cloning of dependencies will happen using the token provided.

You can then build codal-programs using:

```
sudo docker run -i -t <uuid-returned from dockerbuild> /bin/bash
```

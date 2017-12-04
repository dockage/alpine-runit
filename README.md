# alpine-runit [![Docker Pulls](https://img.shields.io/docker/pulls/dockage/alpine-runit.svg)](https://hub.docker.com/r/dockage/alpine-runit/) [![Docker Stars](https://img.shields.io/docker/stars/dockage/alpine-runit.svg?style=flat)](https://hub.docker.com/r/dockage/alpine-runit/) [![MicroBadger](https://images.microbadger.com/badges/image/dockage/alpine-runit:3.7.svg)](https://microbadger.com/images/dockage/alpine-runit:3.7) [![Docker Build Status](https://img.shields.io/docker/build/dockage/alpine-runit.svg)](https://hub.docker.com/r/dockage/alpine-runit/) [![Docker Automated build](https://img.shields.io/docker/automated/dockage/alpine-runit.svg)](https://hub.docker.com/r/dockage/alpine-runit/)
[runit](http://smarden.org/runit) is an init scheme for Unix-like operating systems that initializes, [supervises](https://en.wikipedia.org/wiki/Process_supervision), and ends processes throughout the operating system. Runit is a reimplementation of the [daemontools](https://en.wikipedia.org/wiki/Daemontools) process supervision toolkit that runs on the Linux, Mac OS X, *BSD, and Solaris operating systems. Runit features parallelization of the start up of system services, which can speed up the boot time of the operating system.


## Contributing

If you find this image useful here's how you can help:

- Send a pull request with your awesome features and bug fixes
- Help users resolve their [issues](../../issues?q=is%3Aopen+is%3Aissue).

## Issues

Before reporting your issue please try updating Docker to the latest version and check if it resolves the issue. Refer to the Docker [installation guide](https://docs.docker.com/installation) for instructions.

SELinux users should try disabling SELinux using the command `setenforce 0` to see if it resolves the issue.

If the above recommendations do not help then [report your issue](../../issues/new) along with the following information:

- Output of the `docker vers6` and `docker info` commands
- The `docker run` command or `docker-compose.yml` used to start the image. Mask out the sensitive bits.
- Please state if you are using [Boot2Docker](http://www.boot2docker.io), [VirtualBox](https://www.virtualbox.org), etc.

# Getting started

## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/dockage/alpine-runit) and is the recommended method of installation.

> **Note**: Builds are also available on [Quay.io](https://quay.io/repository/dockage/alpine-runit)

```bash
docker pull dockage/alpine-runit:3.7
```

Alternatively you can build the image yourself.

```bash
docker build -t dockage/alpine-runit github.com/dockage/alpine-runit
```

## Shell Access

For debugging and maintenance purposes you may want access the containers shell. If you are using Docker version `1.3.0` or higher you can access a running containers shell by starting `bash` using `docker exec`:

```bash
docker exec -it alpine-runit sh
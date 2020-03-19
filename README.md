# Jitsi Docker automatic build

## General

This repository daily build Jitsi releases (unstable, testing, stable) with Docker tags.

Public Jitsi instance (stable images) : https://jitsi.cheezecake.ovh

## CI/CD status
[![pipeline status](https://gitlab.com/quadeare/jitsi-docker-build/badges/master/pipeline.svg)](https://gitlab.com/quadeare/jitsi-docker-build/-/commits/master)

## Docker images


| Jitsi packages    | Docker images                                                   |
|-------------------|-----------------------------------------------------------------|
| Jitsi Videobridge | https://hub.docker.com/repository/docker/quadeare/jitsi-jvb     |
| Jitsi Prosody     | https://hub.docker.com/repository/docker/quadeare/jitsi-prosody |
| Jitsi Web         | https://hub.docker.com/repository/docker/quadeare/jitsi-web     |
| Jitsi Jicofo      | https://hub.docker.com/repository/docker/quadeare/jitsi-jicofo  |

## Install

### Docker compose

Official documentation : https://github.com/jitsi/docker-jitsi-meet

### Kubernetes (Helm)

Non official repository : https://github.com/quadeare/helm-jitsi
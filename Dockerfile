FROM elifarley/docker-alpine-glibc
MAINTAINER Elifarley <elifarley@gmail.com>
ENV \
  BASE_IMAGE=elifarley/docker-alpine-glibc \
  JAVA_VERSION=8 \
  JAVA_UPDATE=92 \
  JAVA_BUILD=14 \
  JAVA_HOME="/usr/lib/jvm/default-jvm"

RUN \
  xinstall install jdk-8-nodesktop && \
  xinstall save-image-info && \
  xinstall cleanup

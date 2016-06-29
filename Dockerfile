FROM elifarley/docker-alpine-glibc
MAINTAINER Elifarley <elifarley@gmail.com>
ENV \
  BASE_IMAGE=elifarley/docker-alpine-glibc \
  JAVA_VERSION=8 \
  JAVA_UPDATE=92 \
  JAVA_BUILD=14

RUN apk --update add ca-certificates curl && \
  curl -fsSL https://raw.githubusercontent.com/elifarley/cross-installer/master/install.sh | sh && \
  xinstall save-image-info && \
  xinstall add jdk-8-nodesktop && \
  xinstall cleanup

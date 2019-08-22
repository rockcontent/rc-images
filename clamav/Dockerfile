FROM ubuntu:disco

ARG APP_DIR=/usr/src/app

RUN set -ex \
  && ln -sf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  && apt-get update -y \
  && apt-get install -y \
  clamav \
  curl \
  groff \
  jq \
  awscli \
  vim \
  && freshclam

COPY .vimrc /root/

WORKDIR $APP_DIR

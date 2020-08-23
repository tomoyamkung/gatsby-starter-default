FROM node:12.18.3-alpine3.12

#
MAINTAINER tomoyamkung <tsuyoshi.sugiyama@gmail.com>

#
RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
        bash \
        git
RUN yarn global add gatsby-cli

#
ENV USER dev
ENV HOME /home/${USER}
ENV WORK_PRODUCT_HOME ${HOME}/gatsby-starter-default
ENV SHELL /bin/bash

#
RUN echo 'root:root' | chpasswd
RUN adduser -S dev \
    && echo 'dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers \
    && echo 'dev:12345678' | chpasswd

#
USER ${USER}
WORKDIR ${WORK_PRODUCT_HOME}

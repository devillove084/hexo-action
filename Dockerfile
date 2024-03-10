FROM node:21.7.0-bullseye-slim

LABEL version="1.0.4"
LABEL repository="https://github.com/devillove084/hexo-action"
LABEL homepage="https://devillove084.github.io"
LABEL maintainer="devillove084"

COPY entrypoint.sh /entrypoint.sh
COPY sync_deploy_history.js /sync_deploy_history.js

RUN apt-get update > /dev/null && \
    apt-get install -y git openssh-client > /dev/null ; \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
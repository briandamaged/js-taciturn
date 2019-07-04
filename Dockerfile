FROM node:12.5.0 AS development
VOLUME "/usr/src/app"
WORKDIR /usr/src/app
USER node

CMD bash

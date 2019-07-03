FROM node:12.5.0 AS development
ENV NODE_ENV production
VOLUME "/usr/src/app"
WORKDIR /usr/src/app
EXPOSE 3000
USER node
CMD bash


FROM node:10.13-alpine
ENV NODE_ENV production
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD npm start
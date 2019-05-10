FROM node:latest
RUN npm cache clean --force
RUN npm i -g npm
RUN npm i -g rimraf
RUN npm i -g @angular/cli

COPY package.json /angular/
COPY angular.json /angular/
COPY tsconfig.json /angular/
COPY src /angular/src

WORKDIR /angular
RUN npm i
RUN npm run build
RUN cp -r /angular/dist /dist


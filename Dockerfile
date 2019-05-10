FROM node:latest
RUN npm cache clean --force
RUN npm i -g npm
RUN npm i -g rimraf
RUN npm i -g @angular/cli
WORKDIR /app
ADD package.json /app/
ADD angular.json /app/
ADD tsconfig.json /app/
ADD src /app/src

#
RUN npm i

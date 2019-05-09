FROM node:latest
RUN npm i -g rimraf
RUN npm i -g @angular/cli
WORKDIR /app
ADD app/package.json /app/package.json
ADD app /app
RUN npm cache clean --force
RUN npm i

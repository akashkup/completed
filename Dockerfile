FROM node:16-alpine AS build
WORKDIR /react-app
COPY ./package.json /react-app
RUN npm install -g npm@7.19.1
COPY . .
EXPOSE 3000
# Start the app
CMD [ "npm", "start" ]

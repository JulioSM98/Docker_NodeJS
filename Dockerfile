FROM node:16-alpine
RUN mkdir -p /app
WORKDIR /app
COPY  ./app/package.json /app/
RUN npm install
RUN npm install -g nodemon
COPY ./app /app
CMD [ "npm","start" ]


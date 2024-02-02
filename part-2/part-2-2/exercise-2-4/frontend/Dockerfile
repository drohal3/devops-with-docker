FROM node:16

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

RUN npm install

RUN REACT_APP_BACKEND_URL=http://127.0.0.1:8080 npm run build

RUN npm install -g serve

CMD serve -s -l 5000 build
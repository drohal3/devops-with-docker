FROM node:21

WORKDIR /usr/src/app

COPY . .

EXPOSE 4173

# Change npm ci to npm install since we are going to be in development mode
RUN npm install

RUN npm run build

RUN npm install serve -g

# development mode! Build before production!
CMD serve -s dist
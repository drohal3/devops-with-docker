FROM node:16

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

RUN npm install

RUN REACT_APP_BACKEND_URL=http://127.0.0.1:80/api npm run build

RUN npm install -g serve

# create the appuser
RUN groupadd appuser && useradd -m appuser -g appuser

# change the owner of current dir to appuser
RUN chown appuser .

# now we can change the user
USER appuser

CMD serve -s -l 5000 build
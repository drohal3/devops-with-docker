FROM node:16

WORKDIR /usr/src/app

COPY ./example-frontend .

EXPOSE 5000

RUN npm install \
    && REACT_APP_BACKEND_URL=http://127.0.0.1:80/api npm run build \
    && npm install -g serve \
    && groupadd appuser && useradd -m appuser -g appuser \
    && chown appuser .

# now we can change the user
USER appuser

CMD serve -s -l 5000 build
FROM node:12-alpine

RUN mkdir -p /var/lib/pm2
RUN npm i -g pm2
WORKDIR /var/lib/pm2

COPY ./index.js /var/lib/pm2/index.js

EXPOSE 8080

CMD ["pm2-runtime", "/var/lib/pm2/index.js"]

FROM node:8.4.0-alpine

USER root

RUN apk add --update --no-cache bash

RUN yarn global add --prod --no-lockfile laravel-echo-server \
	&& yarn cache clean
	
COPY private-channel.js /usr/local/share/.config/yarn/global/node_modules/laravel-echo-server/dist/channels/private-channel.js

WORKDIR /app

CMD ["laravel-echo-server", "start"]

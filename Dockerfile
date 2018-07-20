FROM node:8.4.0-alpine

USER root

RUN apk add --update --no-cache bash

RUN yarn global add --prod --no-lockfile multi-tenant-laravel-echo-server@1.4.1 \
	&& yarn cache clean
	
WORKDIR /app

CMD ["laravel-echo-server", "start"]

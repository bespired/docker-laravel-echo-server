FROM node:8.4.0-alpine

USER root

RUN apk add --update --no-cache bash

RUN yarn global add --prod --no-lockfile multi-tenant-laravel-echo-server@1.3.9 \
	&& yarn cache clean
	
WORKDIR /app

CMD ["laravel-echo-server", "start"]

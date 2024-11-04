FROM postman/newman:5.3.1-alpine

RUN echo -e "nameserver 8.8.8.8\nnameserver 1.1.1.1" > /etc/apk/resolv.conf && \
    apk update --repository http://dl-cdn.alpinelinux.org/alpine/v3.15/main && apk upgrade

RUN npm install -g newman-reporter-csvallinone

RUN apk add --no-cache curl zip iputils

RUN npm cache clean --force && \
    rm -rf /var/cache/apk/*

ENV NODE_PATH=/usr/local/lib/node_modules

WORKDIR /etc/newman

ENTRYPOINT ["newman"]

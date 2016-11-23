FROM node:7-alpine
MAINTAINER Buddy <buddy.yao@trantect.com>

RUN apk add --no-cache git \
    && cd / \
    && git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install

RUN ln -s /elasticsearch-head/node_modules/grunt/bin/grunt /usr/local/bin/grunt

WORKDIR /elasticsearch-head

CMD ["grunt", "server"]
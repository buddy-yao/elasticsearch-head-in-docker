FROM node:7-alpine
MAINTAINER Buddy <buddy.yao@trantect.com>

RUN set -ex \
    && apk add --no-cache git \
    && cd / \
    && git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install

WORKDIR /elasticsearch-head

CMD ["/elasticsearch-head/node_modules/grunt/bin/grunt", "--gruntfile", "/elasticsearch-head/Gruntfile.js", "server"]
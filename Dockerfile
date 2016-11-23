FROM node:7-alpine
MAINTAINER Buddy <buddy.yao@trantect.com>

RUN set -ex \
    && apk add --no-cache git \
    && cd / \
    && git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install \
    && npm install -g grunt-cli

WORKDIR /elasticsearch-head

CMD ["grunt", "server"]
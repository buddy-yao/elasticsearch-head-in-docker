FROM node:7-alpine
MAINTAINER Buddy <buddy.yao@trantect.com>

RUN apk add --no-cache git \
    && cd / \
    && git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install
    
WORKDIR /elasticsearch-head

CMD ["/elasticsearch-head/node_modules/grunt/bin/grunt", "server"]
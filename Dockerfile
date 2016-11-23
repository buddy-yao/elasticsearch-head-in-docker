FROM node
MAINTAINER Buddy <buddy.yao@trantect.com>

RUN set -ex \
    && apt-get install -y git \
    && cd / \
    && git clone git://github.com/mobz/elasticsearch-head.git \
    && cd elasticsearch-head \
    && npm install \
    && npm install -g grunt-cli

WORKDIR /elasticsearch-head

CMD ["grunt", "--gruntfile", "/elasticsearch-head/Gruntfile.js", "server"]
FROM alpine:3.12

RUN apk --no-cache add curl jsonnet git && curl -Lo /usr/bin/tk https://github.com/grafana/tanka/releases/latest/download/tk-linux-amd64 && curl -Lo /usr/bin/jb https://github.com/jsonnet-bundler/jsonnet-bundler/releases/latest/download/jb-linux-amd64 && chmod +x /usr/bin/tk && chmod +x /usr/bin/jb

VOLUME /work

WORKDIR /work

ADD entrypoint.sh /usr/bin/entrypoint.sh 

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

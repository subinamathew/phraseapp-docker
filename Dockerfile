FROM alpine

RUN set -ex \
    && apk add --no-cache ca-certificates \
    git \
    jq \
    util-linux

RUN set -ex \
        && apk add --no-cache --virtual .phraseapp-build \
                curl \
	&& VERSION=`curl https://api.github.com/repos/phrase/phraseapp-client/releases/latest | jq -r '.tag_name'`
        && curl -fSL -o /usr/local/bin/phraseapp "https://github.com/phrase/phraseapp-client/releases/download/${VERSION}/phraseapp_linux_amd64" \
        && chmod +x /usr/local/bin/phraseapp \
	&& apk del .phraseapp-build

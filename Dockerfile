FROM alpine:latest

LABEL version="1.0.0"
LABEL repository="http://github.com/zlatanpham/rebase"
LABEL homepage="http://github.com/zlatanpham/rebase"
LABEL maintainer="Zlatan Pham"
LABEL "com.github.actions.name"="Target Rebase"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="purple"

RUN apk --no-cache add jq bash curl git git-lfs

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

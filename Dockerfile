FROM alpine:3.6

LABEL maintainer="Jonathan Doherty" \
      git="2.13.0"

RUN apk add --no-cache git

COPY .gitconfig /root/

ENTRYPOINT ["git"]
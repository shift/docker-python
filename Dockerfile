FROM alpine:3.3

RUN apk add --update python python-dev py-pip libpq ca-certificates netcat-openbsd \
  && pip install bumpversion \
  && apk upgrade \
  && apk del --purge tar xz curl && rm -Rf /var/cache/apk/*

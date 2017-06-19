FROM alpine:3.6
MAINTAINER Serge Gebhardt <serge.gebhardt@gmail.com>

ENV HUGO_VERSION 0.23
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit
ENV HUGO_TARBALL ${HUGO_BINARY}.tar.gz

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} /usr/local/${HUGO_BINARY}/
RUN ln -s /usr/local/${HUGO_BINARY}/hugo /usr/local/bin/hugo

VOLUME /src
WORKDIR /src

EXPOSE 1313
ENTRYPOINT ["hugo"]
CMD ["version"]

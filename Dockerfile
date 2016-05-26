FROM alpine:3.3
MAINTAINER Serge Gebhardt <serge.gebhardt@gmail.com>

ENV HUGO_VERSION 0.15
ENV HUGO_BINARY hugo_${HUGO_VERSION}_linux_amd64
ENV HUGO_TARBALL ${HUGO_BINARY}.tar.gz

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_TARBALL} /usr/local/
RUN tar xzf /usr/local/${HUGO_TARBALL} -C /usr/local/ \
	&& ln -s /usr/local/${HUGO_BINARY}/${HUGO_BINARY} /usr/local/bin/hugo \
	&& rm /usr/local/${HUGO_TARBALL}

EXPOSE 1313
CMD hugo version

FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.7

RUN gem install accesslint-ci --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["accesslint-ci"]
CMD ["--help"]

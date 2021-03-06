FROM ruby:2.6.0-alpine

LABEL maintainer="samuel.d.darwin@gmail.com"

ARG rails_env="development"
ARG build_without=""

ENV SECRET_KEY_BASE=dumb

RUN apk update \
  && apk add \
    openssl \
    tar \
    build-base \
    tzdata \
    postgresql-dev \
    postgresql-client \
    nodejs \
  && wget https://yarnpkg.com/latest.tar.gz \
  && mkdir -p /opt/yarn \
  && tar -xf latest.tar.gz -C /opt/yarn --strip 1 \
  && mkdir -p /var/app

ENV PATH="$PATH:/opt/yarn/bin" BUNDLE_PATH="/gems" BUNDLE_JOBS=2 RAILS_ENV=${rails_env} BUNDLE_WITHOUT=${bundle_without}

COPY . /var/app
WORKDIR /var/app

RUN bundle install && yarn && bundle exec rake assets:precompile
CMD bin/rails s -b 0.0.0.0

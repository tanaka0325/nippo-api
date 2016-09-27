FROM ruby:latest

ENV APP_ROOT /usr/src/nippo
WORKDIR $APP_ROOT

RUN apt-get update -qq && \
    apt-get install -y nodejs \
                     mysql-client \
                     postgresql-client \
                     sqlite3 \
                     --no-install-recommends

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT

RUN echo 'gem: --no-document' >> ~/.gemrc && \
    cp ~/.gemrc /etc/gemrc && \
    chmod uog+r /etc/gemrc && \
    bundle config --global build.nokogiri --use-system-libraries && \
    bundle config --global jobs 4 && \
    bundle install && \
    rm -rf ~/.gem

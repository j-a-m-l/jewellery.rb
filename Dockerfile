FROM ruby:2.2

VOLUME ["/geminabox"]

COPY Gemfile* ./

RUN bundle install

COPY config.ru ./

EXPOSE 9292

ENTRYPOINT ["rackup", "--host", "0.0.0.0"]

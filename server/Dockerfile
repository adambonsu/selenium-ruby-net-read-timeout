FROM ruby:2.6

RUN gem install bundler

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

COPY Gemfile Gemfile.lock ./

RUN bundle install

RUN mkdir /opt/bin

COPY . /opt/bin

EXPOSE 5000

CMD ["/opt/bin/entry_point.sh"]


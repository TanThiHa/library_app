FROM ruby:2.5
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /library_app
WORKDIR /library_app
ADD Gemfile /library_app/Gemfile
ADD Gemfile.lock /library_app/Gemfile.lock
RUN bundle install
ADD . /library_app
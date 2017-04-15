FROM ruby:2.3.3
MAINTAINER David Arevalo <jdaarevalo@gmail.com>

RUN apt-get update -qq  && apt-get install -y build-essential libpq-dev nodejs

RUN gem install bundler
RUN mkdir /my_budget
COPY Gemfile* /my_budget/

WORKDIR /my_budget
RUN bundle install
ADD . /my_budget

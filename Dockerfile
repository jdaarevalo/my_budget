FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /my_budget
WORKDIR /my_budget
ADD Gemfile /my_budget/Gemfile
ADD Gemfile.lock /my_budget/Gemfile.lock
RUN bundle install
ADD . /my_budget

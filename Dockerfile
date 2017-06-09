# ruby 2.3.3 image
FROM ruby:2.3.3

# make sure these packages are installed
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                      libpq-dev \
                      nodejs

# app specific
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install

ADD . /myapp

FROM ruby:3.0.2

ARG APP=rails-api
WORKDIR /opt/$APP

RUN gem install rails
ADD . ./

CMD bundle exec rails new $APP --api -m template.rb

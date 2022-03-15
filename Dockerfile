FROM ruby:2.6.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    default-mysql-client \
    nodejs \
    yarn 
WORKDIR /spring_web
COPY Gemfile Gemfile.lock /spring_web/
RUN gem install bundler:2.2.27 && bundle install




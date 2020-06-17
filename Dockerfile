FROM ruby:2.6.4

RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN apt-get update -qq && apt-get install -y nodejs yarn postgresql-client
ENV BUNDLE_PATH /mailers/.gems
ENV GEM_HOME /mailers/.gems

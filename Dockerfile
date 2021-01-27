FROM ruby:2.6.6-alpine
RUN apk update && apk add --no-cache openssh git make build-base libsodium postgresql-dev postgresql nodejs less yarn bash
ADD Gemfile /app/
ADD Gemfile.lock /app/
ADD package.json /app/
ADD yarn.lock /app/
WORKDIR /app
RUN bundle install -j 10
COPY . /app
RUN chmod +x /app/post-up.sh
CMD sh /app/post-up.sh
EXPOSE 3000

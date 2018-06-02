FROM ruby:2.5.1-alpine

RUN apk update && apk add build-base \
                          git \
                          nodejs \
                          postgresql-dev \
                          less

WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

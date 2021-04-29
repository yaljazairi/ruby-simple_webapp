# run:  docker build --tag yaljazairi/rubyapp .
#       docker run --name rubyapp -p 80:4567 yaljazairi/rubyapp     # to run docker-image on port 9292 run: docker run --name rubyapp -p 80:4567 yaljazairi/rubyapp
# check localhost in browser
#
# push: docker push yaljazairi/rubyapp

FROM ruby:2.6.7-alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

# As with any Ruby installation, you need dev tools to install gems with native extensions:
RUN apk update \
 && apk add --no-cache  \
    build-base  \
    ruby-dev

RUN gem install bundler
RUN bundle install

EXPOSE 4567

# CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]   # CMD looks the same like => bundle exec rackup --host 0.0.0.0 -p 4567
CMD ["rackup", "--host", "0.0.0.0", "-p", "4567"]

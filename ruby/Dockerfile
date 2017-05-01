FROM ruby

RUN gem install \
      awesome_print \
      colorize \
      pry pry-byebug \
      nokogiri \
      mechanize \
      rubocop

USER 1000:1000

CMD ["pry"]

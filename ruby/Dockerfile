FROM ruby

RUN gem install \
      awesome_print \
      colorize \
      mechanize \
      nokogiri \
      pry pry-byebug \
      rubocop \
      travis

RUN useradd -m -u 1000 ruby
WORKDIR /home/ruby
USER ruby

CMD ["pry"]

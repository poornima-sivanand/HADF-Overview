FROM jekyll/jekyll:3.8

COPY ./docs /srv/jekyll/

RUN gem install just-the-docs

EXPOSE 4000

CMD ["jekyll", "serve"]


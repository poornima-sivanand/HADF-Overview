FROM jekyll/jekyll:3.8

COPY ./docs /srv/jekyll/

RUN gem install just-the-docs

RUN sed 's/remote_theme/#remote_theme/' /srv/jekyll/_config.yml > /srv/jekyll/_config.yml && /
    sed 's/#theme/theme/' /srv/jekyll/_config.yml > /srv/jekyll/_config.yml 

RUN cat /srv/jekyll/_config.yml

EXPOSE 4000

CMD ["jekyll", "serve"]


FROM jekyll/jekyll:3.8

COPY ./docs /srv/jekyll/

RUN gem install just-the-docs

RUN sed -i 's/remote_theme/#remote_theme/ig' /srv/jekyll/_config.yml 

RUN sed -i 's/#theme/theme/ig' /srv/jekyll/_config.yml

RUN cat /srv/jekyll/_config.yml

EXPOSE 4000

CMD ["jekyll", "serve"]


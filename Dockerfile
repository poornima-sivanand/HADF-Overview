FROM jekyll/jekyll:3.8

COPY ./ /srv/jekyll/

RUN gem install just-the-docs

RUN sed -i 's/remote_theme/#remote_theme/' /srv/jekyll/ 35.183.40.109_config.yml

RUN sed -i 's/#theme/theme/' /srv/jekyll/docs/_config.yml

EXPOSE 4000

CMD ["jekyll", "serve"]


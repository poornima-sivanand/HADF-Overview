FROM jekyll/jekyll:3.8


COPY ./docs /srv/jekyll/

RUN gem install just-the-docs


EXPOSE 4000


CMD sed -i "s/remote_theme/#remote_theme/g" /srv/jekyll/_config.yml;  sed -i "s/#theme/theme/g" /srv/jekyll/_config.yml; jekyll serve


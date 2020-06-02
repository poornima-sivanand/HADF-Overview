FROM centos/nginx-112-centos7

USER 0

RUN mkdir -p /srv/jekyll

COPY ./docs /srv/jekyll/

WORKDIR /srv/jekyll

RUN yum update -y

RUN yum install -y ruby ruby-doc

RUN gem install bundler jekyll just-the docs

RUN gem install just-the-docs

RUN bundle install

RUN bundle exec jekyll build --config docs/_config.yml

USER 10001

EXPOSE 4000


CMD sed -i "s/remote_theme/#remote_theme/g" /srv/jekyll/_config.yml;  sed -i "s/#theme/theme/g" /srv/jekyll/_config.yml; jekyll serve


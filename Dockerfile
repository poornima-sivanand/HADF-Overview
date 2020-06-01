FROM ubuntu:latest

USER 0

COPY ./   /tmp/HADF-overview

RUN cd /tmp/HADF-overview && \
     ls && pwd && \
    apt -y update && \
    apt -y install ruby-full build-essential zlib1g-dev && \
    gem install bundler jekyll && \
    bundle install && \
    bundle exec jekyll serve --config docs/_config.yml

FROM ubuntu:latest

USER 0
RUN apt -y update && \
    apt -y install ruby && \
    gem install bundler jekyll && \
    bundle install && \
    bundle exec jekyll serve --config docs/_config.yml

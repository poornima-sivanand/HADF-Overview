FROM ubuntu:latest

USER 0
RUN ls -l 
RUN pwd
RUN apt -y update && \
    apt -y install ruby-full build-essential zlib1g-dev && \
    gem install bundler jekyll && \
    bundle install && \
    bundle exec jekyll serve --config docs/_config.yml

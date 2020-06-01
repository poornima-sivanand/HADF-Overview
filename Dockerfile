FROM ubuntu:latest

USER 0

RUN apt -y update && \
    apt -y install ruby-full build-essential zlib1g-dev git-core && \
    git clone https://github.com/poornima-sivanand/HADF-Overview.git && \
    cd HADF-Overview && \
    git checkout add-web-application-playbook && \
    gem install bundler jekyll && \
    bundle install && \
    bundle exec jekyll serve --config docs/_config.yml

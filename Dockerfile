FROM ubuntu:latest

USER 0

RUN apt -y update && \
    apt -y install ruby-full build-essential zlib1g-dev git-core && \
    gem install bundler jekyll 

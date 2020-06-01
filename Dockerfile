FROM ubuntu:latest

USER 0

RUN apt -y update && \
    git clone https://github.com/poornima-sivanand/HADF-Overview.git && \
    cd HADF-Overview && \
    git checkout add-web-application-playbook && \
    apt -y install ruby-full build-essential zlib1g-dev git-core && \
    gem install bundler jekyll && \
    bundle install
    
EXPOSE 4000

CMD ["bundle","exec","jekyll", "serve", "--config", "docs/_config.yml"]


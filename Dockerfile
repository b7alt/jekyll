FROM ubuntu
MAINTAINER http://www.github.com/b7alt/ by b7alt

ENV DEBIAN_FRONTEND noninteractive
RUN \
  apt-get update && \
  apt-get -y install \
    build-essential \
    python \
    ruby \
    ruby-dev \
    nodejs \
    git

RUN gem install jekyll --no-ri --no-rdoc
RUN gem install jekyll-import --no-ri --no-rdoc

CMD ["bash"]

EXPOSE 4000

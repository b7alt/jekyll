FROM ubuntu
MAINTAINER http://www.github.com/b7alt/ by b7alt

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential \
    python \
    ruby \
    ruby-dev \
    nodejs

RUN gem install jekyll --no-ri --no-rdoc
RUN gem install jekyll-import --no-ri --no-rdoc

CMD ["bash"]

EXPOSE 4000

FROM debian
MAINTAINER gdubois/debian-ci-test<gwendoline.d2107@gmail.com>
ENV ANGULAR_CLI_VERSION="7.3.9"

RUN apt-get update

RUN apt-get install -y curl

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash

RUN apt-get install -y nodejs

RUN echo ${ANGULAR_CLI_VERSION}

RUN npm install -g @angular/cli@7.3.9


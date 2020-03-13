FROM debian
MAINTAINER moi/demo <moi@moi.fr>

RUN apt-get update
RUN echo "bouuuu"
# update 
RUN apt-get upgrade
# install curl 
RUN apt-get install -y curl
# get install  script and pass it to execute: 
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
# and install node 
RUN apt-get install -y nodejs
# confirm that it was successful 
RUN node -v
# npm installs automatically 
RUN npm -v
#install angular
RUN npm install -g @angular/cli@7.3.9
RUN ng new projetAngular

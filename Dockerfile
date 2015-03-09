# Docker version 1.4.x, build d84a070
#
#   To build: sudo docker build --force-rm=true -t visualjeff/ember-cli:0.2.X .
#   To tag: sudo docker tag CONTAINERID visualjeff/ember-cli:latest
#   To run: sudo docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash
FROM    debian:latest
ENV DEBIAN_FRONTEND noninteractive

# Update and install basics
RUN apt-get update && apt-get install -y git curl nano vim

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

# Install NVM
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc
RUN /bin/bash -c '. /.nvm/nvm.sh && \
    nvm install v1.5.0 && \
    nvm use v1.5.0 && \
    nvm alias default v1.5.0'
    
#Install ember-cli    
RUN npm install -g ember-cli@0.2.0 bower

#Expose ports
EXPOSE 4200 35729

# Define default command.
CMD ["bash"]

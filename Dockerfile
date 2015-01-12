# Docker version 1.3.2, build d84a070
#
#   To build: sudo docker build --force-rm=true -t visualjeff/ember-cli:0.1.X .
#   To tag: sudo docker tag CONTAINERID visualjeff/ember-cli:latest
#   To run: sudo docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash
FROM    ubuntu:14.04

# Update and install basics
RUN apt-get update && apt-get install -y git curl nano

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get install -y nodejs

# Install NVM
RUN git clone https://github.com/creationix/nvm.git /.nvm
RUN echo ". /.nvm/nvm.sh" >> /etc/bash.bashrc
RUN /bin/bash -c '. /.nvm/nvm.sh && \
    nvm install v0.10.35 && \
    nvm use v0.10.35 && \
    nvm alias default v0.10.35'
    
#Install ember-cli    
RUN npm install -g ember-cli@0.1.6 bower phantomjs

#Expose ports
EXPOSE 4200 35729

# Define default command.
CMD ["bash"]

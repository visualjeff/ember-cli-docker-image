ember-cli-docker-image
======================

##Ember-cli docker image:

* Debian 7 (wheezy)
* Ember-cli v0.2.5, bower & phantomjs
* Iojs v2.0.1 and NPM  
* Git
* Nano
* Vim & Tmux

To run the container:

> docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash

This docker image is handy for teaching, for poking at the latest and greatest version of ember-cli...  BTW, I've also included a little script to setup VIM for Javascript development.  Its at /root/setupVim.sh.

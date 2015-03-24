ember-cli-docker-image
======================

##Ember-cli docker image:

* Debian
* Ember-cli v0.2.1
* Node v1.6.2
* Git
* Nano
* Vim & Tmux

To run the container:

> docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash

This docker image is handy for teaching, for poking at the latest and greatest version of ember-cli...
I've also included a little script to setup VIM.

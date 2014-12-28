ember-cli-docker-image
======================

##Ember-cli docker image:

* Ubuntu 14.04
* Ember-cli v0.1.5
* Node v0.10.35
* Git
* Nano - for editing files.

To run the container:

> sudo docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash

The image is handy for teaching.  The Windowz folks can use boot2docker to fire up a nice ember-cli development environment.

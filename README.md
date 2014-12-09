ember-cli-docker-image
======================

##Ember-cli docker image:

* Ubuntu 14.04
* Ember-cli v0.1.4
* Node v0.10.33
* Git
* Nano - for editing files.

To run the container:

> sudo docker run -t -i -p 4200:4200 -p 35729:35729 visualjeff/ember-cli:latest /bin/bash

The image is handy for teaching or for those sad folks who have to use Windowz.  The Windowz folks can use boot2docker to fire up a nice ember-cli development environment.

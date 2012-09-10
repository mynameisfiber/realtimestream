# Realtime Stream Processing: Computing Guide #

This repo contains all the files required for the August 13th, 2012 tutorial "Realtime Stream Processing".  Below is the computing guide which outlines the technical requirements required to follow along.

Rendered slides can be view at http://mynameisfiber.github.com/realtimestream/

## General Requirements ##

You will need to have the following installed:

  * [Python 2.7](http://python.org/)
      * [tornado](http://pypi.python.org/pypi/tornado/2.4)
      * [numpy](http://pypi.python.org/pypi/numpy/1.6.2)
      * [pysimplehttp >=0.2.0](http://pypi.python.org/pypi/pysimplehttp/0.2.0)
  * [simplehttp](https://github.com/bitly/simplehttp)
  * [redis](http://redis.io/)

Which require the following dependencies:

  * [json-c](https://github.com/jehiah/json-c)
  * [libevent 1.4](http://libevent.org/)
  * [openssl](http://www.openssl.org/)


## OSX guide ##

The easiest way to install the required programs is to first install [homebrew](https://github.com/mxcl/homebrew/) and then use `brew` and `pip` to download the required files.  Also, there is a great tutorial for steps 1 and 2 on this guide located at http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/ (follow steps 1-3 from that tutorial).

  1. Install GCC from XCode (see step 1-2 in [this tutorial](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/))
  2. Follow the instructions on http://mxcl.github.com/homebrew/ to install homebrew (see step 3 in [this tutorial](http://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/))
  3. `f="brew_formulas.0.1.tar.gz" ; wget "https://github.com/downloads/mynameisfiber/realtimestream/${f}" && tar -xvzf "${f}" -C /usr/local/Library/Formula/ ; rm "${f}"`
  4. `brew install simplequeue pubsub redis python`
  5. `brew test simplequeue pubsub`
  6. `pip install numpy "pysimplehttp>=0.2.0" redis` (you may want to consider using `virtualenv`)

## Ubuntu guide ##

To get started in ubuntu, we first use `aptitude` to get dependencies, and then we use `pip` to download the python libraries and manually compile the requirements in `simplehttp`.

  1. `sudo apt-get install make gcc libevent1-dev libcurl4-openssl-dev redis-server ipython python-pip python-redis python-numpy git`
  2. `sudo pip install "pysimplehttp>=0.2.0"`
  3. `git clone https://github.com/bitly/simplehttp.git`
  4. `cd simplehttp/simplehttp`
  5. `make ; sudo make install`
  6. `cd ../pubsub/`
  7. `make ; sudo make install`
  8. `cd ../simplequeue`
  9. `make ; sudo make install`

## Windows guide ##

We currently do not support windows.  If you have any success installing the required programs in windows, please tell us so we can update this section!  For the python requirements, [`pip`](http://pypi.python.org/pypi/pip) and [`enthought`](http://www.enthought.com/) will be useful.

# Realtime Stream Processing: Computing Guide #

This repo contains all the files required for the August 13th, 2012 tutorial "Realtime Stream Processing".  Below is the computing guide which outlines the technical requirements required to follow along.

## General Requirements ##

You will need to have the following installed:

  * [Python 2.7](http://python.org/)
      * [tornado](http://pypi.python.org/pypi/tornado/2.4)
      * [numpy](http://pypi.python.org/pypi/numpy/1.6.2)
  * [simplehttp](https://github.com/bitly/simplehttp)
  * [redis](http://redis.io/)

Which require the following dependencies:

  * [json-c](https://github.com/jehiah/json-c)
  * [libevent 1.4](http://libevent.org/)
  * [openssl](http://www.openssl.org/)


## OSX guide ##

The easiest way to install the required programs is to first install [homebrew](https://github.com/mxcl/homebrew/) and then use `brew` and `pip` to download the required files.

  1. Install GCC from XCode
  2. Follow the instructions on http://mxcl.github.com/homebrew/ to install homebrew
  3. `wget https://github.com/downloads/mynameisfiber/realtimestream/brew_formulas.0.1.tar.gz && tar -xvzf brew_formulas.0.1.tar.gz -C /usr/local/Library/Formula/`
  4. `brew install simplequeue pubsub redis`
  5. `sudo easy_install pip`
  6. `sudo pip install numpy pysimplehttp redis`

## Ubuntu guide ##

To get started in ubuntu, we first use `aptitude` to get dependencies, and then we use `pip` to download the python libraries and manually compile the requirements in `simplehttp`.

  1. `apt-get install redis-server libevent-1.4-2 python-pip python-numpy git`
  2. `sudo easy_install pip`
  3. `sudo pip install pysimplehttp`
  4. `git clone https://github.com/bitly/simplehttp.git`
  5. `cd simplehttp/simplehttp`
  6. `make ; sudo make install`
  7. `cd ../pubsub/`
  8. `make ; sudo make install`
  9. `cd ../simplequeue`
  10. `make ; sudo make install`

## Windows guide ##

We currently do not support windows.  If you have any success installing the required programs in windows, please tell us so we can update this section!

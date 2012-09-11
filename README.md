# Realtime Stream Processing: Computing Guide #

This repo contains all the files required for the August 13th, 2012 tutorial "Realtime Stream Processing".  Below is the computing guide which outlines the technical requirements required to follow along.

Rendered slides can be view at http://mynameisfiber.github.com/realtimestream/

## General Requirements ##

You will need to have the following installed:

  * [Python 2.7](http://python.org/)
      * [tornado](http://pypi.python.org/pypi/tornado/2.4)
      * [numpy](http://pypi.python.org/pypi/numpy/1.6.2)
      * [pysimplehttp >=0.2.0](http://pypi.python.org/pypi/pysimplehttp/0.2.0)
      * [host_pool](http://pypi.python.org/pypi/host_pool/0.2)
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
  3. `wget "https://github.com/downloads/mynameisfiber/realtimestream/brew_formulas.0.2.tar.gz"`
  4. `tar -xvzf "brew_formulas.0.2.tar.gz" -C /usr/local/Library/Formula/`
  5. `rm "brew_formulas.0.2.tar.gz"`
  6. `brew install simplequeue pubsub redis python`
  7. `brew test simplequeue pubsub`
  8. `pip install numpy "pysimplehttp>=0.2.0" redis ujson host_pool` (you may want to consider using `virtualenv`)
    * Note: If you get an error installing ujson, don't sweat it.  Nothing depends on it, but it is a really great and fast alternative to json/simplejson.  Simply run `sudo pip "pysimplehttp>=0.2.0" redis host_pool`

## Ubuntu guide ##

To get started in ubuntu, we first use `aptitude` to get dependencies, and then we use `pip` to download the python libraries and manually compile the requirements in `simplehttp`.

  1. `sudo apt-get install make gcc libevent1-dev libcurl4-openssl-dev redis-server`
  2. `sudo apt-get install ipython python-pip python-redis python-numpy git`
  3. `sudo pip install "pysimplehttp>=0.2.0" ujson host_pool`
    * Note: If you get an error installing ujson, don't sweat it.  Nothing depends on it, but it is a really great and fast alternative to json/simplejson.  Simply run `sudo pip install "pysimplehttp>=0.2.0" host_pool`
  4. `git clone https://github.com/bitly/simplehttp.git`
  5. `cd simplehttp/simplehttp`
  6. `make ; sudo make install`
  7. `cd ../pubsub/`
  8. `make ; sudo make install`
  9. `cd ../simplequeue`
  10. `make ; sudo make install`

## Windows guide ##

We currently do not support windows.  If you have any success installing the required programs in windows, please tell us so we can update this section!  For the python requirements, [`pip`](http://pypi.python.org/pypi/pip) and [`enthought`](http://www.enthought.com/) will be useful.

### A note from enthought ###

Enthought, a firm that specializes in scientific applications using Python, is offering a one-year subscription to its Enthought Python Distribution (EPD) to tutorial attendees. For those unfamiliar with Python, EPD makes it simple to set up a complete Python environment. EPD offers a comprehensive array of libraries that include machine learning, statistical, and various data manipulation packages. Subscribers also have access to Enthought’s private repository and package management tools, as well as a series of instructional webinars on various data analysis topics. EPD works just like a standard python environment, so you can still use pip and easy_install as you normally would.
If you’d like a free one-year subscription to the EPD: 

1. Register for an Enthought account. 

2. Email datagotham@enthought.com and let us know you've registered as part of Datagotham. We will then activate your subscription and email further instructions.

Have fun at the tutorials!

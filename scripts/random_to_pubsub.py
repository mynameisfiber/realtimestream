#!/usr/bin/env python 
#
# From the Realtime Data Science tutorial at DataGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

from pysimplehttp.http import pubsub_write
from numpy.random import normal
import tornado.options
import math
import time

if __name__ == "__main__":
    tornado.options.define("pubsub_url", type=str, multiple=True, default=["http://localhost:8080",], help="(multiple) url(s) for pubsubs to write to (ie: 'http://localhost:8080')")
    tornado.options.define("mean", type=float, default=0, help="Mean of the distribution")
    tornado.options.define("variance", type=float, default=1, help="Variance of the distribution")
    tornado.options.define("delay", type=float, default=0, help="Delay between messages in seconds")
    tornado.options.parse_command_line()
    
    options = tornado.options.options

    mean = options.mean
    std = math.sqrt(options.variance)
    while True:
        msg = dict(time=time.time(), number=normal(loc=mean, scale=std))
        print "Sending message: %s" % msg
        for pubsub_url in options.pubsub_url:
            pubsub_write(pubsub_url, msg)
        if options.delay:
            time.sleep(options.delay)

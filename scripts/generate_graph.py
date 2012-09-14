#!/usr/bin/env python 
#
# From the Realtime Data Science tutorial at DataGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

import random
import pysimplehttp.http
import tornado.options

nodes = list("abcdefg")
if __name__ == "__main__":
    tornado.options.define("pubsub_url", type=str, default="http://localhost:8080", help="Pubsub host to write to")
    tornado.options.parse_command_line()
    
    options = tornado.options.options
    while True:
        msg = {"from" : random.choice(nodes),
               "to"   : random.choice(nodes),
               "weight" : random.random() }
        pysimplehttp.http.pubsub_write(options.pubsub_url, msg)

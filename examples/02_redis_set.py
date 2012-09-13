#!/usr/bin/env python
#
# From the Realtime Data Science tutorial at PyGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

import redis
import random

db = redis.StrictRedis(db=1)
db.set("test_value", random.random())

value = db.get("test_value")
print "Random number = ", value
print "Response type = ", type(value)

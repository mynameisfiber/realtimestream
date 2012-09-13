#!/usr/bin/env python

import redis
import random

db = redis.StrictRedis(db=1)
db.set("test_value", random.random())

value = db.get("test_value")
print "Random number = ", value
print "Response type = ", type(value)

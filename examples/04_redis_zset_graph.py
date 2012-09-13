#!/usr/bin/env python

import redis

db = redis.StrictRedis(db=1)
db.zadd("A", 5.0, "B")
db.zadd("A", 1.0, "C")

node_a = db.zrange("A", 0, -1, withscores=True)
print "Current graph:"
for link in node_a:
    print "A, %s, %f" % (link[0], link[1])

#!/usr/bin/env python
#
# From the Realtime Data Science tutorial at PyGotham
# Micha Gorelick, micha@bit.ly, 2012... copyleft
# https://github.com/mynameisfiber/realtimestream/
#

import networkx as nx
import pylab
import redis
import tornado.options

if __name__ == "__main__":
    tornado.options.define("redis_db", type=int, default=1, help="Which redis DB number contains the graph")
    tornado.options.parse_command_line()
    options = tornado.options.options

    db = redis.StrictRedis(db=options.redis_db)
    
    G = nx.DiGraph()
    keys = db.keys()
    for key in keys:
        try:
            node = db.zrange(key, 0, -1, withscores=True)
        except redis.ResponseError:
            print "Key %s is not a zset... skipping" % key
            continue

        for link in node:
            print "%s, %s, %f" % (key, link[0], link[1])
            G.add_edge(key, link[0], weight=link[1])

    nx.draw(G)
    pylab.show()

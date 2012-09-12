import redis

db = redis.StrictRedis(db=1)

db.hset("micha", "friends", 1)
db.hset("dan", "friends", 9001)
db.hset("mike", "friends", 24)

for i in range(100):
    db.hincrby("micha", "friends", 10)
    
print "dan has %s friends" % db.hget("dan", "friends")
print "mike has %s friends" % db.hget("mike", "friends")
print "micha has %s friends" % db.hget("micha", "friends")

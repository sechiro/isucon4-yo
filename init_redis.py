from redis import Redis

redis = Redis()

ip_fail_list = "ip_fail.list"

for line in open(ip_fail_list, 'r'):
    params = line.rstrip().split(",")
#   print "%s %s" % (params[0], params[1])
    redis.set(params[0], params[1])

#for line in open(ip_fail_list, 'r'):
#    params = line.rstrip().split(",")
##   print "%s %s" % (params[0], params[1])
#    print redis.get(params[0])


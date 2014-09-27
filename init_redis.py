from redis import Redis
import csv

redis = Redis()

ip_fail_list = "/home/isucon/webapp/ip_fail.list"

with open(ip_fail_list, 'r') as f:
    reader = csv.reader(f)
    for params in reader:
        redis.set(params[0], params[1])

#for line in open(ip_fail_list, 'r'):
#    params = line.rstrip().split(",")
#   print "%s %s" % (params[0], params[1])
#    redis.set(params[0], params[1])

#for line in open(ip_fail_list, 'r'):
#    params = line.rstrip().split(",")
##   print "%s %s" % (params[0], params[1])
#    print redis.get(params[0])


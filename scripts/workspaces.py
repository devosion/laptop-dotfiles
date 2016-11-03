#!/usr/bin/env python3

import sys
import json

l=sys.argv
#print(l)

del l[0]
#print("\n" + str(l))

l = str(l)[4:-4]
#print("\n" + str(l))

l = l.split("},{")
#print("\n" + str(l))



for s in l:
    #print("\n" + str(s))
    JSON = json.loads("{" + s + "}")

    #print("\n" + str(JSON))

    #print("\n")
    #print("$ " + str(json.loads(s)["focused"]))
    if str(JSON["focused"]) == "True":
        print("%{F#0d89e7}%{F-}")
    else:
        print("%{F#a3b5c2}%{F-}")

#print('Argument List:', str(sys.argv))

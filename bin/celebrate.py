#!/usr/bin/env python
import sys
import json

holiday = sys.argv[1]
name = sys.argv[2]

f = open(holiday)
data = json.load(f)
for i in data:
    print(i)

f.close()
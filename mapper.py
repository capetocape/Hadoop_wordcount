#!/usr/bin/env python
# -*- coding:utf-8 -*-


#mapper.py文件，作用是对于每个单词输出一行以及词频1
#例如：
#one 1
#two 1
import pandas as pd
import sys
for line in sys.stdin:
    line = line.strip()
    words = line.split()
    for word in words:
        print "%s\t%s" % (word, 1)

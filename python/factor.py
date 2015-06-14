#!/usr/bin/env python

# github.com/rubicks/trythis/python/factor.py

import sys
from math import ceil, sqrt


def _factor(n):
    ret = []
    d = 2
    while 1 < n and d <= ceil(sqrt(n)):
        if n%d:
            d+=1
        else:
            n//=d
            ret.append(d)
            d = 2
    ret.append(n)
    return ret


def main():
    for arg in sys.argv[1:]:
        print(_factor(int(arg)))
    return


if "__main__" == __name__:
    main()
    exit(0)

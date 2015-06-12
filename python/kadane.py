#!/usr/bin/env python

# github.com/rubicks/trythis/python/kadane.py

import sys


def _kadane_idx(arr):
    ret = here = -sys.maxsize-1
    itmp = 0
    ibeg = 0
    iend = 0
    for i, e in enumerate(arr):
        here += e
        if here < e:
            here = e
            itmp = i
        if ret < here:
            ret = here
            ibeg = itmp
            iend = i + 1
    return ret, ibeg, iend


def _kadane(arr):
    return _kadane_idx(arr)[0]


def main():
    print(_kadane_idx(list(map(int, sys.argv[1:]))))
    return


if "__main__" == __name__:
    main()
    exit(0)

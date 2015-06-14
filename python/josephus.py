#!/usr/bin/env python

import sys


def _usage(ofile):
    # "usage: {0} n k".format(sys.argv[0])
    print("usage:", sys.argv[0], "n k", file=ofile)
    return ofile


def _josephus(n, k):
    ret = []
    arr = list(range(1, 1+n))
    i = 0
    while arr:
        i += k-1
        i %= len(arr)
        ret.append(arr.pop(i))
    return ret


def main():
    if not 3 == len(sys.argv):
        _usage(sys.stderr)
        exit(1)
    n = int(sys.argv[1])
    k = int(sys.argv[2])
    jo = _josephus(n, k)
    print("_josephus(", n, ",", k, ")==", jo)


if "__main__" == __name__:
    main()
    exit(0)

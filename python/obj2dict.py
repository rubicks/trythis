#!/usr/bin/env python

# github.com/rubicks/trythis/python/obj2dict.py

import datetime
import sys
from pprint import pprint


def _names(o):
    return [name for name in dir(o) if not name.startswith('__')]


def _obj2dict(o):
    return dict((name, getattr(o, name)) for name in _names(o))


def main(args):
    # this is a demo
    pprint(datetime.datetime.utcnow())
    pprint(_obj2dict(datetime.datetime.utcnow()))
    return 0


if "__main__" == __name__:
    exit(main(sys.argv))

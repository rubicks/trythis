#!/usr/bin/env python

# github.com/rubicks/trythis/python/in2post.py
#
# convert infix notation to postfix notation

import sys
from math import ceil, sqrt
from functools import reduce


def top(stk): return stk[-1]

def pop(stk): return stk.pop()

def push(stk,e): stk.append(e)

def isleft(op): return op in "+-*/"

def isright(op): return op in "^"

def isop(op): return op in "+-*/^"

def prec(op): return {'+' : 0, '-': 0, '*': 1, '/': 1, '^':2}[op]


def poppable(stk, c):
    return True \
        and stk \
        and isop(top(stk)) \
        and ( (isleft(c) and prec(c) <= prec(top(stk))) or \
              (isright(c) and prec(c) < prec(top(stk))) )
    

def in2post(s):
    print(s)
    ret = ""
    stk = []
    for c in s:
        print("\nc==",c)
        print("stk==",stk)
        print("ret==",ret)
        if isop(c):
            while poppable(stk, c):
                ret += pop(stk)
            push(stk,c)
            continue
        if '(' == c:
            push(stk,c)
            continue
        if ')' == c:
            while '(' != top(stk):
                ret += pop(stk)
            pop(stk)
            continue
        ret += c
    while stk:
        ret += pop(stk)
    return ret


def main():
    print(in2post(reduce(lambda a,b:a+b,sys.argv[1:])))
    return


if "__main__" == __name__:
    main()
    exit(0)

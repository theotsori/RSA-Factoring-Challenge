#!/usr/bin/python3
import sys

def factorize(n):
  for i in range(2, int(n ** 0.5) + 1):
    if n % i == 0:
      return i, n // i
  return n, 1

with open(sys.argv[1]) as f:
  for line in f:
    n = int(line.strip())
    p, q = factorize(n)
    print(f"{n}={p}*{q}")

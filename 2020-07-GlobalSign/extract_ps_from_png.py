#!/usr/bin/env python

"""
Script sourced from https://gist.github.com/mak/26e513a38a959d9a07631d2f47b94ca7
https://twitter.com/maciekkotowicz/status/1285543398720573440
"""

import math
from PIL import Image

pepper = Image.open("main_png")

ret = [ 0 for _ in range(40000)]

for i in range(26):
  for j in range(800):
    try:
      px = pepper.getpixel((j,i))
    except:
      continue
    ret[i * 800 + j ] = math.floor((px[2] & 0xf ) * 4 * 4 )  | (px[1]&0xf)

with open('x.ps1','w') as f: f.write(''.join(map(chr,filter(None,ret))))

#!/usr/bin/env python

import sys

files = []
for fi in xrange(1,len(sys.argv)):
    fn = sys.argv[fi]
    chksum = 0
    with open(fn,"rb") as f:
        data = f.read()
        while len(data):
            for i in xrange(len(data)):
                chksum += ord(data[i])
            data = f.read()
        files.append((fn, hex(chksum)))
maxlength = max([len(f[0]) for f in files])
for f in files:
    print "%s  %s" % (f[1][-4:],f[0])

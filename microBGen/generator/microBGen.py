#!/usr/bin/env python
#-*- encoding: utf8 -*-

import os, sys, random, subprocess as sp, shutil

NB_INSTS = 100
NB_PROGS = 1000

# read files
fd = open("prologue.xml")
prolog = fd.read()
fd.close()

fd = open("epilogue.xml")
epilog = fd.read()
fd.close()

insts = []
for p in os.listdir("rep_ipatterns"):
   fd = open(os.path.join("rep_ipatterns", p))
   insts.append(fd.read())
   fd.close()

os.chdir("output")

# actually generate programs
for np in range(NB_PROGS):
   print str(np / float(NB_PROGS) * 100.0) + "%"

   fc = prolog
   for ni in range(NB_INSTS):
      fc += insts[random.randint(0, len(insts) - 1)]
   fc += epilog

   bname = str(np) + ".xml"
   fd = open(bname, "w")
   fd.write(fc)
   fd.flush()
   fd.close()

   ex = sp.Popen(["microcreator", bname], stdout=sp.PIPE, stderr=sp.STDOUT)
   ex.communicate()

   shutil.move("output/example00000.s", str(np) + ".s")

#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 11 11:39:34 2019

@author: willhutwagner
"""
import sys

info=sys.argv[1]
ped=sys.argv[2]



convert2={}
with open(info) as fi:
    fi.readline()
    for line in fi:
        text = line.split(',')
        eight = text[8][:4]
        if len(eight) == 4 and (eight[0].isdigit() or eight[1].isdigit() or eight[2].isdigit() or eight[3].isdigit()):
            eight = line[8][:3]
        if eight not in convert2:
            convert2[eight]=text[1].split('(')[0].strip('"')


            
outtxt = ""
outkeep=""
outname1 = "All_Pure_150k.txt"
outname2 = "All_Pure_150k.keepthese"
with open(ped)as fi:
    for line in fi:
        text=line.split()
        three = text[1][:3]
        four = text[1][:4]
        if three in convert2:
            outtxt +=text[1]+'\t'+convert2[three]+'\n'
            outkeep +=text[0]+'\t'+text[1]+'\n'
        elif four in convert2:
            outtxt +=text[1]+'\t'+convert2[four]+'\n'
            outkeep +=text[0]+'\t'+text[1]+'\n'
with open(outname1,"w") as fi:
    fi.write(outtxt)
with open(outname2,"w") as fi:
    fi.write(outkeep)
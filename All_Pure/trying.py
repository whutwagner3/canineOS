#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Feb 11 11:39:34 2019

@author: willhutwagner
"""

import sys

info=sys.argv[1]
eigenvec=sys.argv[2]
shanei=sys.argv[3]
shantxt=sys.argv[4]

convert={}
with open(shantxt) as fi:
    for line in fi:
        text=line.split()
        convert[text[0]]=text[1]
dogs={}
dogpc1={}
dogpc2={}
dogpc3={}    
with open(shanei) as fi:
    fi.readline()
    for line in fi:
        text=line.split()
        if convert[text[1]] not in dogs:
            dogs[convert[text[1]]]=[text[1]]
            dogpc1[convert[text[1]]]=[float(text[2])]
            dogpc2[convert[text[1]]]=[float(text[3])]
            dogpc3[convert[text[1]]]=[float(text[4])]
        else:
            dogs[convert[text[1]]].append(text[1])
            dogpc1[convert[text[1]]].append(float(text[2]))
            dogpc2[convert[text[1]]].append(float(text[3]))
            dogpc3[convert[text[1]]].append(float(text[4]))
            
avgpc1,avgpc2,avgpc3={},{},{}
for key in dogs:
    avgpc1[key]=sum(dogpc1[key])/len(dogs[key])
    avgpc2[key]=sum(dogpc2[key])/len(dogs[key])
    avgpc3[key]=sum(dogpc3[key])/len(dogs[key])
    
convert2={}
with open(info) as fi:
    fi.readline()
    for line in fi:
        text=line.split(',')
        if text[8][:3] not in convert2:
            convert2[text[8][:3]]=text[1].split('(')[0].strip('"')
            
            
count=0
checks=0
with open(eigenvec)as fi:
    fi.readline()
    for line in fi:
        text=line.split()
        if text[1][:3] in convert2 and convert2[text[1][:3]] in dogs:
            count+=1
            if abs(float(text[2]) - avgpc1[convert2[text[1][:3]]])
        
print(count)
        
        
        
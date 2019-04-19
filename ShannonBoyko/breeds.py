#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""

@author: willhutwagner
"""
import sys

txt = sys.argv[1]
vcf = sys.argv[2]
limit_match = sys.argv[3]

convert={}
breeds={}
with open(txt) as fi:
    for line in fi:
        text = line.split(None,1)
        if text[1].strip()!='Mix' and text[1][:8]!='Village':
            convert[text[0]]=text[1]
            if text[1] not in breeds:
                breeds[text[1]]={}
                breeds[text[1]]['count']=0
                breeds[text[1]]['total']=0
                breeds[text[1]]['SNPs']=[]

check = False
indexes={}
with open(vcf) as fi:
    for line in fi:
        if line[:7] == '#CHROM':
            check=True
            text=line.split()
            for i in range(len(text)):
                if text[i].split('_')[0] in convert:
                    #index[i]=breed name
                    indexes[i]=convert[text[i].split('_')[0]]
        if check:
            text=line.split()
            for i in range(3,len(text)):
                breeds[indexes[i]]['total']+=1
                if '1' in text:
                    breeds[indexes[i]]['count']+=1
            lim=float(breeds[indexes[i]]['count'])/float(breeds[indexes[i]]['total'])
            if lim>=limit_match:
                breeds[indexes[i]]['SNPs'].append()
            breeds[indexes[i]]['total']=0
            breeds[indexes[i]]['count']=0
                
            

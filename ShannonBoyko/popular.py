#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Feb 14 14:26:43 2019

@author: willhutwagner
"""

import sys

txt = sys.argv[1]



#up for debate
popular=['Labrador Retrieverss','Golden Retriever','Beagle','Germanss Shepherd Dog','Boxerss','Rottweiler',\
         'French Bulldog','Brittany','Bull Terrier','Dachshund','Poodle','Shih Tzu','Great Dane',\
         'Maltese','Siberian Husky','Shiba Inu', 'Doberman Pinscher','Collie','Pug','Pembroke Welsh Corgi',\
         'Chihuahua','Pekingese','Newfoundland']

convert={}
outtext=''
keep_out=''
with open(txt) as fi:
    for line in fi:
        text=line.split(None,1)
        if text[1].strip() in popular:
            convert[text[0]]=text[1]
            outtext+=line
            keep_out+=text[0] +'\t'+text[0]+'\n'
with open('Popular/popular.txt','w') as fi:
    fi.write(outtext)
print('Popular/popular.txt has been created')
with open('Popular/popular.keepthese','w') as fi:
    fi.write(keep_out)
print('Popular/popular.keepthese has been created')

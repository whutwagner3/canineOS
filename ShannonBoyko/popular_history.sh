#!/usr/bin/env bash

mkdir Popular

#choosing popular breeds from the list 'popular' inside of popular.py
python3 popular.py ShannonBoyko_All.txt

#performing pca on popular breeds
../plink2 --dog --bfile ShannonBoyko_All --pca --out Popular/popular --keep Popular/popular.keepthese --maf



#!/usr/bin/env bash

###Download NHGRI data
##https://research.nhgri.nih.gov/dog_genome/data_release/index.shtml
wget ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.bed
wget ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.bim
wget ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.fam

wget ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/WGS/722g_Metadata_May2018.xlsx
ssconvert 722g_Metadata_May2018.xlsx 722g_Metadata_May2018.csv

../plink2 --dog --bfile All_Pure_150k --pca 2 --out All_Pure_150k
../plink --bfile All_Pure_150k --recode --tab --out All_Pure_150k --noweb --dog
python3 gettxt.py 722g_Metadata_May2018.csv All_Pure_150k.ped
../plink2 --dog --bfile All_Pure_150k --out All_withBreed --keep All_pure_150k.keepthese --make-bed
python3 ../interact.py All_Pure_150k.txt All_withBreed.eigenvec out.html



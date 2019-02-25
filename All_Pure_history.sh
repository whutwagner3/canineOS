#!/usr/bin/env bash

###Download NHGRI data
cd All_Pure
curl -O ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.bed
curl -O ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.bim
curl -O ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/SNP/All_Pure_150k.fam

curl -O ftp://ftp.nhgri.nih.gov/pub/outgoing/dog_genome/WGS/722g_Metadata_May2018.xlsx
ssconvert 722g_Metadata_May2018.xlsx 722g_Metadata_May2018.csv

../plink2 --dog --bfile All_Pure_150k --pca --out All_Pure_150k

#!/usr/bin/env bash

mkdir FromBroad
cd FromBroad 

mkdir SNPLists
mkdir fastas
cd SNPLists


#Downloding SNPLists from broadinstitute

wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr1_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr2_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr3_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr4_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr5_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr6_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr7_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr8_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr9_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr10_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr11_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr12_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr13_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr14_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr15_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr16_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr17_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr18_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr19_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr20_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr21_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr22_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr23_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr24_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr25_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr26_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr27_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr28_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr29_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr30_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr31_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr32_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr33_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr34_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr35_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr36_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr37_allsnps.txt&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chr38_allsnps.txt
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_lists/chrX_allsnps.txt



cd ../fastas
#downloading fastas from broadinstitute

wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr1_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr2_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr3_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr4_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr5_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr6_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr7_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr8_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr9_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr10_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr11_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr12_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr13_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr14_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr15_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr16_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr17_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr18_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr19_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr20_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr21_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr22_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr23_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr24_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr25_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr26_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr27_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr28_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr29_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr30_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr31_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr32_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr33_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr34_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr35_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr36_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr37_allsnps.fa&
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chr38_allsnps.fa
wget https://www.broadinstitute.org/files/shared/mammals/dog/snp2/snp_fastas/chrX_allsnps.fa



mkdir ../../Reference
cd ../../Reference
#Downloading reference sequences 
#https://www.ncbi.nlm.nih.gov/assembly/GCF_000002285.2/

wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr1.fa.gz
gunzip chr1.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr2.fa.gz
gunzip chr2.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr3.fa.gz
gunzip chr3.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr4.fa.gz
gunzip chr4.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr5.fa.gz
gunzip chr5.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr6.fa.gz
gunzip chr6.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr7.fa.gz
gunzip chr7.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr8.fa.gz
gunzip chr8.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr9.fa.gz
gunzip chr9.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr10.fa.gz
gunzip chr10.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr11.fa.gz
gunzip chr11.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr12.fa.gz
gunzip chr12.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr13.fa.gz
gunzip chr13.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr14.fa.gz
gunzip chr14.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr15.fa.gz
gunzip chr15.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr16.fa.gz
gunzip chr16.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr17.fa.gz
gunzip chr17.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr18.fa.gz
gunzip chr18.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr19.fa.gz
gunzip chr19.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr20.fa.gz
gunzip chr20.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr21.fa.gz
gunzip chr21.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr22.fa.gz
gunzip chr22.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr23.fa.gz
gunzip chr23.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr24.fa.gz
gunzip chr24.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr25.fa.gz
gunzip chr25.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr26.fa.gz
gunzip chr26.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr27.fa.gz
gunzip chr27.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr28.fa.gz
gunzip chr28.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr29.fa.gz
gunzip chr29.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr30.fa.gz
gunzip chr30.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr31.fa.gz
gunzip chr31.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr32.fa.gz
gunzip chr32.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr33.fa.gz
gunzip chr33.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr34.fa.gz
gunzip chr34.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr35.fa.gz
gunzip chr35.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr36.fa.gz
gunzip chr36.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr37.fa.gz
gunzip chr37.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chr38.fa.gz
gunzip chr38.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chrM.fa.gz
gunzip chrM.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chrUn.fa.gz
gunzip chrUn.fa.gz
wget http://hgdownload.soe.ucsc.edu/goldenPath/canFam2/chromosomes/chrX.fa.gz
gunzip chrX.fa.gz

cat chr1.fa chr2.fa chr3.fa chr4.fa chr5.fa chr6.fa chr7.fa chr8.fa chr9.fa chr10.fa chr11.fa chr12.fa chr13.fa chr14.fa chr15.fa chr16.fa chr17.fa chr18.fa chr19.fa chr20.fa chr21.fa chr22.fa chr23.fa chr24.fa chr25.fa chr26.fa chr27.fa chr28.fa chr29.fa chr30.fa chr31.fa chr32.fa chr33.fa chr34.fa chr35.fa chr36.fa chr37.fa chr38.fa chrM.fa chrUn.fa chrX.fa >canFam2.fa

mkdir ../AustralianTerrier
cd ../AustralianTerrier

#download paired end reads of an Australian Terrier from NCBI

fastq-dump --split-files SRR2094384
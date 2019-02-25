#!/usr/bin/env bash

###Downloading plink for MAC
##plink 1.9 might work better: 
#https://www.cog-genomics.org/plink2
wget http://zzz.bwh.harvard.edu/plink/dist/plink-1.07-mac-intel.zip
unzip plink-1.07-mac-intel.zip

###Downloading ShannonAdam data
### https://datadryad.org/resource/doi:10.5061/dryad.v9t5h
mkdir ShannonBoyko
cd ShannonBoyko

wget https://datadryad.org/bitstream/handle/10255/dryad.99041/ShannonBoyko_All.bed?sequence=1
mv ShannonBoyko_All.bed?sequence=1 ShannonBoyko_All.bed
wget https://datadryad.org/bitstream/handle/10255/dryad.99042/ShannonBoyko_All.bim?sequence=1
mv ShannonBoyko_All.bim?sequence=1 ShannonBoyko_All.bim
wget https://datadryad.org/bitstream/handle/10255/dryad.99043/ShannonBoyko_All.nopheno.fam?sequence=1
mv ShannonBoyko_All.nopheno.fam?sequence=1 ShannonBoyko_All.fam
wget https://datadryad.org/bitstream/handle/10255/dryad.99044/ShannonBoyko_All.nopheno.txt?sequence=1
mv ShannonBoyko_All.nopheno.txt?sequence=1 ShannonBoyko_All.txt

###Using plink to get ShannonBoyko.ped, plink.genome, and plink.mds
../plink --bfile ShannonBoyko_All --recode --tab --out ShannonBoyko_All --noweb --dog
../plink --file ShannonBoyko_All --genome --noweb --dog --out ShannonBoyko_All
../plink --file ShannonBoyko_All --dog --read-genome ShannonBoyko_All.genome --cluster --mds-plot 2 --noweb --out ShannonBoyko_All
../plink --file ShannonBoyko_All --dog --read-genome ShannonBoyko_All.genome --cluster --mds-plot 3 --noweb --out ShannonBoyko_All.3D

###Only consider popular breeds (arbitrary choices)


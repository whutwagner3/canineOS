#!/usr/bin/env bash



###Download ShannonBoyko data
##https://datadryad.org/resource/doi:10.5061/dryad.v9t5h
wget https://datadryad.org/bitstream/handle/10255/dryad.99041/ShannonBoyko_All.bed?sequence=1
mv ShannonBoyko_All.bed?sequence=1 ShannonBoyko_All.bed
wget https://datadryad.org/bitstream/handle/10255/dryad.99042/ShannonBoyko_All.bim?sequence=1
mv ShannonBoyko_All.bim?sequence=1 ShannonBoyko_All.bim
wget https://datadryad.org/bitstream/handle/10255/dryad.99043/ShannonBoyko_All.nopheno.fam?sequence=1
mv ShannonBoyko_All.nopheno.fam?sequence=1 ShannonBoyko_All.fam
wget https://datadryad.org/bitstream/handle/10255/dryad.99044/ShannonBoyko_All.nopheno.txt?sequence=1
mv ShannonBoyko_All.nopheno.txt?sequence=1 ShannonBoyko_All.txt


##Using Plink and Plink2 to create MDS and PCA
../plink --bfile ShannonBoyko_All --recode --tab --out ShannonBoyko_All --noweb --dog
../plink --file ShannonBoyko_All --genome --noweb --dog --out ShannonBoyko_All
../plink --file ShannonBoyko_All --dog --read-genome ShannonBoyko_All.genome --cluster --mds-plot 2 --noweb --out ShannonBoyko_All
../plink2 --dog --bfile ShannonBoyko_All --pca 2 --out ShannonBoyko_All
python3 ../interact.py ShannonBoyko_All.txt ShannonBoyko_All.eigenvec out.html



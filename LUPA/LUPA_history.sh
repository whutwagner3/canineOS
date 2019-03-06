#!/usr/bin/env bash

###downloading data
##http://dogs.genouest.org/SWEEP.dir/Supplemental.html

wget http://dogs.genouest.org/SWEEP.dir/LUPA.tar.bz2
tar xjf LUPA.tar.bz2
mv map.file_lupa lupa30.map
rm LUPA.tar.bz2
wget https://datadryad.org/bitstream/handle/10255/dryad.99044/ShannonBoyko_All.nopheno.txt?sequence=1
mv ShannonBoyko_All.nopheno.txt?sequence=1 ShannonBoyko_All.txt


../plink --dog --file lupa30 --make-bed --out lupa30
../plink2 --dog --bfile lupa30 --pca 2 --out lupa30
python3 ../interact.py ShannonBoyko_All.txt lupa30.eigenvec out.html




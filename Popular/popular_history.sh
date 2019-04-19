#! usr/bin/env bash

python3 popular.py ../ShannonBoyko/ShannonBoyko_All.txt > keepthese..txt
../plink --file ../ShannonBoyko/ShannonBoyko_All --keep keepthese.txt --out ./ThoseKept --noweb --dog


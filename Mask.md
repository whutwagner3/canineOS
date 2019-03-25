## Getting iGenome for CanFam3.1


[https://support.illumina.com/sequencing/sequencing_software/igenome.html](https://support.illumina.com/sequencing/sequencing_software/igenome.html)


## Looking into masking gene MC1R

Located in Chromosome5, NC_006587.3: c63695249-63694296
From refFlat in iGenomes /Annotation/Genes maybe id is ENSCAFT00000036995


[Resource determining gene](https://www.ncbi.nlm.nih.gov/pubmed/12692165)
[NCBI Gene Location](https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=489652)
[NCBI Gene Sequence](https://www.ncbi.nlm.nih.gov/nuccore/NC_006587.3?report=fasta&from=63694296&to=63695249&strand=true)

```
ATGTCTGGGCAGGGCCCCCAGAGAAGGCTGCTGGGCTCTCTCAATGGCACCTCCCCAGCCACCCCTCACT
TCGAGCTGGCTGCCAACCAGACCGGGCCCCGGTGCCTGGAGGTGTCCATTCCCGACGGGCTGTTCCTCAG
CCTGGGGCTGGTGAGCGTTGTGGAAAATGTGCTGGTGGTGGCCGCCATTGCCAAGAACCGCAACCTGCAC
TCGCCCATGTATTACTTCATCGGTTGCCTGGCTGTGTCCGACCTGCTGGTGAGCGTGAGCAATGTGCTGG
AGACGGCCGTCATGCTGCTGGTGGCGGCAGGCGCCTTGGCTGCTCAGGCTGCTGTGGTGCAGCAGCTGGA
CGACATCATTGACGTGCTCATCTGTGGTTCCATGGTATCCAGCCTCTGCTTCCTGGGCGCCATTGCCGTG
GACCGCTACCTCTCCATCTTCTACGCGCTGCGATACCACAGCATCGTCACACTCCCGCGGGCGTGGCGGG
CCATCTCCGCTATCTGGGTGGCTAGCGTCCTCTCCAGCACGCTCTTCATTGCCTACTACAATCACACGGC
CGTCCTGCTTTGTCTTGTCAGCTTCTTTGTAGCCATGCTGGTGCTCATGGCAGTGCTGTACGTCCACATG
CTTGCCCGCGCCTGCCAGCACGCCCGAGGTATTGCCCGGCTCCATAAGAGGCAGCACTTCATCCCCCAGG
GCTTTGGCCTCAAGGGCGCTGCCACACTCACTATCCTGCTGGGCATTTTCTTTCTCTGCTGGGGCCCCTT
CTTCTTGCACCTCTCACTC [A/G] 
TGGTCCTCTGCCCTCAACACCCCATCTGTGGCTGCGTCTTTCAGAACTTC
AACCTCTTCCTCACCCTCATCATCTGCAACTCCATCATTGACCCCTTCATCTACGCCTTCCGCAGCCAGG
AGCTC [C/T] 
GAAAGACTCTCCAAGAGGTAGTGCTATGTTCCTGGTGA
```
This is MC1R located at 63695249 - 63694296 in chromosome 5. 
Dogs with masks have the one at least one copy of Met to Val (SNP A to G) at the first snp location and are non-homogenous for Arg to termination (SNP C to T) at the second snp

### Analysis with BBMAP

```
Indexing reference:
bbmap.sh ref=canFam3.fa
Mapping:
bbmap.sh in=MC1R.fa out=output.sam minid=.8 k=15
No Indexing:
bbmap.sh ref=canFam3.fa in=MC1R.fa out=output.sam nodisk minid =.8 k=13 -usemodulo -Xmx4g
```
Getting memory errors even for indexing the reference


### Analysis with Samtools
```
Copy/ paste fasta into iGenome folder
bwa index Sequence/Chromosomes/5.fa 
bwa mem Sequence/Chromosomes/5.fa mc1r.fa > mc1r.sam

samtools view -bSh -o mc1r.bam mc1r.sam 
samtools sort -o mc1r.sorted.bam mc1r.bam
bedtools bamtobed -i mc1r.sorted.bam 
```
Samtools found only one instance for MC1R in the 5th chromosome

## Checking out illumina array and other 
Can't really find a good match for A to G at the right spot but...
found BICF2P854025-0_T_R_1579248540 within the gene



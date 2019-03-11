## Getting iGenome for CanFam3.1

'''
[https://support.illumina.com/sequencing/sequencing_software/igenome.html](https://support.illumina.com/sequencing/sequencing_software/igenome.html)
'''

## Looking into masking gene MC1R

Located in Chromosome5, NC_006587.3: c63695249-63694296
From refFlat in iGenomes /Annotation/Genes maybe id is ENSCAFT00000036995
'''
[Resource determining gene](https://www.ncbi.nlm.nih.gov/pubmed/12692165)
[NCBI Gene Location](https://www.ncbi.nlm.nih.gov/gene?Db=gene&Cmd=DetailsSearch&Term=489652)
[NCBI Gene Sequence](https://www.ncbi.nlm.nih.gov/nuccore/NC_006587.3?report=fasta&from=63694296&to=63695249&strand=true)
'''
Looked at the 264th amino acid and noticed the reference is Valine (the reference is boxer with black mask) and not Methionine. 
DNA sequecence for mutation is ATG to GTG: Snp A to G at ..... position in chr 5


'''
Copy/ paste fasta into iGenome folder
bwa index Sequence/Chromosomes/5.fa 
bwa mem Sequence/Chromosomes/5.fa mc1r.fa > mc1r.sam

samtools view -bSh -o mc1r.bam mc1r.sam 
samtools sort -o mc1r.sorted.bam mc1r.bam
bedtools bamtobed -i mc1r.sorted.bam 
'''

## Checking out illumina array
Can't really find a good match for A to G at the right spot but...
found BICF2P854025-0_T_R_1579248540 within the gene



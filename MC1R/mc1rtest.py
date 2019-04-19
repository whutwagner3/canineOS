import sys
import subprocess

sralist=sys.argv[1]
subprocess.call(['mkdir', 'fastq'])
subprocess.call(['mkdir','temp'])
subprocess.call(['mkdir','out'])
named_out=[]
check1='GCCACACTCACTATCCTGCTGGGCATTTTCTTTCTCTGCTGGGGCCCCTTCTTCTTGCACCTCTCACTCG'
check2='CTCTTCCTCACCCTCATCATCTGCAACTCCATCATTGACCCCTTCATCTACGCCTTCCGCAGCCAGGAGCTCT'

with open(sralist) as fi:
    for line in fi:
        test = line.split(None,1)
        subprocess.call(['fasterq-dump','--outdir','fastq','--temp','temp','--split-files',test[0]])
        subprocess.call(['bbduk.sh','in1=fastq/'+test[0]+'_1.fastq','in2=fastq/'+test[0]+'_2.fastq','outm=out/'+test[0]+'_matched.fq','ref=MC1R.fa','k=79','hdist=2'])
        subprocess.call(['rm','-f','fastq/'+test[0]+'_1.fastq','fastq/'+test[0]+'_2.fastq'])
        named_out.append(test[0]+'_matched.fq')
subprocess.call(['cd','out'])
for file in named_out:
    with open(file) as fi:
        text=readlines()
        if check1 in text and check2 not in text:
            print(file+' has a melanistic mask')
        else:
            print(file+' has no melanistic mask')

# Microbial Differentiation Within Mudflats and Muscle Beds

## GEN711-Vanechanos


## Background

discussion

### even smaller heading

The project was focused on determining how bacterial species differ between mudflats and oyster beds, such 


author et al 2019 assembled the genome of --- we compared

## Methods
A Conda Environment was first loaded through the following commands along with wget


### Installing  wget

brew install wget

### conda install wget


wget https://data.qiime2.org/distro/core/qiime2-2022.2-py38-osx-conda.yml
conda env create -n qiime2-2022.2 --file qiime2-2022.2-py38-osx-conda.yml

### CLEANUP
rm qiime2-2022.2-py38-osx-conda.yml

### activate conda environment
conda activate qiime2-2022.2

Due to technical difficulties, conda had to be reinstalled several times. The following commands may be helpful in uninstalling the environment

### deactivate

conda deactivate


### removing Conda 

conda activate base

conda env remove -n qiime2-2022.2  


Create a folder using mkdir to depost future sequence files that are created


Create an import QZA file in such folder utilizing the following command:

### Qiime import
qiime tools import \
--type 'SampleData[PairedEndSequencesWithQuality]' \
--input-format CasavaOneEightSingleLanePerSampleDirFmt \
--input-path /Users/peter/Desktop/project711/Student_data \
--output-path /Users/peter/Desktop/project711/chimeoutput/import


The next step is to denoise the imported QZA file that was created from the last command, due to technical difficulties, the process was done on a seperate computer cluster.

qiime dada2 denoise-paired \
--i-demultiplexed-seqs import.qza \
--p-trunc-len-f 230 \
--p-trunc-len-r 210 \
--p-trim-left-f 19 \
--p-trim-left-r 20 \
--o-denoising-stats dada2_rep_set \
--o-table dada2_table.qza \
--o-representative-sequences dada2_rep_set.qza \
--verbose


### metadata tabulate step

qiime metadata tabulate \
--m-input-file ./dada2_rep_set.qza \
--o-visualization ./dada2_rep_set.qzv


### not working

qiime feature-table tabulate-seqs \
--i-data ./dada2_rep_set.qza \
--o-visualization rep-seqs


### philogenetic reconstruction

qiime fragment-insertion sepp \
--i-representative-sequences dada2_rep_set.qza \
--i-reference-database silva132_99.qza \
--o-tree ./tree.qza \
--o-placements ./tree_placements.qza \
--p-threads 4 \
--verbose




### Author et al. 2019 sequences we downloaded from
### our files were in fastqz
### we installed x programs with a conda envronment
### we ran our analysis on 



## Findings


to add a plot from 'figs folder there needs to be a line in this document that looks like this

![plot(figs/plotfile.png)]

![plot(pheno/)]



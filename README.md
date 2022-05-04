# Microbial Differentiation Within Mudflats and Muscle Beds

## GEN711-Vanechanos


## Background


  The project was focused on determining how bacterial species differ between mudflats and oyster beds, such that samples of the data were taken from the Great Bay where the benthic bacterial diversity was examined in both mudflats and Oyster beds. Due to limited coast line, this region holds great importance to the State of New Hampshire and such attempts to understand how the habitat itself has an effect on the bacterial community can potentially lead to more efficient practices in aquaculture.



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


qiime feature-table tabulate-seqs \
--i-data ./dada2_rep_set.qza \
--o-visualization rep-seqs




### feature-classifier

qiime feature-classifier classify-consensus-vsearch \
--i-query rep-seqs.qza \
--i-reference-reads silva132_99.qza \
--i-reference-taxonomy majority_taxonomy_all_levels.qza \
--p-maxaccepts 5 \
--p-query-cov 0.4 \
--p-perc-identity 0.7 \
--o-classification vsearch_taxonomy \
--p-threads 4 \
--verbose



### V-search taxonomy

qiime metadata tabulate \
--m-input-file vsearch_taxonomy.qza \
--o-visualization vsearch_taxonomy


### Taxa barplot

qiime taxa barplot \
--i-table table.qza \
--i-taxonomy vsearch_taxonomy.qza \
--o-visualization taxa-barplot \
--m-metadata-file dns.qza



## Other avanues of approch potential for future

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




## Findings


to add a plot from 'figs folder there needs to be a line in this document that looks like this

![plot(figs/Taxa bar plot-Van)]


![plot(figs/plotfile.png)]

<img width="638" alt="Taxa bar plot-Van" src="https://user-images.githubusercontent.com/103777822/166624313-2b9623da-b806-4188-80e1-6aefcf820679.png">

![plot(pheno/)]



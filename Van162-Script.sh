
### Qiime import
qiime tools import \
--type 'SampleData[PairedEndSequencesWithQuality]' \
--input-format CasavaOneEightSingleLanePerSampleDirFmt \
--input-path /Users/peter/Desktop/project711/Student_data \
--output-path /Users/peter/Desktop/project711/chimeoutput/import


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




## Other avanues of approch and potential for future

### phylogenetic reconstruction

qiime fragment-insertion sepp \
--i-representative-sequences dada2_rep_set.qza \
--i-reference-database silva132_99.qza \
--o-tree ./tree.qza \
--o-placements ./tree_placements.qza \
--p-threads 4 \
--verbose

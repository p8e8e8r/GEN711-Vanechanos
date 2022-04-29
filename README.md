# Microbial Differentiation Within Mudflats and Muscle Beds

## GEN711-Vanechanos


## Background

discussion

### even smaller heading

we were interested...



author et al 2019 assembled the genome of --- we compared

## Methods
A Conda Environment was first loaded through the following commands along with wget


## Installing  wget
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


Create a folder using mkdir to depost future qza files that are created



### Qiime import
qiime tools import \
--type 'SampleData[PairedEndSequencesWithQuality]' \
--input-format CasavaOneEightSingleLanePerSampleDirFmt \
--input-path /Users/peter/Desktop/project711/Student_data \
--output-path /Users/peter/Desktop/project711/chimeoutput/import




###Author et al. 2019 sequences we downloaded from
###our files were in fastqz
###we installed x programs with a conda envronment
###we ran our analysis on 



## Findings


to add a plot from 'figs folder there needs to be a line in this document that looks like this

![plot(figs/plotfile.png)]

![plot(pheno/)]



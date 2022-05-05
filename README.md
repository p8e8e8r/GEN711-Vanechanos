# Microbial Differentiation Within Mudflats and Mussel Beds

## GEN711-Vanechanos


## Background


  The project was focused on determining how bacterial species differ between mudflats and oyster beds, such that samples of the data were taken from the Great Bay where the benthic bacterial diversity was examined in both environments. Due to limited coast line, this region holds great importance to the State of New Hampshire and such attempts to understand how the habitat itself has an effect on the bacterial community can potentially lead to more efficient practices in aquaculture.



## Methods



  A Conda Environment was first loaded by utilizing brew and subsequently wget, where it was then utilized to run a bioinformatics pipeline (qiime2-2022.2). A cleanup of the setup was accomplished by removing the leftover yml file for qiime. A folder was created using mkdir to depost future sequence files that were created. Qiime tools import was the first prep step for denoising data and was utilized to create an import QZA file. The next step is to denoise the imported QZA file that was created from the last step, due to technical limitations, the process was done on a seperate computer cluster. A metadata tabulate step was ran in order to visualize rep files in qzv format. qiime feature-classifier classify-consensus-vsearch served as a preperatory step to create a vsearch_taxonomy.qza file that would then be run through a metadata tabulate step to produce another .qzv file. This file would then be utilized to create a taxa barplot that would be interpreted in https://view.qiime2.org.




## Findings


<img width="638" alt="Taxa bar plot-Van" src="https://user-images.githubusercontent.com/103777822/166624313-2b9623da-b806-4188-80e1-6aefcf820679.png">
Figure 1: Level 1 barplot demonstrating the diversity of domains between primaraly Archea and Bacteria.


<img width="752" alt="taxa level 3" src="https://user-images.githubusercontent.com/103777822/166848815-e577bf69-798b-4dbe-86c1-9c56fb5f05b1.png">
Figure 2: Level 3 barplot demonstrates greatest diversity in column MUAPs051221b2, all other columns relate more consistantly.

<img width="426" alt="Legend 1" src="https://user-images.githubusercontent.com/103777822/166848888-4f3deda6-628b-43e1-9448-5d4a269def08.png"><img width="457" alt="legend 2" src="https://user-images.githubusercontent.com/103777822/166848894-2f21b223-0d6c-46c7-bbfe-9d6021425c9e.png"><img width="460" alt="legend 3" src="https://user-images.githubusercontent.com/103777822/166848903-204b2487-f4aa-4432-b7b4-4a38a020f9fc.png"> <img width="472" alt="legend 4" src="https://user-images.githubusercontent.com/103777822/166848916-e75ac15f-90f7-4c18-992e-4d01109d9dbc.png"><img width="493" alt="legend 5" src="https://user-images.githubusercontent.com/103777822/166848928-3fb307bc-e880-4db4-9f23-99d1bfbc986a.png">




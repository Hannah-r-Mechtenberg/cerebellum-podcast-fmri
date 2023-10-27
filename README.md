# cerebellum-podcast-fmri
Statistical fMRI data and processing scripts for the publication titled, "The cerebellum is sensitive to the lexical properties of words during spoken language comprehension" provisionally accepted on Oct. 26th 2023. See link to preprint copy: 10.31234/osf.io/t9fyc.

A note -- these analyses were conducted in AFNI. As such, all the scripts are UNIX shell scripts that use AFNI functions, and the data files are AFNI formatted (BRIK and HEAD files). For use with other software, these files will need to be converted to NIFTI (.nii).


A brief statement on the study:

This study explored whether the cerebellum is sensitive to lexical level properties (i.e., lexical frequency and phonological neighborhood density) while participants listened to an un-altered 10-minute segment of a podcast while scanned in an MRI.

There were 79 participants included for analysis. Participant signifiers are indicated by an alphanumeric code in the data file name -- these codes are consistent across all data files types. So, the participant code "S0056INA1" refers to the same participant across all data files.


See Code and Data Availability Statement:

At the moment of publication, we are sharing the downstream individual statistical data files that directly support the current study. These can be found in the data/individual_masked_stats_files folder. 

We have provided the scripts that these statistical files were derived from -- including the regression script (found at Scripts/01.0_AmplitudeModulated_Regression_WordFreq_PhonoNeighDen.sh) and the associated timing file (data/amp_logzscore_LexFreq_PhD.txt). We have also included the scripts that compute the group stats for each lexical property.

We have also shared the invididual-level cerebellar cluster data files associated with sensitivity to phonological neighborhood density (data/functional_clusters/phonological_neighborhood_density) and lexical frequency (data/functional_clusters/lexical_frequency). The scripts that compare and compute the degree of cluster overlap are included in the Scripts folder.

The raw, whole-brain data files (structural and functional) will be available upon request while our group is curently working on several lines of research drawing from these data. Pending publication of these in-progress projects, we will update this repository with shole brain files as well as any additional files or scripts requested by interested parties. Please email the corresponding author, Hannah Mechtenberg, for data or file requests: hannah.mechtenberg@uconn.edu.

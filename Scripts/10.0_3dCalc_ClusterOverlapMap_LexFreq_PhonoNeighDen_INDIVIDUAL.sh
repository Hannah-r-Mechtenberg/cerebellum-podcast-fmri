#!/bin/csh -f

# Maps the cluster overlaps between individual cluster masks for lexical frequency and phonological neighborhood density
# The masks are thresholded at an individual level of: p <0.01, alpha of < 0.05, and cluster threshold of 77.6

set top_dir = top_dir/

3dcalc -a /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/Lexical_Frequency/ClusterOverlapMap/3dMerge/Mask/all71_lexicalfrequency_clusters_71subj_6ghits_3dcalc_mask+tlrc. -b /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/Phonological_Neighborhood_Density/ClusterOverlapMap/3dMerge/Mask/all70_phononeighden_clusters_70subj_6ghits_3dcalc_mask+tlrc. \
-expr 'step(a)+2*step(b)' \
-prefix /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/LexFreq_PhonoNeighDen_ClusterOverlap/INDIVIDUAL_ClusterOverlap_LexFreq_and_PhonoDen_AmpMod
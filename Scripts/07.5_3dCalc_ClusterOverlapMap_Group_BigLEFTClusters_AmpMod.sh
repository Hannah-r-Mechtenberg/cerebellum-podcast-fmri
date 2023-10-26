!/bin/csh -f
# Maps the cluster overlaps between the Lexical Frequency AmpMod Cluster 1 (832 voxels; left cerebellum VII/Crus II) and the Phonological Neighborhood Density Cluster 2 (64 voxels; left cerebellum crus II)
# The masks are thresholded at: p <0.001, alpha of < 0.01, and cluster threshold of 31.5
# This is from the MNI transformed and cerebellum masked group statistics output

3dcalc -a /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/LexFreq_Clust1_832Vox_LeftVII_CrusII_mask+tlrc. -b /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/PhonoDen_Clust2_64Vox_leftcerebellum_crusII_mask_0002+tlrc. \
-expr 'step(a)+2*step(b)' \
-prefix /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/ClusterOverlap_LexFreq_and_PhonoDen_AmpMod_LEFTClusters_a0.01_corrected_clustthresh_31.5

!/bin/csh -f
# Maps the cluster overlaps between the Lexical Frequency AmpMod Cluster 2 (606 voxels; RIGHT cerebellum VII/Crus II) and the Phonological Neighborhood Density Cluster 1 (404 voxels; RIGHT cerebellum crus II)
# The masks are thresholded at: p <0.001, alpha of < 0.01, and cluster threshold of 31.5
# This is from the MNI transformed and cerebellum masked group statistics output

3dcalc -a /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/LexFreq_Clust2_606Vox_RightVII_CrusII_mask_0002+tlrc. -b /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/PhonoDen_Clust1_404Vox_rightcerebellum_crusII_mask_0001+tlrc. \
-expr 'step(a)+2*step(b)' \
-prefix /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/ClusterOverlap_LexFreq_and_PhonoDen_AmpMod_RIGHTClusters_a0.01_corrected_clustthresh_31.5
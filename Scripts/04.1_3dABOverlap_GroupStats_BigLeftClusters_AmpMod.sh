#!/bin/tcsh -f
# Calculates the cluster overlaps between the Lexical Frequency AmpMod Cluster 1 (832 voxels; left cerebellum VII/Crus II) and the Phonological Neighborhood Density Cluster 2 (64 voxels; left cerebellum crus II)
# The masks are thresholded at: p <0.001, alpha of < 0.01, and cluster threshold of 31.5
# This is from the MNI transformed and cerebellum masked group statistics output

3dABoverlap -no_automask /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/LexFreq_Clust1_832Vox_LeftVII_CrusII_mask+tlrc. /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/PhonoDen_Clust2_64Vox_leftcerebellum_crusII_mask_0002+tlrc.
> /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/ClusterOverlap_LexFreq_and_PhonoDen_AmpMod_LeftClusters_a0.01_corrected_clustthresh_31.5

#output:
# A           #B           #(A uni B)   #(A int B)   #(A \ B)     #(B \ A)     %(A \ B)    %(B \ A)    Rx(B/A)    Ry(B/A)    Rz(B/A)
# 832          64           834          62           770          2            92.5481      3.1250     0.1960     0.2633     0.1505

# how to interpret:
# #A         = number of voxels in the A mask
# #B         = number of voxels in the B mask
# #(A uni B) = number of voxels in the either or both masks (set union)
# #(A int B) = number of voxels present in BOTH masks (set intesection)
# #(A \ B)   = number of voxels in A mask that aren't in B mask
# #(B \ A)   = number of voxels in B mask that arent' in A mask
# %(A \ B)   = percentage of voxels from A mask that aren't in B mask
# %(B \ A)   = percentage of voxels from B mask that aren't in A mask
# Rx(B/A)    = radius of gyration of B mask / A mask, in x direction
# Ry(B/A)    = radius of gyration of B mask / A mask, in y direction
# Rz(B/A)    = radius of gyration of B mask / A mask, in z direction
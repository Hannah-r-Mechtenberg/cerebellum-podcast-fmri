#!/bin/tcsh -f
# Calculates the cluster overlaps between the Lexical Frequency AmpMod Cluster 2 (606 voxels; RIGHT cerebellum VII/Crus II) and the Phonological Neighborhood Density Cluster 1 (404 voxels; RIGHT cerebellum crus II)
# The masks are thresholded at: p <0.001, alpha of < 0.01, and cluster threshold of 31.5
# This is from the MNI transformed and cerebellum masked group statistics output

3dABoverlap -no_automask /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/LexFreq_Clust2_606Vox_RightVII_CrusII_mask_0002+tlrc. /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/PhonoDen_Clust1_404Vox_rightcerebellum_crusII_mask_0001+tlrc.
#> /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/GroupStats_MNITransformed_and_CerebellumMasked/ClusterOverlap_LexFreq_and_PhonoDen_AmpMod_LeftClusters_a0.01_corrected_clustthresh_31.5

#output:
#A           #B           #(A uni B)   #(A int B)   #(A \ B)     #(B \ A)     %(A \ B)    %(B \ A)    Rx(B/A)    Ry(B/A)    Rz(B/A)
#606          404          647          363          243          41           40.0990     10.1485     0.9998     0.7673     0.7680

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
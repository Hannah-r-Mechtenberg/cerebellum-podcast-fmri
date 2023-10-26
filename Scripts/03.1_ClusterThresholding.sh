#!/bin/csh -f
# the -acf parameters were generated from running 3dFWHMx on the group stats errts file.
# then, averaged across all 79 participants to get the average a, b, and c parameters

cd top_dir/

# Using the MNI cerebellum group mask
3dClustSim -mask ./Group_Cerebellum_Mask/groupcerebellummask_79subjs_75ghits_masked+tlrc. \
-acf 0.36356718 4.26285902 5.40694519 -pthr 0.05 .025 .01 .005 .002 .001 \
-iter 10000 -quiet \
> ./3dClustSimData/3dClustSim_79subj_75ghits_cerebellum_mni_mask.txt
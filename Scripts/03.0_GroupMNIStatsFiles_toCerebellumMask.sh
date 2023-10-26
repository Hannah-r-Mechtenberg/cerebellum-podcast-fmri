#!/bin/tcsh -f
set top_dir = top_dir/
cd $top_dir/
3dfractionize -template Group_stats_files_MNITransformed/MNI_Phonoden_in_LexFreq_out_noRF_AmpMod_vs_0_ttest+tlrc. -input OneCerebellum-MNIsegment.nii -clip 0.2 -vote -prefix GroupCerebellumMask
3dcalc -fscale -a Group_stats_files_MNITransformed/MNI_Phonoden_in_LexFreq_out_noRF_AmpMod_vs_0_ttest+tlrc. -b Group_Cerebellum_Mask/groupcerebellummask_79subjs_75ghits_masked+tlrc.HEAD -expr 'a*b' -prefix MaskedCerebellum_79Subjs_75ghits_WTT1_functional_PhonoDen_AmpMod_LexFreqOut
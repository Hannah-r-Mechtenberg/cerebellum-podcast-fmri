#!/bin/csh -f

set top_dir = top_dir/

foreach subject(S0056INA1 S0105LIA1 S0125HAN1 S0162JRG1 S0212QLT1 S0313QWR1 S0522GSR1 S0706OPY1 S0717JHH1 S0734IDQ1 S0776SSB1 S0835TAV1 S0984XGH1 S1747WTT1 S2104WGB1 S2234RGC1 S2236QMA1 S2309MVT1 S2329JLY1 S2432UIE1 S2470AHE1 S2594GTY1 S2662UVC1 S2686ROL1 S2845UBH1 S2871WKK1 S3027PTW1 S3366FTS1 S3488KXQ1 S3553CRJ1 S4014FXW1 S4196IAG1 S4258BHK1 S4409DYM1 S4828GHK1 S4835QAM1 S5138PCN1 S5170CBX1 S5488AJL1 S5490EVF1 S5499TGD1 S5636FLE1 S5709FMN1 S5780GFE1 S5795PSX1 S5878RNU1 S6270OMA1 S6359PQF1 S6426BEM1 S6563WRL1 S6878LGW1 S6924FEF1 S6965QMR1 S7001GPX1 S7097GBQ1 S7098YDI1 S7211DMG1 S7255JKB1 S7271FDL1 S7395IJT1 S7603FTX1 S7863WFC1 S7894TIS1 S8262KYB1 S8514AUJ7 S8582QWA1 S8647VQV1 S8673SQO1 S8674VFG1 S8717EWB1 S8730IWG1 S8908YLE1 S9068CFG1 S9134KDF1 S9432GYO1 S9600WMX1 S9644GAH1 S9668OBK1 S9892SSG1)
	echo "Regressing for subject "${subject}
	cd $top_dir/${subject}/${subject}.preproc
	3dDeconvolve -input pb03.${subject}.r01.scale+tlrc.HEAD \
		-polort 3 \
		-GOFORIT 3 \
		-num_stimts 7 \
		-stim_times_AM2 1 ${top_dir}/Timing/amp_logzscore_WF_PhD.txt 'GAM'\
		-stim_label 1 amp_logscore_wf_phd \
		-stim_file 2 dfile_rall.1D'[0]' -stim_base 2 -stim_label 2 roll \
    	-stim_file 3 dfile_rall.1D'[1]' -stim_base 3 -stim_label 3 pitch \
    	-stim_file 4 dfile_rall.1D'[2]' -stim_base 4 -stim_label 4 yaw \
    	-stim_file 5 dfile_rall.1D'[3]' -stim_base 5 -stim_label 5 dS \
   		-stim_file 6 dfile_rall.1D'[4]' -stim_base 6 -stim_label 6 dL \
    	-stim_file 7 dfile_rall.1D'[5]' -stim_base 7 -stim_label 7 dP \
		-fout -tout -rout \
		-fitts fitts.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.${subject} \
		-errts errts.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.${subject} \
		-bucket stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.${subject}
		
		cp stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.${subject}* ../../Group_Analysis/AmpMod_LogZScore_WordFreq_PhonoDen/
   
   echo "done copying stats files for "${subject}
   
end

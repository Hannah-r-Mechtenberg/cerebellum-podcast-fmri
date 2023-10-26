#!/bin/csh -f

# Combines results from Amplitude Modulated analysis, compares the group t values to 0
# Amplitude modulated lexical frequency coef = [4]

set top_dir = top_dir/
cd $top_dir/Group_Analysis/AmpMod_LogZScore_WordFreq_PhonoDen

3dttest++ \
-prefix LexFreq_in_phonoden_out_noRF_AmpMod_vs_0_ttest \
-mask ../mask/groupmask_79subjs_75ghits_masked+tlrc. \
-setA \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0056INA1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0105LIA1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0125HAN1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0162JRG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0212QLT1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0313QWR1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0522GSR1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0706OPY1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0717JHH1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0734IDQ1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0776SSB1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0835TAV1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S0984XGH1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S1747WTT1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2104WGB1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2234RGC1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2236QMA1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2309MVT1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2329JLY1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2432UIE1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2470AHE1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2594GTY1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2662UVC1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2686ROL1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2845UBH1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S2871WKK1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S3027PTW1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S3366FTS1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S3488KXQ1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S3553CRJ1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4014FXW1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4196IAG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4258BHK1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4409DYM1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4828GHK1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S4835QAM1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5138PCN1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5170CBX1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5488AJL1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5490EVF1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5499TGD1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5636FLE1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5709FMN1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5780GFE1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5795PSX1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S5878RNU1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6270OMA1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6359PQF1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6426BEM1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6563WRL1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6878LGW1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6924FEF1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S6965QMR1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7001GPX1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7097GBQ1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7098YDI1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7211DMG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7255JKB1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7271FDL1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7395IJT1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7603FTX1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7863WFC1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S7894TIS1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8262KYB1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8514AUJ7+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8582QWA1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8647VQV1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8673SQO1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8674VFG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8717EWB1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8730IWG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S8908YLE1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9068CFG1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9134KDF1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9432GYO1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9600WMX1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9644GAH1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9668OBK1+tlrc'[4]' \
stats.allsubs_logzscore_WordFreq_PhonoDen_AmpMod.S9892SSG1+tlrc'[4]' \

end
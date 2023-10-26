#!/bin/csh -f

# Maps the cluster overlaps between individual cluster masks for lexical frequency and phonological neighborhood density
# FOR EACH PERSON
# The masks are thresholded at an individual level of: p <0.01, alpha of < 0.05, and cluster threshold of 77.6
# Removed 12 participants because they either: had no surviving clusters for lex freq AND PND, had no surviving clusters for EITHER lex freq OR PND

set top_dir = top_dir/


foreach subject(S0056INA1 S0105LIA1 S0125HAN1 S0162JRG1 S0212QLT1 S0706OPY1 S0717JHH1 S0734IDQ1 S0776SSB1 S0835TAV1 S0984XGH1 S1747WTT1 S2104WGB1 S2234RGC1 S2236QMA1 S2309MVT1 S2329JLY1 S2432UIE1 S2470AHE1 S2594GTY1 S2662UVC1 S2686ROL1 S2845UBH1 S2871WKK1 S3027PTW1 S3366FTS1 S3488KXQ1 S3553CRJ1 S4014FXW1 S4196IAG1 S4258BHK1 S4835QAM1 S5138PCN1 S5170CBX1 S5488AJL1 S5490EVF1 S5499TGD1 S5636FLE1 S5709FMN1 S5780GFE1 S5795PSX1 S6270OMA1 S6359PQF1 S6924FEF1 S6965QMR1 S7097GBQ1 S7098YDI1 S7211DMG1 S7255JKB1 S7271FDL1 S7395IJT1 S7603FTX1 S7863WFC1 S7894TIS1 S8262KYB1 S8514AUJ7 S8582QWA1 S8673SQO1 S8674VFG1 S8717EWB1 S8730IWG1 S8908YLE1 S9134KDF1 S9432GYO1 S9644GAH1 S9668OBK1 S9892SSG1)
	3dcalc -a /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/Lexical_Frequency/${subject}.lexfreq.clusters+tlrc. -b /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/Phonological_Neighborhood_Density/${subject}.phonological.neighborhood.density.clusters+tlrc. \
	-expr 'step(a)+2*step(b)' \
	-prefix /Volumes/Research/MyersLab/SPLATScast/SaraHannah_SPLATSebellum/MNI_maskedcerebellum_individual_stats_files/Participant_Clusters/LexFreq_PhonoNeighDen_ClusterOverlap/${subject}.INDIVIDUAL_ClusterOverlap_LexFreq_and_PhonoDen_AmpMod
end
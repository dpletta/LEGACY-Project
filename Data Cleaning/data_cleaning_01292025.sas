libname LEGACY "/home/u64063618/LEGACY/Datasets/";
run;

proc format;
			value YN 1 = "Yes"
							0 = "No"
							96 = "I don't know"
							99 = "Choose not to answer";
			value age 0 = "18-24 years"
							1 = "25-29 years"
							2 = "30-39 years"
							3 = "40+ years";
			value agefive 0 = "18-24 years"
							1 = "25-30 years"
							2 = "31-40 years"
							3 = "41-50 years"
							4 = "51+ years";
			value agefeb 0 = "18-24 years"
							1 = "25-29 years"
							2 = "30-39 years"
							3 = "40-79 years";
			value agejune 0 = "18-24 years"
							1 = "25-29 years"
							2 = "30-39 years"
							3 = "40+ years";
			value ageten 0 = "18-29"
							1 = "30-39"
							2 = "40-49"
							3 = "50-59"
							4 = "60-69"
							5 = "70+";
			value sex 1 = "AMAB"
						2 = "AFAB";
			value genderID 1 = "Male/Man"
							2 = "Female/Woman"
							3 = "Trans man/Female-to-male (FTM)"
							4 = "Trans woman/Male-to-female (MTF)"
							5 = "Gender non-binary/Genderqueer/Gender nonconforming"
							6 = "Agender"
							7 = "Bigender"
							97 = "Another gender";
			value gencat 1 = "Trans man (FTM)"
							2 = "Trans woman (MTF)"
							3 = "Genderqueer AFAB"
							4 = "Genderqueer AMAB"
							5 = "Another gender identity";
			value sori 1 = "Straight/heterosexual"
						2 = "Lesbian"
						3 = "Gay"
						4 = "Bisexual"
						5 = "Queer"
						6 = "Pansexual"
						7 = "Questioning/unsure"
						8 = "Asexual"
						9 = "Demisexual"
						97 = "Another sexual orientation";
			value racial 1 = "Asian"
							2 = "Native Hawaiian or other Pacific Islander" /*Was initially Pacific Islander*/
							3 = "Native Hawaiian"
							4 = "Black/African American"
							5 = "White"
							6 = "Hispanic/Latinx"
							7 = "American Indian/Alaskan Native"
							8 = "Biracial/Multiracial"
							9 = "Middle Eastern"
							10 = "Another race";
			value education 1 = "Did not complete 8th grade"
							2 = "Completed 8th grade"
							3 = "Some High School"
							4 = "Completed High School (received a diploma or GED)"
							5 = "Some College or Associate Degree"
							6 = "Completed College/Bachelor's Degree"
							7 = "Technical/Vocational School"
							8 = "Some Graduate School"
							9 = "Completed Graduate School"
							97 = "Other level of education";
			value educats 1 = "High school diploma or less"
							2 = "Associate degree, vocational/technical school, or some college"
							3 = "Four-year degree"
							4 = "Graduate degree"
							97 = "Another level of education";
			value hivstat 1 = "HIV positive"
							2 = "HIV negative"
							3 = "Undetermined"
							96 = "I don't know";
			value hivlevel 1 = "Undetectable (under 200)"
							2 = "Detectable (200 and above)"
							96 = "I don't know";
			value hivrisk 0 = "No risk "
							1 = "Low risk"
							2 = "Medium risk"
							3 = "High risk";
			value hivtimetest 1 = "Less than 3 months ago"
								2 = "3-6 months ago"
								3 = "6-9 months ago"
								4 = "9-12 months ago"
								5 = "More than 12 months ago";
			value prepscript 1 = "Within the past week"
								2 = "1-2 weeks ago"
								3 = "2-4 weeks ago"
								4 = "1-3 months ago"
								96 = "I don't know";
			value surg 0 = "Do not want or does not apply"
						1 = "I have had this"
						2 = "Definitely or may want"
						3 = "Do not want";
			value chestsurgtype 1 = "Reconstruction double-incision or bilateral mastectomy"
								2 = "Reconstruction inverted-T"
								3 = "Reconstruction keyhole"
								4 = "Reconstruction peri-areolar or fishmouth"
								96 = "Unsure";
			value phallotype 1 = "With urethral extension (urethroplasty)"
								0 = "Without urethral extension"
								96 = "Unsure";
			value hormonedesire 1 = "I have taken hormones"
								2 = "I have not taken hormones, but I want to"
								3 = "I have not taken hormones, but I may want to"
								4 = "I have not taken hormones, and I do not want to";
			value hormonesthree 0 = "I have not taken hormones, and I do not want to"
								1 = "I have not taken hormones, but I am interested in taking them"
								2 = "I have taken hormones";
			value hormoneadhere 1 = "Less than prescribed"
								2 = "Exactly as prescribed"
								3 = "More than prescribed"
								96 = "I don't know";
			value hormonesatisfy 1 = "Very satisfied"
									2 = "Mostly satisfied"
									3 = "Neutral"
									4 = "Mostly dissatisfied"
									5 = "Very dissatisfied";
			value GAStat 0 = "No hormones or gender-affirming procedures"
							1 = "Only hormones"
							2 = "Only gender-affirming procedures"
							3 = "Both hormones and gender-affirming procedures";
			value importantfive 1 = "Extremely important"
							2 = "Important"
							3 = "Neutral"
							4 = "Slightly important"
							5 = "Not important at all";
			value mentalhealth 0 = "No"
								1 = "Yes, once"
								2 = "Yes, more than once";
			value healthinsure 0 = "No health insurance"
								1 = "Public health insurance"
								2 = "Private health insurance";
			value smokefreq 0 = "Not at all"
							1 = "Some days"
							2 = "Every day";
			value DASTlvl 0 = "No problems reported"
							1 = "Low level"
							2 = "Moderate level"
							3 = "Substantial level"
							4 = "Severe level";
			value sfscore 1 = "Excellent"
							2 = "Very good"
							3 = "Good"
							4 = "Fair"
							5 = "Poor";
			value PHQlvl 0 = "Normal (0-2)"
							1 = "Mild (3-5)"
							2 = "Moderate (6-8)"
							3 = "Severe (9-12)";
			value PHQemr 0 = "Minimal depression (0-4)"
							1 = "Mild depression (5-9)"
							2 = "Moderate depression (10-14)"
							3 = "Moderately severe depression (15-19)"
							4 = "Severe depression (20-27)";
			value gaclass 1 = "Received gender affirming medical care"
							0 = "No gender affirming medical care";
			value prepind 0 = "No PrEP indication based on risk"
							1 = "PrEP indicated, but not on PrEP"
							2 = "PrEP indicated and on PrEP"
							3 = "Ineligible for PrEP (HIV+ serostatus)";
			value raceemr 1 = "White"
							2 = "American Indian or Alaskan Native"
							3 = "Asian"
							4 = "Black or African American"
							5 = "Multiracial"
							6 = "Native Hawaiian or other Pacific Islander";
			value racemin 0 = "White"
							1 = "Racial minority";
			value genbi 0 = "Gender nonbinary"
							1 = "Gender binary";
			value tcs 1 = "Strongly disagree"
						2 = "Somewhat disagree"
						3 = "Neither agree nor disagree"
						4 = "Somewhat agree"
						5 = "Strongly agree";
			value gds 1 = "Disagree completely"
						2 = "Somewhat disagree"
						3 = "Neutral"
						4 = "Agree somewhat"
						5 = "Agree completely";
			value genderemr 1 = "Male"
							2 = "Female"
							3 = "Genderqueer or not exclusively male or female"
							4 = "Missing/not reported";
			value raceemr 1 = "American Indian or Alaskan Native"
                            2 = "Asian"
                            3 = "Black or African American"
                            4 = "Multiracial"
                            5 = "Native Hawaiian or Other Pacific Islander"
                            6 = "White";
            value racecatfive 1 = "Another race"
            					2 = "Asian"
            					3 = "Black/African American"
            					4 = "Multiracial"
            					5 = "White";
			value ethnicityemr 0 = "Not hispanic/latinx"
								1 = "Hispanic/latinx";
			value missingthree 0 = "Missing"
							1 = "Explicit no"
							2 = "Explicit yes";
			value exposure 0 = "No exposure"
							1 = "Exposure";
			value disease 0 = "No disease"
							1 = "Disease";
			value insuranceemr 1 = "Private"
								2 = "Public"
								3 = "None/uninsured"
								4 = "Missing";
			value support 0 = "Low (0-35)"
							1 = "Moderate (36-60)"
							2 = "High (61-84)";
			value rc 0 = "White"
						1 = "Asian"
						2 = "Black/African American"
						3 = "Latinx/Hispanic"
						4 = "Biracial/Multiracial"
						5 = "Another Race";
			value employmentf 0 = "Full-time"
							1 = "Part-time"
							2 = "Less than part-time"
							3 = "Unemployed"
							4 = "Another employment status";
			value monthincomef 0 = "0-999"
							1 = "1000-3999"
							2 = "4000+";
			value child 0 = "No, neither physically or sexually abused"
						1 = "Yes, both physical and sexual abuse"
						2 = "Yes, physically abused"
						3 = "Yes, sexually abused"
						96 = "Unsure";
						
run;


data survey (where = (Age >= 18 or Age = .));
	set LEGACY.FHCL_FullSurvey_07122021
		(rename=
		(/*GENDER AFFIRMING SURGERIES*/
		/*Head*/
		vocal_cord_voice_surger = SURG_HEAD_1
		voice_therapy_non_surgi = SURG_HEAD_2
		facial_feminization_sur = SURG_HEAD_3
		facial_masculinization = SURG_HEAD_4
		tracheal_shave_reductio = SURG_HEAD_5
		/*Chest*/
		breast_implants = SURG_CHEST_1
		mastectomy = SURG_CHEST_2
		breast_reduction = SURG_CHEST_3
		chest_surgery_type = SURG_CHEST_4
		/*Abdomen*/
		butt_augmentation_such = SURG_ABD_1
		masculinizing_body_cont = SURG_ABD_2
		trunk_liposuction = SURG_ABD_3
		removal_of_uterus = SURG_ABD_4
		removal_of_cervix = SURG_ABD_5
		oophorectomy = SURG_ABD_6
		vaginectomy = SURG_ABD_7
		vaginoplasty = SURG_ABD_8
		labiaplasty = SURG_ABD_9
		metoidioplasty = SURG_ABD_10
		phalloplasty = SURG_ABD_11
		scrotoplasty = SURG_ABD_12
		orchiectomy = SURG_ABD_13
		urethroplasty = SURG_ABD_14
		/*Hair*/
		hair_removal_electrolys = SURG_HAIR_1
		hair_implants = SURG_HAIR_2
		face = SURG_HAIR_1_LOC_1
		genitals = SURG_HAIR_1_LOC_2
		chest = SURG_HAIR_1_LOC_3
		arms_legs = SURG_HAIR_1_LOC_4
		/*Fat grafting*/
		fat_grafting_e_g_face_h = SURG_FAT_1
		/*Other surgeries*/
		have_you_previously_had = SURG_OTHER
		other_procedures = SURG_OTHER_TEXT

		/*SURGERY SATISFACTION*/
		vocal_cord_satisfaction = SURG_SAT_HEAD_1
		voice_therapy_satisfaction = SURG_SAT_HEAD_2
		facial_fem_satisfaction = SURG_SAT_HEAD_3
		facial_masc_satisfaction = SURG_SAT_HEAD_4
		tracheal_shave_satisfaction = SURG_SAT_HEAD_5
		h5_breast_implants_breast = SURG_SAT_CHEST_1
		chest_top_satisfaction = SURG_SAT_CHEST_2
		chest_reduction_satisfaction = SURG_SAT_CHEST_3
		h5_butt_augmentation_such = SURG_SAT_ABD_1
		masc_contour_satisfaction = SURG_SAT_ABD_2
		fem_contour_satisfaction = SURG_SAT_ABD_3
		removal_of_uterus_satisfaction = SURG_SAT_ABD_4
		h5_removal_of_cervix = SURG_SAT_ABD_5
		oophorectomy_satisfaction = SURG_SAT_ABD_6
		vaginectomy_satisfaction = SURG_SAT_ABD_7
		vaginoplasty_satisfaction = SURG_SAT_ABD_8
		labiaplasty_satisfaction = SURG_SAT_ABD_9
		metoidioplasty_satisfaction = SURG_SAT_ABD_10
		h5_construction_of_a_penis = SURG_SAT_ABD_11
		scrotoplasty_satisfaction = SURG_SAT_ABD_12
		orchiectomy_satisfaction = SURG_SAT_ABD_13
		hair_removal_satisfaction = SURG_SAT_HAIR_1
		hair_implants_satisfaction = SURG_SAT_HAIR_2
		fat_grafting_satisfaction = SURG_SAT_FAT_1


		/*MENTAL HEALTH*/
		/*PHQ-4*/
		feeling_nervous_anxious_or = PHQ4_1
		not_being_able_to_stop_or = PHQ4_2
		feeling_down_depressed_or = PHQ4_3
		little_interest_or_pleasur = PHQ4_4
		/*KESSLER-6*/
		you_feel_so_depressed_that = KESS6_1
		you_feel_hopeless = KESS6_2
		you_feel_restless_or_fidge = KESS6_3
		you_feel_that_everything_w = KESS6_4
		you_feel_worthless = KESS6_5
		you_feel_nervous = KESS6_6
		/*Gender Dysphoria*/
		i_feel_strongly_that_my_ge = GD_1
		i_have_a_strong_dislike_fo = GD_2
		strong_dislike_fo = GD_3
		i_would_be_happier_if_i_ha = GD_4
		i_enjoy_seeing_my_naked_bo = GD_5
		i_have_considered_medical = GD_6
		i_have_a_strong_desire_to = GD_7
		i_feel_unhappy_every_time = GD_8
		i_wish_people_in_my_life_w = GD_9
		i_wish_people = GD_10
		i_am_experiencing_signific = GD_11
		i_feel_that_it_would_be_be = GD_12
		/*PTSD*/
		have_had_nightmares_about = PTSD_1
		tried_hard_not_to_think_ab = PTSD_2
		were_constantly_on_guard_w = PTSD_3
		felt_numb_or_detached_from = PTSD_4
		felt_guilty_or_unable_to_s = PTSD_5
		/*Transgender Congruence Scale*/
		i_am_not_proud_of_my_gende = TCS_1
		i_am_happy_that_i_have_the = TCS_2
		i_have_accepted_my_gender = TCS_3
		i_wish_i_was_not_transgend = TCS_4
		/*HEALTHCARE ACCESS*/
		/*Attitudes toward Fenway*/
		provider_knowledge = FENWAY_1
		gender_restrooms = FENWAY_2
		convenient_location = FENWAY_3
		marketing_signage_that_is = FENWAY_4
		co_location_of_multiple_se = FENWAY_5
		reputation_in_the_communit = FENWAY_6

		/*Intimate partner violence*/
		partner_violence = IPV_1
		partner_violence_2 = IPV_2
		partner_choke = IPV_3
		partner_weapon = IPV_4
		partner_sex = IPV_5
		partner_sex_2 = IPV_6
		partner_sex_3 = IPV_7
		partner_transition = IPV_8
		partner_identity_violence = IPV_9
		partner_out = IPV_10
		
		/*Brief resilience scale*/
		bounce_back = RES_1
		hard_time = RES_2
		recover = RES_3
		snap_back = RES_4
		little_trouble = RES_5
		set_backs = RES_6
		
		special_person_need = MSPSS_1
		special_person_joy = MSPSS_2
		family_help = MSPSS_3
		emotional_help_family = MSPSS_4
		special_person_comfort = MSPSS_5
		friends_help = MSPSS_6
		friends_wrong = MSPSS_7
		family_problems = MSPSS_8
		friends_joy = MSPSS_9
		special_person_feelings = MSPSS_10
		family_decisions = MSPSS_11
		friends_problems = MSPSS_12

		));
		
	format Latinx sexual_minority
		hiv_tests hiv_test_6 hiv_meds_ever hiv_meds_current hiv_suppressed hiv_positive
		prep_heard prep_take prep_30days partner_prep partner_prep_desire prep_side_effects_1--prep_side_effects_8
		pep_heard pep_take pep_take_6m pep_reasons_1--pep_reasons_97
		sti_test sti_test_6m sti_pos_test sti_pos_test_6m sti_positive sti_infections_1--sti_infections_97
		socialize_1--socialize_97
		pet
		hormones hormone_types_ever_1--hormone_types_ever_5
		current_hormone hormone_current_type_1--hormone_current_type_5
		testosterone_1--testosterone_5
		estrogen_1--estrogen_6
		progesterone_1--progesterone_4
		cig_100 tobacco DAST_clinical AUDIT_clinical_men AUDIT_clinical_women
		PHQ4_anxiety PHQ4_depression KESS6_clinical intersex_dx hormone_positive_1--hormone_positive_98
		surg_head_di surg_chest_di surg_abd_di HPV_Code Hep_B_Code Hep_C_Code HIV_Positive Chlamydia_Code Syphilis_Code
		SI_BaseSurvey SI_Baseline SA_BaseSurvey SA_BaseSurvey_SixMos YN.

		AgeCat age. AgeCat_5 agefive. AgeCatTen ageten. Age_FEB2020_emr_cat agefeb. Age_JUN2020_emr_cat agejune. sex_assigned sab_emr sex. Gender genderID. GenderCat gencat.
		gender_binary genbi. Sexori sori.
		race_basesurvey racial. RaceCat rc.
		edu education. EduCat educats.
		hiv_result hivstat. viral_load_levels hivlevel. viral_load_time hivtimetest. HIV_risk hivrisk.
		prep_prescript prepscript. PrEP_Indicated prepind.
		hormones hormonedesire. hormone_adherence hormoneadhere. hormone_satisfaction hormonesatisfy. hormones_three hormonesthree.
		support_level support. childhood_abuse child.

		SURG_HEAD_1--SURG_HEAD_5 SURG_CHEST_1--SURG_CHEST_3 SURG_ABD_1--SURG_ABD_13 SURG_HAIR_1 SURG_HAIR_1_LOC_1--SURG_HAIR_1_LOC_4 SURG_HAIR_2 SURG_FAT_1 SURG_OTHER surg.
		SURG_CHEST_4 chestsurgtype. SURG_ABD_14 phallotype.

		FENWAY_1--FENWAY_6 importantfive.
		GACat GAStat. suicide_thoughts suicide_thoughts_2 suicide_attempt suicide_attempt_2 self_injury self_injury_2
		hospitalized hospitalized_2 mentalhealth. PHQ4_level PHQlvl. sf12_1 sfscore.
		cig_frequency smokefreq. DAST_level DASTlvl. insurance healthinsure. GADi gaclass.;

	label AgeCat = "Age"
			AgeCatTen = "Age"
			race = "Race/ethnicity"
			racial_minority = "Racial minority (non-white)"
			Latinx = "Hispanic/Latinx ethnicity?"
			Gender = "Gender identity"
			GenderCat = "Gender identity"
			gender_binary = "Binary gender identity"
			sex_assigned = "Sex assigned at birth"
			intersex_dx = "Previously diagnosed with medically intersex condition"
			Sexori = "Sexual orientation"
			sexual_minority = "Sexual minority (non-heterosexual/straight)"
			edu = "Highest level of education"
			EduCat = "Highest level of education"
			GACat = "Category of gender affirming medical care received"
			GAdi = "Any form of gender affirming medical care?"
			hiv_tests = "Have you ever been tested for HIV?"
			hiv_test_6 = "6-month survey: Have you been tested for HIV in the past 6 months?"
			hiv_result = "What was the result of your most recent HIV test?"
			viral_load_levels = "What was your most recent viral load?"
			viral_load_time = "How long ago did you have your blood drawn to learn your viral load?"
			hiv_suppressed = "HIV viral suppression (viral load <200)"
			prep_heard = "Have you ever heard about 'PrEP' (pre-exposure prophylaxis) for the prevention of HIV infection in people who are HIV-negative?"
			prep_take = "Have you ever taken PrEP (Truvada) for the prevention of HIV infection?"
			prep_30days = "Are you currently (in the last 30 days) taking PrEP (Truvada) for the prevention of HIV infection?"
			prep_prescript = "When was the last time you picked up a prescription for PrEP (Truvada)?"
			prep_missed = "In the past 7 days, how many days have you missed taking a dose of PrEP?"
			partner_prep = "Have any of your sexual partners ever told you that they are taking PrEP to prevent HIV-infection?"
			partner_prep_desire = "Would you want your HIV-negative partner(s) to take PrEP?"
			prep_side_effects_1 = "PrEP side effect (ever) - Side effects (nausea, headaches, etc.)"
			prep_side_effects_2 = "PrEP side effect (ever) - People think I have HIV"
			prep_side_effects_3 = "PrEP side effect (ever) - Interactions with my hormones"
			prep_side_effects_4 = "PrEP side effect (ever) - Don't like taking a pill every day"
			prep_side_effects_5 = "PrEP side effect (ever) - People think you have a lot of different sex partners"
			prep_side_effects_6 = "PrEP side effect (ever) - Your sex partner(s) don't want to use condoms because you're on PrEP"
			prep_side_effects_7 = "PrEP side effect (ever) - You feel like you're not at risk for HIV"
			prep_side_effects_8 = "PrEP side effect (ever) - None"
			prep_side_effects_n = "Total number of PrEP side effects"
			pep_heard = "Have you heard of PEP (post-exposure prophylaxis) for the prevention of HIV infection after a potential exposure to HIV?"
			pep_take = "Have you ever taken PEP (post-exposure prophylaxis) for the prevention of HIV infection after a potential exposure to HIV?"
			pep_take_6m = "In the last 6 months, have you taken PEP (post-exposure prophylaxis)?"
			pep_reasons_1 = "Why did you take PEP (post-exposure prophylaxis)? - Had unprotected sex (sex without a condom)"
			pep_reasons_2 = "Why did you take PEP (post-exposure prophylaxis)? - Condom broke or was used improperly"
			pep_reasons_3 = "Why did you take PEP (post-exposure prophylaxis)? - Non-consensual sex or was forced to have sex"
			pep_reasons_4 = "Why did you take PEP (post-exposure prophylaxis)? - Shared needles with someone else"
			pep_reasons_5 = "Why did you take PEP (post-exposure prophylaxis)? - Occupational exposure (e.g., accidental needle stick)"
			pep_reasons_97 = "Why did you take PEP (post-exposure prophylaxis)? - Another reason"
			pep_reasons_n = "Total number of reasons for taking PEP"
			sti_test = "Have you ever been tested for an STI (non-HIV)"
			sti_pos_test = "Have you ever tested positive for an STI (non-HIV)"
			sti_infections_1 = "Anal warts (HPV)"
			sti_infections_2 = "Genital warts (HPV)"
			sti_infections_3 = "Chlamydia"
			sti_infections_4 = "Trichomoniasis ('Trich')"
			sti_infections_5 = "Gonorrhea ('Clap')"
			sti_infections_6 = "Genital herpes"
			sti_infections_7 = "Hepatitis B"
			sti_infections_8 = "Hepatitis C"
			sti_infections_9 = "Syphilis"
			sti_infections_10 = "I don't remember the name of the STI, but tested positive"
			sti_infections_11 = "Human papillomavirus (HPV)"
			sti_infections_12 = "Herpes simplex virus type I or II"
			sti_infections_97 = "Another STI"
			sti_infections_n = "Total number of STIs (Lifetime)"
			SURG_HEAD_1 = "Vocal cord/voice surgery"
			SURG_HEAD_2 = "Voice therapy (non-surgical)"
			SURG_HEAD_3 = "Facial feminization surgery (such as nose, brow, chin, cheeks)"
			SURG_HEAD_4 = "Facial masculinization surgery (such as nose, brow, chin, cheeks)"
			SURG_HEAD_5	= "Tracheal shave (reduction of 'Adams apple')"
			SURG_CHEST_1 = "Breast implants (Breast/pectoral augmentation)"
			SURG_CHEST_2 = "Chest/top surgery (mastectomy)"
			SURG_CHEST_3 = "Chest reduction surgery without breast removal"
			SURG_CHEST_4 = "Which of the following best describes the type of (top surgery) you had?"
			SURG_ABD_1 = "Butt augmentation (such as a Brazilian Butt Lift or other buttocks/hip surgery)"
			SURG_ABD_2 = "Masculinizing body contouring (liposuction in the upper and lower body)"
			SURG_ABD_3 = "Feminizing body contouring (trunk liposuction)"
			SURG_ABD_4 = "Removal of uterus"
			SURG_ABD_5 = "Removal of cervix"
			SURG_ABD_6 = "Removal of one or both ovaries (oophorectomy)"
			SURG_ABD_7 = "Removal of vagina (vaginectomy)"
			SURG_ABD_8 = "Constructing a vagina/neovagina (vaginoplasty)"
			SURG_ABD_9 = "Constructing a labia (labiaplasty)"
			SURG_ABD_10 = "Construction of a penis/neophallus with metoidioplasty ('meta' or 'meto')"
			SURG_ABD_11 = "Construction of a penis/neophallus using skin from the arm/leg/torso (phalloplasty)"
			SURG_ABD_12 = "Testicular implants (scrotoplasty)"
			SURG_ABD_13 = "Removal of testes (orchiectomy)"
			SURG_ABD_14 = "Which of the following best applies to the procedure you either had or potentially want (phalloplasty)?"
			SURG_HAIR_1 = "Hair removal/electrolysis"
			SURG_HAIR_1_LOC_1 = "Hair removal location face"
			SURG_HAIR_1_LOC_2 = "Hair removal location genitals"
			SURG_HAIR_1_LOC_3 = "Hair removal location chest"
			SURG_HAIR_1_LOC_4 = "Hair removal location arms/legs"
			SURG_HAIR_2 = "Hair implants"
			SURG_FAT_1 = "Fat grafting"
			SURG_OTHER = "Have you previously had any other surgeries?"
			SURG_HEAD_DI_1 = "Dichotomous, Vocal cord/voice surgery"
			SURG_HEAD_DI_2 = "Dichotomous, Voice therapy (non-surgical)"
			SURG_HEAD_DI_3 = "Dichotomous, Facial feminization surgery (such as nose, brow, chin, cheeks)"
			SURG_HEAD_DI_4 = "Dichotomous, Facial masculinization surgery (such as nose, brow, chin, cheeks)"
			SURG_HEAD_DI_5	= "Dichotomous, Tracheal shave (reduction of 'Adams apple')"
			SURG_CHEST_DI_1 = "Dichotomous, Breast implants (Breast/pectoral augmentation)"
			SURG_CHEST_DI_2 = "Dichotomous, Chest/top surgery (mastectomy)"
			SURG_CHEST_DI_3 = "Dichotomous, Chest reduction surgery without breast removal"
			SURG_ABD_DI_1 = "Dichotomous, Butt augmentation (such as a Brazilian Butt Lift or other buttocks/hip surgery)"
			SURG_ABD_DI_2 = "Dichotomous, Masculinizing body contouring (liposuction in the upper and lower body)"
			SURG_ABD_DI_3 = "Dichotomous, Feminizing body contouring (trunk liposuction)"
			SURG_ABD_DI_4 = "Dichotomous, Removal of uterus"
			SURG_ABD_DI_5 = "Dichotomous, Removal of cervix"
			SURG_ABD_DI_6 = "Dichotomous, Removal of one or both ovaries (oophorectomy)"
			SURG_ABD_DI_7 = "Dichotomous, Removal of vagina (vaginectomy)"
			SURG_ABD_DI_8 = "Dichotomous, Constructing a vagina/neovagina (vaginoplasty)"
			SURG_ABD_DI_9 = "Dichotomous, Constructing a labia (labiaplasty)"
			SURG_ABD_DI_10 = "Dichotomous, Construction of a penis/neophallus with metoidioplasty ('meta' or 'meto')"
			SURG_ABD_DI_11 = "Dichotomous, Construction of a penis/neophallus using skin from the arm/leg/torso (phalloplasty)"
			SURG_ABD_DI_12 = "Dichotomous, Testicular implants (scrotoplasty)"
			SURG_ABD_DI_13 = "Dichotomous, Removal of testes (orchiectomy)"
			SURG_HAIR_DI_1 = "Dichotomous, Hair removal/electrolysis"
			SURG_HAIR_DI_2 = "Dichotomous, Hair implants"
			SURG_FAT_DI_1 = "Dichotomous, Fat grafting"
			SURG_SAT_HEAD_1 = "Satisfaction: Vocal cord/voice surgery"
			SURG_SAT_HEAD_2 = "Satisfaction: Voice therapy (non-surgical)"
			SURG_SAT_HEAD_3 = "Satisfaction: Facial feminization surgery (such as nose, brow, chin, cheeks)"
			SURG_SAT_HEAD_4 = "Satisfaction: Facial masculinization surgery (such as nose, brow, chin, cheeks)"
			SURG_SAT_HEAD_5	= "Satisfaction: Tracheal shave (reduction of 'Adams apple')"
			SURG_SAT_CHEST_1 = "Satisfaction: Breast implants (Breast/pectoral augmentation)"
			SURG_SAT_CHEST_2 = "Satisfaction: Chest/top surgery (mastectomy)"
			SURG_SAT_CHEST_3 = "Satisfaction: Chest reduction surgery without breast removal"
			SURG_SAT_ABD_1 = "Satisfaction: Butt augmentation (such as a Brazilian Butt Lift or other buttocks/hip surgery)"
			SURG_SAT_ABD_2 = "Satisfaction: Masculinizing body contouring (liposuction in the upper and lower body)"
			SURG_SAT_ABD_3 = "Satisfaction: Feminizing body contouring (trunk liposuction)"
			SURG_SAT_ABD_4 = "Satisfaction: Removal of uterus"
			SURG_SAT_ABD_5 = "Satisfaction: Removal of cervix"
			SURG_SAT_ABD_6 = "Satisfaction: Removal of one or both ovaries (oophorectomy)"
			SURG_SAT_ABD_7 = "Satisfaction: Removal of vagina (vaginectomy)"
			SURG_SAT_ABD_8 = "Satisfaction: Constructing a vagina/neovagina (vaginoplasty)"
			SURG_SAT_ABD_9 = "Satisfaction: Constructing a labia (labiaplasty)"
			SURG_SAT_ABD_10 = "Satisfaction: Construction of a penis/neophallus with metoidioplasty ('meta' or 'meto')"
			SURG_SAT_ABD_11 = "Satisfaction: Construction of a penis/neophallus using skin from the arm/leg/torso (phalloplasty)"
			SURG_SAT_ABD_12 = "Satisfaction: Testicular implants (scrotoplasty)"
			SURG_SAT_ABD_13 = "Satisfaction: Removal of testes (orchiectomy)"
			SURG_SAT_HAIR_1 = "Satisfaction: Hair removal/electrolysis"
			SURG_SAT_HAIR_2 = "Satisfaction: Hair implants"
			SURG_SAT_FAT_1 = "Satisfaction: Fat grafting"
			/*Surgical Complications*/
			SURG_COM_HEAD_1 = "Complication: Vocal cord/voice surgery"
			SURG_COM_HEAD_2 = "Complication: Voice therapy (non-surgical)"
			SURG_COM_HEAD_3 = "Complication: Facial feminization surgery (such as nose, brow, chin, cheeks)"
			SURG_COM_HEAD_4 = "Complication: Facial masculinization surgery (such as nose, brow, chin, cheeks)"
			SURG_COM_HEAD_5	= "Complication: Tracheal shave (reduction of 'Adams apple')"
			SURG_COM_CHEST_1 = "Complication: Breast implants (Breast/pectoral augmentation)"
			SURG_COM_CHEST_2 = "Complication: Chest/top surgery (mastectomy)"
			SURG_COM_CHEST_3 = "Complication: Chest reduction surgery without breast removal"
			SURG_COM_ABD_1 = "Complication: Butt augmentation (such as a Brazilian Butt Lift or other buttocks/hip surgery)"
			SURG_COM_ABD_2 = "Complication: Masculinizing body contouring (liposuction in the upper and lower body)"
			SURG_COM_ABD_3 = "Complication: Feminizing body contouring (trunk liposuction)"
			SURG_COM_ABD_4 = "Complication: Removal of uterus"
			SURG_COM_ABD_5 = "Complication: Removal of cervix"
			SURG_COM_ABD_6 = "Complication: Removal of one or both ovaries (oophorectomy)"
			SURG_COM_ABD_7 = "Complication: Removal of vagina (vaginectomy)"
			SURG_COM_ABD_8 = "Complication: Constructing a vagina/neovagina (vaginoplasty)"
			SURG_COM_ABD_9 = "Complication: Constructing a labia (labiaplasty)"
			SURG_COM_ABD_10 = "Complication: Construction of a penis/neophallus with metoidioplasty ('meta' or 'meto')"
			SURG_COM_ABD_11 = "Complication: Construction of a penis/neophallus using skin from the arm/leg/torso (phalloplasty)"
			SURG_COM_ABD_12 = "Complication: Testicular implants (scrotoplasty)"
			SURG_COM_ABD_13 = "Complication: Removal of testes (orchiectomy)"
			SURG_COM_HAIR_1 = "Complication: Hair removal/electrolysis"
			SURG_COM_HAIR_2 = "Complication: Hair implants"
			SURG_COM_FAT_1 = "Complication: Fat grafting"

			/*Hormones*/
			hormones = "Have you ever taken hormones...?"
			hormone_types_ever_1 = "Which types of hormones have you ever taken for gender affirmation/transition? - Testosterone"
			hormone_types_ever_2 = "Which types of hormones have you ever taken for gender affirmation/transition? - Estrogen"
			hormone_types_ever_3 = "Which types of hormones have you ever taken for gender affirmation/transition? - Antiandrogens (spironolactone, finasteride, cyproterone)"
			hormone_types_ever_4 = "Which types of hormones have you ever taken for gender affirmation/transition? - Hormone blockers"
			hormone_types_ever_5 = "Which types of hormones have you ever taken for gender affirmation/transition? - Progesterone"
			current_hormone = "Are you currently taking hormones for gender affirmation or gender transition?"
			hormone_current_type_1 = "Which types of hormones do you currently take for gender affirmation/transition? - Testosterone"
			hormone_current_type_2 = "Which types of hormones do you currently take for gender affirmation/transition? - Estrogen"
			hormone_current_type_3 = "Which types of hormones do you currently take for gender affirmation/transition? - Antiandrogens (spironolactone, finasteride, cyproterone)"
			hormone_current_type_4 = "Which types of hormones do you currently take for gender affirmation/transition? - Hormone blockers"
			hormone_current_type_5 = "Which types of hormones do you currently take for gender affirmation/transition? - Progesterone"
			hormone_adherence = "In the past 6 months, which of the following best describes the total amount of hormones you took compared to the amount your doctor prescribed?"
			hormone_satisfaction = "Within the past 6 months, how satisfied have you been with the hormone regimen you received?"
			hormone_positive_1 = "Which of the following statements describes your experience being on hormones? - I feel more confident"
			hormone_positive_2 = "Which of the following statements describes your experience being on hormones? - I feel more at home in my body"
			hormone_positive_3 = "Which of the following statements describes your experience being on hormones? - I feel my general mood has improved"
			hormone_positive_4 = "Which of the following statements describes your experience being on hormones? - I feel like I have more energy"
			hormone_positive_5 = "Which of the following statements describes your experience being on hormones? - I feel stronger"
			hormone_positive_6 = "Which of the following statements describes your experience being on hormones? - I feel my relationships with other people have improved"
			hormone_positive_7 = "Which of the following statements describes your experience being on hormones? - I feel my sex life has improved"
			hormone_positive_97 = "Which of the following statements describes your experience being on hormones? - Other positive experience"
			hormone_positive_98 = "Which of the following statements describes your experience being on hormones? - None of these experiences apply to me"
			hormone_3Cat = "Desire to take hormones (collapsed response categories)"
			hormone_di = "Gender affirming hormone use within lifetime"
			FENWAY_1 = "My provider's knowledge of trans health issues"
			FENWAY_2 = "Gender non-specfic restrooms"
			FENWAY_3 = "Convenient location"
			FENWAY_4 = "Marketing/signage that is inclusive of trans folks"
			FENWAY_5 = "Co-location of multiple services at one clinic"
			FENWAY_6 = "Reputation in the community"
			socialize_1 = "How do you socialize with other transgender and/or non-binary people? - In political activism"
			socialize_2 = "How do you socialize with other transgender and/or non-binary people? - Socializing in person"
			socialize_3 = "How do you socialize with other transgender and/or non-binary people? - Online (Facebook, Twitter, etc.)"
			socialize_4 = "How do you socialize with other transgender and/or non-binary people? - In support groups"
			socialize_5 = "How do you socialize with other transgender and/or non-binary people? - I do not socialize with other transgender and non-binary people"
			socialize_97 = "How do you socialize with other transgender and/or non-binary people? - Other ways"
			insurance = "Type of health insurance"
			hrql = "Health Related Quality of Life [discrete score 0-100]"
			cig_100 = "Have you smoked at least 100 cigarettes in your ENTIRE LIFE?:"
			cig_frequency = "Do you NOW smoke cigarettes every day, some days or not at all?"
			tobacco = "In the past 6 months, have you used any other tobacco products (not including cigarettes)?"
			tobacco_N6 = "Number of tobacco products consumed in the past 6 months (not including cigarettes)"
			DAST_level = "DAST clinical ranges"
			DAST_clinical = "Clinically significant DAST score for substance use (moderate to severe score)"
			AUDIT_clinical_men = "Clinically significant AUDIT-C score for hazardous drinking or active alcohol use disorders (in men)"
			AUDIT_clinical_women = "Clinically significant AUDIT-C score for hazardous drinking or active alcohol use disorders (in women)"
			penile_condomless = "Number of sexual partners in the past 6 months with whom participant had genital or anal sex with penile contact without a condom"
			condomless_receptive_genital = "Number of times the participant had condomless receptive genital sex in the past 6 months"
			condomless_recep_anal = "Number of times the participant had condomless receptive anal sex in the past 6 months"
			testosterone_1 = "Form of testosterone currently used - Intramuscular injection (into the muscle)"
			testosterone_2 = "Form of testosterone currently used - Subcutaneous injection (under the skin)"
			testosterone_3 = "Form of testosterone currently used - Gel or cream"
			testosterone_4 = "Form of testosterone currently used - Patch"
			testosterone_5 = "Form of testosterone currently used - Implanted pellet"
			estrogen_1 = "Form of estrogen currently used - Intramuscular injection (into the muscle)"
			estrogen_2 = "Form of estrogen currently used - Subcutaneous injection (under the skin)"
			estrogen_3 = "Form of estrogen currently used - Gel or cream"
			estrogen_4 = "Form of estrogen currently used - Patch"
			estrogen_5 = "Form of estrogen currently used - Pill (sublingual - under the tongue)"
			estrogen_6 = "Form of estrogen currently used - Pill (oral)"
			progesterone_1 = "Form of progesterone currently used - Intramuscular injection (into the muscle)"
			progesterone_2 = "Form of progesterone currently used - Subcutaneous injection (under the skin)"
			progesterone_3 = "Form of progesterone currently used - Cream"
			progesterone_4 = "Form of progesterone currently used - Oral/pill"
			SI_BaseSurvey = "Suicidal ideation within lifetime"
			SA_BaseSurvey = "Suicide attempt within lifetime"
			TCS_2 = "I am happy that I have the gender identity that I do"
			TCS_3 = "I have accepted my gender identity"
			GD_5 = "I enjoy seeing my naked body in the mirror"

			/*Mental Health at Baseline*/
			sf12_1 = "SF-12 composite score for physical and mental health"
			PHQ4_level = "PHQ-4, clinical ranges for scores"
			PHQ4_anxiety = "PHQ-4 clinically significant anxiety score (3+)"
			PHQ4_depression = "PHQ-4 clinically significant depression score (3+)"
			KESS6_clinical = "KESSLER-6 clinically significant score for severe psychological distress (score 13+)"
			suicide_thoughts = "Did you ever in your life have thoughts of killing yourself?"
			suicide_thoughts_2 = "Have you had thoughts of killing yourself in the past 6 months?"
			suicide_attempt = "Have you ever attempted suicide?"
			suicide_attempt_2 = "In the past 6 months, have you attempted suicide?"
			self_injury = "Did you ever do something to hurt yourself on purpose, but without wanting to die?"
			self_injury_2 = "In the past 6 months, did you do something to hurt yourself on purpose, but without wanting to die?"
			hospitalized = "Have you ever been hospitalized due to your mental health?"
			hospitalized_2 = "In the past 6 months, were you hospitalized due to your mental health?"
			SA_BaseSurvey_6Mos = "Suicide attempt in the past 6 months"
			SA_BaseSurvey_Di = "Lifetime suicide attempt"
			SA_BaseSurvey_6Mos_Di = "Last 6-months suicide attempt"

			surg_head_n = "Total number of facial or vocal procedures"
			surg_chest_n = "Total number of procedures in chest area"
			surg_abd_n = "Total number of procedures in abdomen area"
			surg_hair_n = "Total number of procedures regarding hair"
			surg_total_n = "Total number of gender affirming procedures received"
			HIV_risk = "Self-perceived level of risk for HIV infection based on the past 6 months"
			hiv_positive = "HIV-positive serostatus"
			sti_positive = "Prior STI diagnosis (non-HIV)"
			baseline_ratedhealth_high = "Self-reported overall health of excellent, very good, or good"
			
			;
			
/*******************CLEANING WRITE IN DATA************/
	if hormone_age_attempt = 2000 then hormone_age_attempt = .;

/*******************DATA CLEANING******************/
	if wave = 0 then month = 0;
	if wave = 1 then month = 6;
	if wave = 2 then month = 12;
	
	/*SURGICAL COMPLICATIONS*/
	SURG_COM_HEAD_1 = input(complications_voice_surgery, $1000.);
	SURG_COM_HEAD_2 = input(complications_voice_therapy, $1000.);
	SURG_COM_HEAD_3 = input(complications_facial_fem, $1000.);
	SURG_COM_HEAD_4 = input(complications_facial_masc, $1000.);
	SURG_COM_HEAD_5 = input(complications_tracheal_shave, $1000.);
	SURG_COM_CHEST_1 = input(complications_breast_implants, $1000.);
	SURG_COM_CHEST_2 = input(complications_mastectomy, $1000.);
	SURG_COM_CHEST_3 = input(complications_breast_reduction, $1000.);
	SURG_COM_ABD_1 = input(complications_butt_augmentation, $1000.);
	SURG_COM_ABD_2 = input(complications_masc_body, $1000.);
	SURG_COM_ABD_3 = input(complications_fem_body, $1000.);
	SURG_COM_ABD_4 = input(complications_removal_uterus, $1000.);
	SURG_COM_ABD_5 = input(complications_removal_cervix, $1000.);
	SURG_COM_ABD_6 = input(complications_oophorectomy, $1000.);
	SURG_COM_ABD_7 = input(complications_vaginectomy, $1000.);
	SURG_COM_ABD_8 = input(complications_vaginoplasty, $1000.);
	SURG_COM_ABD_9 = input(complications_labiaplasty, $1000.);
	SURG_COM_ABD_10 = input(complications_metoidioplasty, $1000.);
	SURG_COM_ABD_11 = input(complications_phalloplasty, $1000.);
	SURG_COM_ABD_12 = input(complications_scrotoplasty, $1000.);
	SURG_COM_ABD_13 = input(complications_orchiectomy, $1000.);
	SURG_COM_HAIR_1 = input(complications_hair_removal, $1000.);
	SURG_COM_HAIR_2 = input(complications_hair_implants, $1000.);
	SURG_COM_FAT_1 = input(complications_grafting, $1000.);
		
	array surgclean_head (5) SURG_HEAD_1--SURG_HEAD_5;
		do i = 1 to 5;
		if surgclean_head(i) = 99 then surgclean_head(i) = .;
			else if surgclean_head(i) = 98 then surgclean_head(i) = 0;
			else if 2 <= surgclean_head(i) <= 3 then surgclean_head(i) = 2;
			else if surgclean_head(i) = 4 then surgclean_head(i) = 0;
	end;
	array surgclean_chest (3) SURG_CHEST_1--SURG_CHEST_3;
		do i = 1 to 3;
		if surgclean_chest(i) = 99 then surgclean_chest(i) = .;
			else if surgclean_chest(i) = 98 then surgclean_chest(i) = 0;
			else if 2 <= surgclean_chest(i) <= 3 then surgclean_chest(i) = 2;
			else if surgclean_chest(i) = 4 then surgclean_chest(i) = 0;
	end;
	array surgclean_abd (13) SURG_ABD_1--SURG_ABD_13;
		do i = 1 to 13;
		if surgclean_abd(i) = 99 then surgclean_abd(i) = .;
			else if surgclean_abd(i) = 98 then surgclean_abd(i) = 0;
			else if 2 <= surgclean_abd(i) <= 3 then surgclean_abd(i) = 2;
			else if surgclean_abd(i) = 4 then surgclean_abd(i) = 0;
	end;
	array surgclean_hair (4) SURG_HAIR_1_LOC_1--SURG_HAIR_1_LOC_4;
		do i = 1 to 4;
			if surgclean_hair(i) = 99 then surgclean_hair(i) = .;
			else if surgclean_hair(i) = 98 then surgclean_hair(i) = 0;
			else if 2 <= surgclean_hair(i) <= 3 then surgclean_hair(i) = 2;
			else if surgclean_hair(i) = 4 then surgclean_hair(i) = 0;
	end;
	array satclean_chest (3) SURG_SAT_CHEST_1--SURG_SAT_CHEST_3;
		do i = 1 to 3;
		if satclean_chest(i) = 99 then satclean_chest(i) = .;
	end;
	array satclean_abd (13) SURG_SAT_ABD_1--SURG_SAT_ABD_13;
		do i = 1 to 13;
		if satclean_abd(i) = 99 then satclean_abd(i) = .;
	end;
	if SURG_ABD_14 = 99 then SURG_ABD_14 = .;
	if SURG_HAIR_1 = 99 then SURG_HAIR_1 = .;
		else if SURG_HAIR_1 = 98 then SURG_HAIR_1 = 0;
		else if 2 <= SURG_HAIR_1 <= 3 then SURG_HAIR_1 = 2;
		else if SURG_HAIR_1 = 4 then SURG_HAIR_1 = 0;
	if SURG_HAIR_2 = 99 then SURG_HAIR_2 = .;
		else if SURG_HAIR_2 = 98 then SURG_HAIR_2 = 0;
		else if 2 <= SURG_HAIR_2 <= 3 then SURG_HAIR_2 = 2;
		else if SURG_HAIR_2 = 4 then SURG_HAIR_2 = 0;
	if SURG_FAT_1 = 99 then SURG_FAT_1 = .;
		else if SURG_FAT_1 = 98 then SURG_FAT_1 = 0;
		else if 2 <= SURG_FAT_1 <= 3 then SURG_FAT_1 = 2;
		else if SURG_FAT_1 = 4 then SURG_FAT_1 = 0;
	if SURG_OTHER = 99 then SURG_OTHER = .;
		else if SURG_OTHER = 98 then SURG_OTHER = 0;
		else if 2 <= SURG_OTHER <= 3 then SURG_OTHER = 2;
		else if SURG_OTHER = 4 then SURG_OTHER = 0;
	*Cleaning surgery satisfaction variables;
	if SURG_SAT_HEAD_1 = 99 then SURG_SAT_HEAD_1 = .;
	if SURG_SAT_HEAD_2 = 99 then SURG_SAT_HEAD_2 = .;
	if SURG_SAT_HEAD_3 = 99 then SURG_SAT_HEAD_3 = .;
	if SURG_SAT_HEAD_4 = 99 then SURG_SAT_HEAD_4 = .;
	if SURG_SAT_HEAD_5 = 99 then SURG_SAT_HEAD_5 = .;
	if SURG_SAT_HAIR_1_LOC_1 = 99 then SURG_SAT_HAIR_1_LOC_1 = .;
	if SURG_SAT_HAIR_1_LOC_2 = 99 then SURG_SAT_HAIR_1_LOC_2 = .;
	if SURG_SAT_HAIR_1_LOC_3 = 99 then SURG_SAT_HAIR_1_LOC_3 = .;
	if SURG_SAT_HAIR_1_LOC_4 = 99 then SURG_SAT_HAIR_1_LOC_4 = .;
	/*Cleaning variables*/
	if Age = 99 then Age = .;
	if Age = . then AgeCat = .;
		else if 18 <= Age <= 24 then AgeCat = 0;
		else if 25 <= Age <= 29 then AgeCat = 1;
		else if 30 <= Age <= 39 then AgeCat = 2;
		else if 40 <= Age <= 100 then AgeCat = 3;
	if Age = . then AgeCatTen = .;
		else if 18 <= Age <= 29 then AgeCatTen = 0;
		else if 30 <= Age <= 39 then AgeCatTen = 1;
		else if 40 <= Age <= 49 then AgeCatTen = 2;
		else if 50 <= Age <= 59 then AgeCatTen = 3;
		else if 60 <= Age <= 69 then AgeCatTen = 4;
		else if 70 <= Age <= 100 then AgeCatTen = 5;
	if gender = 99 then gender = .;
	if gender = . then GenderCat = .;
		else if gender = 1 or gender = 3 then GenderCat = 1; /*Trans man*/
		else if gender = 2 or gender = 4 then GenderCat = 2; /*Trans woman*/
	if gender_other in ("Queer, trans masculine. He him pronouns but straddle gender still", "Trans guy", "Trans masculine",
	"agender/transmasculine") then GenderCat = 1;
	if gender_other in ("Female", "Trans Feminine", "Trans Femme", "librafeminine") then GenderCat = 2;
	if gender_other in ("Butch", "I would say transgender and gender non-binary - not either or", "Combination of FTM and non-binary", 
	"Non-binary", "Non-binary Trans Woman", "Non-binary trans womxn", "Non-binary transmasculine", "Non-binary transmasculine or agender",
	"Nonbinary", "Nonbinary / אנדרוגינוס (traditional Jewish gender)", "Nonbinary Agender/Demigirl MTF",
	"Third", "Third gender", "Trans", "Two spirit", "Witch", "non-binary", "nonbinary", "nonbinary trans guy",
	"nonbinary transmasc", "post-gendered", "transgender ftm, Nonbinary", "transgender non-binary",
	"transmasculine non binary") then gender = 5; *nonbinary;
	if gender_other in ("Genderless") then gender = 6; *agender;
	if sex_assigned = 2 and gender in (5,6,7) then GenderCat = 3; /*NB AFAB*/
	if sex_assigned = 1 and gender in (5,6,7) then GenderCat = 4; /*NB AMAB*/
	if sexori = 99 then sexori = .;
	if sexori = 9 then sexori = 97; /*Recoding demisexual to another sexual orientation due to small N*/
	if sexori = . then sexual_minority = .;
		else if sexori in (2,3,4,5,6,7,8,9,97) then sexual_minority = 1;
		else if sexori = 1 then sexual_minority = 0;
	if race_99 = 1 then race = .;
	if sex_assigned = 99 then sex_assigned = .;
	if intersex_dx = 96 or intersex_dx = 99 then intersex_dx = .;
	multirace = SUM(of race_1--race_97);
	if multirace > 1 then race_basesurvey = 8;
	if multirace = 1 and race_1 = 1 then race_basesurvey = 1;
	if multirace = 1 and race_2 = 1 then race_basesurvey = 2;
	if multirace = 1 and race_3 = 1 then race_basesurvey = 3;
	if multirace = 1 and race_4 = 1 then race_basesurvey = 4;
	if multirace = 1 and race_5 = 1 then race_basesurvey = 5;
	if multirace = 1 and race_6 = 1 then race_basesurvey = 6;
	if multirace = 1 and race_7 = 1 then race_basesurvey = 7;
	if multirace >= 1 and race_8 = 1 then race_basesurvey = 8;
	if multirace > 1 and race_5 = 1 and race_10 = 1 then race_basesurvey = 5; /*recoding Jewish participants to white*/
	if multirace = 1 and race_9 = 1 then race_basesurvey = 10; /*Coding Middle Eastern and then adding to Another race due to cell size*/
	if multirace = 1 and race_97 = 1 then race_basesurvey = 10; /*Coding another race*/
	if race_2 = 1 or race_3 = 1 then race_basesurvey = 2; /*Combining Native Hawaiian and other Pacific Islander*/
	/*Creating Consolidated Race Variable*/
	if race_basesurvey = . then RaceCat = .;
		else if race_basesurvey = 5 then RaceCat = 0; *White;
		else if race_basesurvey = 1 then RaceCat = 1; *Asian;
		else if race_basesurvey = 4 then RaceCat = 2; *Black/African American;
		else if race_basesurvey = 6 then RaceCat = 3; *Latinx/Hispanic;
		else if race_basesurvey = 8 then RaceCat = 4; *Biracial/Multiracial;
		else if race_basesurvey in (2, 3, 7, 9, 10) then RaceCat = 5; *Another Race;
	/*CODING HISPANIC/LATINX*/
	if race_6 = 1 then Latinx = 1;
		else if race_6 = 0 then Latinx = 0;
	if race_basesurvey = . then Latinx = .;
	/*Dichotomous coding of race*/
	if race_basesurvey = . then racial_minority = .;
		else if race_basesurvey = 5 then racial_minority = 0;
		else if race_basesurvey in (1,2,3,4,6,7,8) then racial_minority = 1;
		else if multirace > 1 then racial_minority = 1;
	if edu = 99 then edu = .;
	if edu = . then EduCat = .;
		else if 1 <= edu <= 4 then EduCat = 1; /*High school degree or less*/
		else if edu = 5 or edu = 7 then EduCat = 2; /*Some college, associate degree, technical/vocational school*/
		else if edu = 6 or edu = 8 then EduCat = 3; /*College degree*/
		else if edu = 9 then EduCat = 4; /*Graduate degree*/
		else if edu = 97 then EduCat = 97; /*Another form of education*/
	if edu_other in ("MD", "Completed Master's degree, now pursuing doctorate", "Ph.D", "PharmD (Pharmacist) - Doctorate level", 
	"juris doctor", "Graduate certifÌcate", "completed grad school and am enrolled in a 2nd masters degree program") then EduCat = 4;
		else if edu_other in ("Senior in college", "Trade school", "Currently in college") then EduCat = 2;
		else if edu_other in ("Technical/Vocational High School uncompleted with no diploma") then EduCat = 1;
		else if edu_other in ("In Graduate School") then EduCat = 3;
	if EduCat = . then GradDegree = .;
		else if EduCat in (1, 2, 3, 97) then GradDegree = 0;
		else if EduCat = 4 then GradDegree = 1;
	if EduCat = . then CollegeDegree = .;
		else if EduCat in (1, 2, 97) then CollegeDegree = 0;
		else if EduCat in (3, 4) then CollegeDegree = 1;
	/*Sexual Partner Data*/
	if number_partners = 99999 then number_partners = .;
	/*HIV Tests*/
	if hiv_sti_info = 99 then hiv_sti_info = .;
	if hiv_tests = 99 then hiv_tests = .;
	if hiv_test_6 = 99 then hiv_test_6 = .;
	if hiv_result = 99 then hiv_result = .;
	if hiv_result = 1 then hiv_positive = 1;
		else hiv_positive = 0;
	/*Living with HIV*/
	if hiv_age = 98 or hiv_age = 99 then hiv_age = .;
	if viral_load_levels = 99 then viral_load_levels = .;
	if viral_load_time = 99 then viral_load_time = .;
	/*STI Testing*/
	if sti_test = 99 then sti_test = .;
	if sti_pos_test = 99 then sti_pos_test = .;
	/*STIs*/
	sti_infections_n = sum(of sti_infections_1--sti_infections_97, sti_infections_11, sti_infections_12); /*Updated to include general HPV and HSV (non-genital)*/
	if sti_dx_age = 98 or sti_dx_age = 99 then sti_dx_age = .;
	/*HIV Meds*/
	if hiv_meds = 1 then hiv_meds_ever = 1;
		else hiv_meds_ever = 0;
	if hiv_meds_2 = 1 then hiv_meds_current = 1;
		else hiv_meds_current = 0;
	/*PrEP Questions*/
	if prep_heard = 99 then prep_heard = .;
	if prep_take = 99 then prep_take = .;
	if prep_30days = 99 then prep_30days = .;
	if prep_missed = 99 then prep_missed = .;
	if prep_prescript = 99 then prep_prescript = .;
	PrEP_side_effects_n = SUM(of prep_side_effects_1--prep_side_effects_7); /*Total number of experienced side effects from PrEP, excludes other side effects and no side effects*/
	if partner_prep = 99 then partner_prep = .;
	if partner_prep_desired = 99 then partner_prep_desired = .;
	/*PEP Questions*/
	pep_heard = pep;
	if pep_heard = 99 then pep_heard = .;
	if pep_take = 99 then pep_take = .;
	if pep_take_6m = 99 then pep_take_6m = .;
	PEP_reasons_n = SUM(of pep_reasons_1--pep_reasons_5); /*Total number of reasons for taking PEP, excludes write-in reasons*/
	
	
	/*****************Total number of surgeries by region**************/
	SURG_HEAD_DI_1 = SURG_HEAD_1;
	SURG_HEAD_DI_2 = SURG_HEAD_2;
	SURG_HEAD_DI_3 = SURG_HEAD_3;
	SURG_HEAD_DI_4 = SURG_HEAD_4;
	SURG_HEAD_DI_5 = SURG_HEAD_5;
	SURG_CHEST_DI_1 = SURG_CHEST_1;
	SURG_CHEST_DI_2 = SURG_CHEST_2;
	SURG_CHEST_DI_3 = SURG_CHEST_3;
	SURG_ABD_DI_1 = SURG_ABD_1;
	SURG_ABD_DI_2 = SURG_ABD_2;
	SURG_ABD_DI_3 = SURG_ABD_3;
	SURG_ABD_DI_4 = SURG_ABD_4;
	SURG_ABD_DI_5 = SURG_ABD_5;
	SURG_ABD_DI_6 = SURG_ABD_6;
	SURG_ABD_DI_7 = SURG_ABD_7;
	SURG_ABD_DI_8 = SURG_ABD_8;
	SURG_ABD_DI_9 = SURG_ABD_9;
	SURG_ABD_DI_10 = SURG_ABD_10;
	SURG_ABD_DI_11 = SURG_ABD_11;
	SURG_ABD_DI_12 = SURG_ABD_12;
	SURG_ABD_DI_13 = SURG_ABD_13;
	SURG_HAIR_DI_1 = SURG_HAIR_1;
	SURG_HAIR_DI_2 = SURG_HAIR_2;
	SURG_FAT_DI_1 = SURG_FAT_1;
	SURG_OTHER_DI = SURG_OTHER;
	array surgclean_head_di (5) SURG_HEAD_DI_1--SURG_HEAD_DI_5;
		do i = 1 to 5;
			if surgclean_head_di(i) = 0 or surgclean_head_di(i) = 4 then surgclean_head_di(i) = .;
				else if surgclean_head_di(i) = 1 then surgclean_head_di(i) = 1;
				else if 1 < surgclean_head_di(i) < 4 then surgclean_head_di(i) = 0;
	end;
	array surgclean_chest_di (3) SURG_CHEST_DI_1--SURG_CHEST_DI_3;
		do i = 1 to 3;
			if surgclean_chest_di(i) = 0 or surgclean_chest_di(i) = 4 then surgclean_chest_di(i) = .;
				else if surgclean_chest_di(i) = 1 then surgclean_chest_di(i) = 1;
				else if 1 < surgclean_chest_di(i) < 4 then surgclean_chest_di(i) = 0;
	end;
	array surgclean_abd_di (13) SURG_ABD_DI_1--SURG_ABD_DI_13;
		do i = 1 to 13;
			if surgclean_abd_di(i) = 0 or surgclean_abd_di(i) = 4 then surgclean_abd_di(i) = .;
				else if surgclean_abd_di(i) = 1 then surgclean_abd_di(i) = 1;
				else if 1 < surgclean_abd_di(i) < 4 then surgclean_abd_di(i) = 0;
	end;
	if SURG_HAIR_DI_1 = 0 or SURG_HAIR_DI_1 = 4 then SURG_HAIR_DI_1 = .;
		else if 1 < SURG_HAIR_DI_1 < 4 then SURG_HAIR_DI_1 = 0;
	if SURG_HAIR_DI_2 = 0 or SURG_HAIR_DI_2 = 4 then SURG_HAIR_DI_2 = .;
		else if 1 < SURG_HAIR_DI_2 < 4 then SURG_HAIR_DI_2 = 0;
	if SURG_FAT_DI_1 = 0 or SURG_FAT_DI_1 = 4 then SURG_FAT_DI_1 = .;
		else if 1 < SURG_FAT_DI_1 < 4 then SURG_FAT_DI_1 = 0;
	
	surg_head_n = SUM(of SURG_HEAD_DI_1--SURG_HEAD_DI_5);
	surg_chest_n = SUM(of SURG_CHEST_DI_1--SURG_CHEST_DI_3);
	surg_abd_n = SUM(of SURG_ABD_DI_1--SURG_ABD_DI_3);
	surg_repro_n = SUM(of SURG_ABD_DI_4--SURG_ABD_DI_7, SURG_ABD_DI_13);
	surg_genital_n = SUM(of SURG_ABD_DI_8--SURG_ABD_DI_12);
	surg_hair_n = SUM(of SURG_HAIR_DI_1, SURG_HAIR_DI_2);
	
	surg_total_n = SUM(of surg_head_n, surg_chest_n, surg_abd_n, surg_repro_n, surg_genital_n, surg_hair_n, SURG_FAT_DI_1, SURG_OTHER);
	
	/*SUMMARIZING SURGERY SATISFACTION*/
	head_sat_total = SUM(of SURG_SAT_HEAD_1--SURG_SAT_HEAD_5);
	head_satisfaction = head_sat_total/surg_head_n;
	
	chest_sat_total = SUM(of SURG_SAT_CHEST_1--SURG_SAT_CHEST_3);
	chest_satisfaction = chest_sat_total/surg_chest_n;
	
	abd_sat_total = SUM(of SURG_SAT_ABD_1--SURG_SAT_ABD_3);
	abd_satisfaction = abd_sat_total/surg_abd_n;
	
	repro_sat_total = SUM(of SURG_SAT_ABD_4--SURG_SAT_ABD_7, SURG_SAT_ABD_13);
	repro_satisfaction = repro_sat_total/surg_repro_n;
	
	genital_sat_total = SUM(of SURG_SAT_ABD_8--SURG_SAT_ABD_12);
	genital_satisfaction = genital_sat_total/surg_genital_n;
	
	surgery_total = SUM(of surg_head_n, surg_chest_n, surg_abd_n, surg_repro_n, surg_genital_n);
	
	surgery_satisfaction = SUM(of head_sat_total, chest_sat_total, abd_sat_total, repro_sat_total, genital_sat_total)/surgery_total;
	
	if surgery_satisfaction = . then surgery_satisfied = .;
		else if 0 <= surgery_satisfaction <= 2 then surgery_satisfied = 1;
		else if surgery_satisfaction > 2 then surgery_satisfied = 0;
	
	/*PROCEDURE ATTEMPT AND ACCESS*/
	if procedure_age_attempt = 99 or procedure_age_attempt = 98 then procedure_age_attempt = .;
	if procedure_age_have = 99 or procedure_age_have = 98 or procedure_age_have = 2016 then procedure_age_have = .;
	procedure_age_diff = procedure_age_have - procedure_age_attempt;
	if procedure_age_diff < 0 then procedure_age_diff = .;
	if procedure_age_diff = . then procedure_age_attempt = .;
	if procedure_age_diff = . then procedure_age_have = .;
	/*HORMONES*/
	if hormones = 99 or hormones = 98 or hormones = 0 then hormones = .;
	if hormone_age_attempt = 98 or hormone_age_attempt = 99 then hormone_age_attempt = .;
	if hormone_satisfaction = 99 then hormone_satisfaction = .;
	
	
	/*Cleaning lifetime hormone use*/
	if hormones = . then hormones_three = .;
		else if hormones = 1 then hormones_three = 2; /*Have taken hormones*/
		else if 2 <= hormones <= 3 then hormones_three = 1; /*Desire hormones*/
		else if hormones = 4 then hormones_three = 0; /*Have not taken hormones and do not desire to take hormones*/
		
	if hormones = . then no_hormone_desire = .;
		else if hormones = 4 then no_hormone_desire = 1;
		else if hormones in (1,2,3) then no_hormone_desire = 0;
		
		
	/*Dichotomous lifetime hormone use*/
	if hormones_three = . then hormones_di = .;
		else if hormones_three in (0,1) then hormones_di = 0;
		else if hormones_three = 2 then hormones_di = 1;
		
	/*Cleaning inappropriate response for hormone first attempt*/
	if hormone_age_attempt = 2 then hormone_age_attempt = .;
	
	/*Age of first taking hormones*/
	if hormone_age_take = 98 or hormone_age_take = 99 then hormone_age_take = .;
	if hormone_adherence = 99 then hormone_adherence = .;
	
	/*difference between accessing and attempting to access hormones*/
	hormone_age_diff = hormone_age_take - hormone_age_attempt;
	if hormone_age_diff < 0 then hormone_age_diff = .;
	if hormone_age_diff = . then hormone_age_attempt = .;
	if hormone_age_diff = . then hormone_age_take = .;
	
	/*Hormones: Testosterone*/
	if testosterone_99 = 1 then testosterone_99 = .;
	testosterone_forms_n = sum(of testosterone_1--testosterone_97); /*No 'other' responses*/
	
	/*Hormones: Estrogen*/
	if estrogen_99 = 1 then estrogen_99 = .;
	estrogen_forms_n = sum(of estrogen_1--estrogen_97); /*There was one 'other' response*/
	
	/*Hormones: Progesterone*/
	if progesterone_99 = 1 then progesterone_99 = .;
	progesterone_forms_n = sum(of progesterone_1--progesterone_97); /*No 'other' responses*/
	
	
/*************GA MEDICAL CARE****************/
	*Lifetime GA care;
	if hormones_di = 0 and surg_total_n = 0 then GACat = 0;
		else if hormones_di = 1 and surg_total_n = 0 then GACat = 1;
		else if hormones_di = 0 and surg_total_n > 0 then GACat = 2;
		else if hormones_di = 1 and surg_total_n > 0 then GACat = 3;
		else if hormones_di = . and surg_total_n = . then GACat = .;
		
	if GACat = . then any_gacare = .;
		else if GACat = 0 then any_gacare = 0;
		else if 1 <= GACat <= 3 then any_gacare = 1;

	
	/*FENWAY FACTORS*/
	array fenclean (6) FENWAY_1--FENWAY_6;
		do i = 1 to 6;
			if fenclean(i) = 99 then fenclean(i) = .;
	end;
	
	/*Health insurance*/
	/*Recoding health insurance - baseline survey*/
	if health_insurance_99 = 1 or health_insurance_97 = 1 then insurance = .;
	if health_insurance_1 = 1 then insurance = 0; /*No insurance*/
	if health_insurance_2 = 1 or health_insurance_3 = 1 or health_insurance_4 = 1 then insurance = 1; /*Public insurance*/
	if health_insurance_5 = 1 then insurance = 2; /*Private insurance*/
	if insurance_other in ("Aetna", "Allways Health Partners", "BMC Healthnet through the Connector",
	"BlueCross HMO", "Cigna", "Cigna through employer", "College-sponsored health insurance",
	"Connector care plans", "Connector plan tufts", "Employer", "First Health",
	"GIC (through my employer, the Commonwealth)", "Harvard Pilgrim",
	"Harvard Vanguard", "Harvard pilgrim", "MA Health Connectorcare",
	"My health insurance is provided by the university I attend", "Network insurance",
	"Northeastern University student health plan", "Something through healthconnector",
	"Student health insurance (Blue Cross Student)", "Student health plan provided by school",
	"Subsidized Connector Care", "Tufts", "Tufts Direct", "Tufts Direct Care",
	"Tufts Health Care", "Tufts Health Connectorcare", "Tufts Medicare Preferred HMO",
	"Tufts Medicare Preferred Supplemental", "Tufts through employer",
	"Unicare", "United Health", "United Healthcare", "United health", "cigna", "united health") then insurance = 2;
	if insurance_other in ("Commonwealth Care", "Commonwealth Care One Care", "Community Care Cooperative", "MaineCare") then insurance = 1;
	

/***********SUBSTANCE USE********/
	/*Smoking*/
	if cig_frequency = 99 then cig_frequency = .;
	if cig_100 = 99 then cig_100 = .;
	if tobacco = 99 then tobacco = .;
	tobacco_N6 = SUM(of tobacco_products_1--tobacco_products_97);
	if tobacco = . then tobacco_N6 = .;
	/*DAST*/
	if substance_use = 99 then substance_use = .;
	if substance_use = 1 then DAST = 1;
		else if substance_use = 0 then DAST = 0;
	if more_than_one_drug = 99 then more_than_one_drug = .;
	if more_than_one_drug = 1 then DAST+1;
		else if more_than_one_drug = 0 then DAST+0;
	if unable_to_stop_using = 99 then unable_to_stop_using = .;
	if unable_to_stop_using = 1 then DAST+0;
		else if unable_to_stop_using = 0 then DAST+1; /*REVERSE CODED*/
	if have_you_ever_had_blackout = 99 then have_you_ever_had_blackout = .;
	if have_you_ever_had_blackout = 1 then DAST+1;
		else if have_you_ever_had_blackout = 0 then DAST+0;
	if do_you_ever_feel_bad_or_gu = 99 then do_you_ever_feel_bad_or_gu = .;
	if do_you_ever_feel_bad_or_gu = 1 then DAST+1;
		else if do_you_ever_feel_bad_or_gu = 0 then DAST+0;
	if does_your_spouse_or_parent = 99 then does_your_spouse_or_parent = .;
	if does_your_spouse_or_parent = 1 then DAST+1;
		else if does_your_spouse_or_parent = 0 then DAST+0;
	if have_you_neglected_your_fa = 99 then have_you_neglected_your_fa = .;
	if have_you_neglected_your_fa = 1 then DAST+1;
		else if have_you_neglected_your_fa = 0 then DAST+0;
	if have_you_engaged_in_illega = 99 then have_you_engaged_in_illega = .;
	if have_you_engaged_in_illega = 1 then DAST+1;
		else if have_you_engaged_in_illega = 0 then DAST+0;
	if have_you_ever_experienced = 99 then have_you_ever_experienced = .;
	if have_you_ever_experienced = 1 then DAST+1;
		else if have_you_ever_experienced = 0 then DAST+0;
	if have_you_had_medical_probl = 99 then have_you_had_medical_probl = .;
	if have_you_had_medical_probl = 1 then DAST+1;
		else if have_you_had_medical_probl = 0 then DAST+0;
	if DAST = . then DAST_level = .;
		else if DAST = 0 then DAST_level = 0;
		else if 1 <= DAST <= 2 then DAST_level = 1; *low level;
		else if 3 <= DAST <= 5 then DAST_level = 2; *moderate level;
		else if 6 <= DAST <= 8 then DAST_level = 3; *substantial level;
		else if 9 <= DAST <= 10 then DAST_level = 4; *severe level;
	if DAST = . then DAST_clinical = .;
		else if 0 <= DAST <= 2 then DAST_clinical = 0;
		else if 3 <= DAST <= 10 then DAST_clinical = 1;
	if unable_to_stop_using = 1 then unable_to_stop_using_RC = 0;
	if unable_to_stop_using = 0 then unable_to_stop_using_RC = 1;
	/*AUDIT-C*/
	if alcohol = 99 then alcohol = .;
	if alcohol = . then AUDIT = .;
		else if alcohol = 0 then AUDIT = 0;
		else if alcohol = 1 then AUDIT = 1;
		else if alcohol = 2 then AUDIT = 2;
		else if alcohol = 3 then AUDIT = 3;
		else if alcohol = 4 then AUDIT = 4;
	if standard_drinks = 99 then standard_drinks = .;
	if standard_drinks = 0 then AUDIT+0;
		else if standard_drinks = 1 then AUDIT+1;
		else if standard_drinks = 2 then AUDIT+2;
		else if standard_drinks = 3 then AUDIT+3;
		else if standard_drinks = 4 then AUDIT+4;
	if more_drinks = 99 then more_drinks = .;
	if more_drinks = 0 then AUDIT+0;
		else if more_drinks = 1 then AUDIT+1;
		else if more_drinks = 2 then AUDIT+2;
		else if more_drinks = 3 then AUDIT+3;
		else if more_drinks = 4 then AUDIT+4;
	if AUDIT = . then AUDIT_clinical_men = .; /*Clinically significant cutoff for men*/
		else if AUDIT >= 4 then AUDIT_clinical_men = 1;
		else if 0 <= AUDIT <= 3 then AUDIT_clinical_men = 0;
	if AUDIT = . then AUDIT_clinical_women = .; /*Clinically significant cutoff for women*/
		else if AUDIT >= 3 then AUDIT_clinical_women = 1;
		else if 0 <= AUDIT <= 2 then AUDIT_clinical_women = 0;
	if AUDIT = . then AUDIT_clinical = .;
		else if AUDIT >= 4 then AUDIT_clinical = 1;
		else if 0 <= AUDIT <= 3 then AUDIT_clinical = 0;

/***************MENTAL HEALTH***************/
	/*PHQ-4*/
	array phq_clean (4) PHQ4_1--PHQ4_4;
		do i = 1 to 4;
			if phq_clean(i) = 99 then phq_clean(i) = .;
	end;
	PHQ4_score = sum(of PHQ4_1--PHQ4_4);
	if PHQ4_score = . then PHQ4_level = .;
		else if 0 <= PHQ4_score <= 2 then PHQ4_level = 0;
		else if 3 <= PHQ4_score <= 5 then PHQ4_level = 1;
		else if 6 <= PHQ4_score <= 8 then PHQ4_level = 2;
		else if 9 <= PHQ4_score <= 12 then PHQ4_level = 3;
	if PHQ4_level in (0, 1, 2) then PHQ4_clinical = 0;
		else if PHQ4_level in (3) then PHQ4_clinical = 1;
	PHQ4_anx = sum(of PHQ4_1--PHQ4_2);
	if PHQ4_anx = . then PHQ4_anxiety = .;
		else if PHQ4_anx >= 3 then PHQ4_anxiety = 1;
		else if 0 <= PHQ4_anx < 3 then PHQ4_anxiety = 0;
	PHQ4_dep = sum(of PHQ4_3--PHQ4_4);
	if PHQ4_dep = . then PHQ4_depression = .;
		else if PHQ4_dep >= 3 then PHQ4_depression = 1;
		else if 0 <= PHQ4_dep < 3 then PHQ4_depression = 0;
	
	/*KESSLER 6*/
	array kess_clean (6) KESS6_1--KESS6_6;
		do i = 1 to 6;
			if kess_clean(i) = 99 then kess_clean(i) = .;
	end;
	KESS6_score = sum(of KESS6_1--KESS6_6);
	if KESS6_score = . then KESS6_clinical = .;
		else if KESS6_score >= 13 then KESS6_clinical = 1;
		else if 0 <= KESS6_score < 13 then KESS6_clinical = 0;
	
	/*SUICIDE, SELF INJURY, & HOSPITALIZATION*/
	if suicide_thoughts = 99 then suicide_thoughts = .;
	if suicide_thoughts_2 = 99 then suicide_thoughts_2 = .;
	if suicide_attempt = 99 then suicide_attempt = .;
	if suicide_attempt_2 = 99 then suicide_attempt_2 = .;
	if self_injury = 99 then self_injury = .;
	if self_injury_2 = 99 then self_injury_2 = .;
	if hospitalized = 99 then hospitalized = .;
	if hospitalized_2 = 99 then hospitalized_2 = .;

	/*Gender Dysphoria*/
	array gd_clean (12) GD_1--GD_12;
		do i = 1 to 12;
			if gd_clean(i) = 99 then gd_clean(i) = .;
			else if gd_clean(i) = 96 then gd_clean(i) = .;
	end;
	if GD_5 = 5 then GD_5_RC = 1;
	if GD_5 = 4 then GD_5_RC = 2;
	if GD_5 = 3 then GD_5_RC = 3;
	if GD_5 = 2 then GD_5_RC = 4;
	if GD_5 = 1 then GD_5_RC = 5;
	gender_dysphoria = sum(of GD_1, GD_2, GD_3, GD_4, GD_5_RC, GD_6, GD_7, GD_8, GD_9, GD_10, GD_11, GD_12);
	
	if gender_dysphoria = . then gender_dysphoria_above_median = .;
		else if gender_dysphoria > 49 then gender_dysphoria_above_median = 1;
		else if gender_dysphoria <= 49 then gender_dysphoria_above_median = 0;
	
	if gender_dysphoria = . then GD_Cat = .;
		else if gender_dysphoria <= 20 then GD_Cat = 0;
		else if 21 <= gender_dysphoria <= 40 then GD_Cat = 1;
		else if 41 <= gender_dysphoria <= 60 then GD_Cat = 2;
	
	/*Transgender Congruence & Internalized Transphobia*/
	array tcs_clean (4) TCS_1--TCS_4;
		do i = 1 to 4;
			if tcs_clean(i) = 99 then tcs_clean(i) = .;
	end;
	
	if TCS_1 = . then TCS_1 = .;
		else if TCS_1 = 1 then TCS_1_RC = 5;
		else if TCS_1 = 2 then TCS_1_RC = 4;
		else if TCS_1 = 3 then TCS_1_RC = 3;
		else if TCS_1 = 4 then TCS_1_RC = 2;
		else if TCS_1 = 5 then TCS_1_RC = 1;
		
	if TCS_4 = . then TCS_4 = .;
		else if TCS_4 = 1 then TCS_4_RC = 5;
		else if TCS_4 = 2 then TCS_4_RC = 4;
		else if TCS_4 = 3 then TCS_4_RC = 3;
		else if TCS_4 = 4 then TCS_4_RC = 2;
		else if TCS_4 = 5 then TCS_4_RC = 1;
		
	TCS_score = sum(of TCS_1_RC, TCS_2, TCS_3, TCS_4_RC);
	
	/*Creating standardized (mean) TCS score*/
	
	TCS_standard_score = mean(TCS_1_RC, TCS_2, TCS_3, TCS_4_RC);
	
	/*Gender Euphoria*/
	
	gender_euphoria = sum(of TCS_2, TCS_3);
	
	gender_euphoria_standard = mean(TCS_2, TCS_3);
	
	if gender_euphoria = . then gender_euphoria_above_median = .;
		else if gender_euphoria = 10 then gender_euphoria_above_median = 1;
		else if 0 <= gender_euphoria <= 9 then gender_euphoria_above_median = 0;
	
	/*PTSD*/
	array ptsd_clean (5) PTSD_1--PTSD_5;
		do i = 1 to 5;
			if ptsd_clean(i) = 99 then ptsd_clean(i) = .;
	end;
	
	PTSD_sum = sum(of PTSD_1, PTSD_2, PTSD_3, PTSD_4, PTSD_5);
	
	if PTSD_sum = . then PTSD_clinical = .;
		else if PTSD_sum > 3 then PTSD_clinical = 1;
		else if PTSD_sum <= 3 then PTSD_clinical = 0;
		
	if trauma = 0 then PTSD_clinical = 0;
	
	/*SF-12*/
	if sf12_1 = 99 then sf12_1 = .;
	
	/*Barriers to gender affirming mental health (lifetime)*/
	sum_barriers_ga_mh = sum(of barriers_to_ga_mh_1--barriers_to_ga_mh_97);
	if sum_barriers_ga_mh = . then any_barrier_ga_mh = .;
		else if sum_barriers_ga_mh > 0 then any_barrier_ga_mh = 1;
		else if sum_barriers_ga_mh = 0 then any_barrier_ga_mh = 0;

	/*IPV*/
	array ipv (10) IPV_1--IPV_10;
		do i = 1 to 10;
		if ipv(i) = 99 then ipv(i) = .;
	end;
	
	sum_ipv = sum(of IPV_1--IPV_10);
	
	if sum_ipv = . then any_ipv = .;
		else if sum_ipv > 0 then any_ipv = 1;
		else if sum_ipv = 0 then any_ipv = 0;
		
	if childhood_abuse = 99 then childhood_abuse = .;
	
	if bully = 99 then bully = .;
	
	/*Brief resilience scale*/
	array res (6) RES_1--RES_6;
		do i = 1 to 6;
		if res(i) = 99 then res(i) = .;
	end;
	
	if RES_2 = . then RES_2_RC = .;
		else if RES_2 = 1 then RES_2_RC = 5;
		else if RES_2 = 2 then RES_2_RC = 4;
		else if RES_2 = 3 then RES_2_RC = 3;
		else if RES_2 = 4 then RES_2_RC = 2;
		else if RES_2 = 5 then RES_2_RC = 1;
	if RES_4 = . then RES_4_RC = .;
		else if RES_4 = 1 then RES_4_RC = 5;
		else if RES_4 = 2 then RES_4_RC = 4;
		else if RES_4 = 3 then RES_4_RC = 3;
		else if RES_4 = 4 then RES_4_RC = 2;
		else if RES_4 = 5 then RES_4_RC = 1;
	if RES_6 = . then RES_6_RC = .;
		else if RES_6 = 1 then RES_6_RC = 5;
		else if RES_6 = 2 then RES_6_RC = 4;
		else if RES_6 = 3 then RES_6_RC = 3;
		else if RES_6 = 4 then RES_6_RC = 2;
		else if RES_6 = 5 then RES_6_RC = 1;
	
	resilience_score = sum(RES_1, RES_2_RC, RES_3, RES_4_RC, RES_5, RES_6_RC);
	
	if resilience_score = . then resilience_score_above_median = .;
		else if resilience_score >= 19 then resilience_score_above_median = 1;
		else if 0 <= resilience_score <= 18 then resilience_score_above_median = 0;
	
	/*Multidimensional Scale of Perceived Social Support*/
	array sup (12) MSPSS_1--MSPSS_12;
		do i = 1 to 12;
		if sup(i) = 99 then sup(i) = .;
	end;

	support_score = sum(MSPSS_1, MSPSS_2, MSPSS_3, MSPSS_4, MSPSS_5, MSPSS_6, MSPSS_7, MSPSS_8, MSPSS_9, MSPSS_10, MSPSS_11, MSPSS_12);
	
	if support_score = . then support_level = .;
		else if 0 <= support_score <= 35 then support_level = 0;
		else if 36 <= support_score <= 60 then support_level = 1;
		else if 61 <= support_score <= 84 then support_level = 2;
		

/********************SEXUAL BEHAVIOR******************/
	if receptive_genital = 99999 or receptive_genital = 88888 then receptive_genital = .;
	if receptive_genital_condomless = 99999 or receptive_genital_condomless = 88888 then receptive_genital_condomless = .;
	if receptive_anal = 99999 or receptive_anal = 88888 then receptive_anal = .;
	if condomless_recep_anal = 99999 or condomless_recep_anal = 88888 then condomless_recep_anal = .;
	if HIV_risk = 99 then HIV_risk = .;
	if id_final ne ' ' then count = 1;
	if sti_infections_1 = 1 or sti_infections_2 = 1 then HPV = 1;
		else HPV = 0;
	if sti_infections_1 = 1 or sti_infections_2 = 1 or sti_infections_3 = 1 or sti_infections_4 = 1 or sti_infections_5 = 1 or sti_infections_6 = 1 or sti_infections_7 = 1
		or sti_infections_8 = 1 or sti_infections_9 = 1 or sti_infections_10 = 1 or sti_infections_97 = 1 then sti_positive = 1;
		else sti_positive = 0;
		
	if affirming_sex = 99 then affirming_sex = .;
	*Coding binary gender ID;
	if Gender in (1,2,3,4) then gender_binary = 1;
		else if Gender in (5,6,7) then gender_binary = 0;
	if sti_infections_3 = 1 or sti_infections_5 = 1 or sti_infections_9 = 1 then sti_bacterial_lifetime_W1S = 1; *lifetime diagnosis with syphilis, gonorrhoea, or chlamydia;
	*Pets;
	if pet = 99 then pet = .;
	if sf12_1 in (1,2,3) then baseline_ratedhealth_high = 1;
		else if sf12_1 in (4,5) then baseline_ratedhealth_high = 0;


	*PrEP INDICATION;
	if number_partners > 1 and condomless_receptive_genital >= 1 then PrEP_Risk = 1;*Eligible for PrEP based on risk alone;
	if number_partners > 1 and condomless_recep_anal >= 1 then PrEP_Risk = 1; *Eligible for PrEP based on risk alone;
	if PrEP_Risk = 1 and prep_heard = 0 then PrEP_Indicated = 1; *Eligible for PrEP based on risk & not on PrEP;
	if PrEP_Risk = 1 and prep_take = 0 then PrEP_Indicated = 1; *Eligible for PrEP based on risk & not on PrEP;
	if PrEP_Risk = 1 and prep_30days = 0 then PrEP_Indicated = 1; *Eligible for PrEP based on risk & not on PrEP in the past 30 days;
	if PrEP_Risk = 1 and prep_30days = 1 then PrEP_Indicated = 2; *Eligible for PrEP based on risk & took PrEP in the past 30 days;
	if number_partners > 1 and condomless_receptive_genital = 0 and condomless_recep_anal = 0 and sti_bacterial_lifetime_W1S = 1 then PrEP_Indicated = 1; *Indicated for PrEP based on bacterial STI diagnosis (we have lifetime, usually 6 months);
	if number_partners > 1 and condomless_receptive_genital = 0 and condomless_recep_anal = 0 and sti_bacterial_lifetime_W1S = 0 then PrEP_Indicated = 0; *Not indicated for PrEP;
	if 0 <= number_partners <= 1 then PrEP_Indicated = 0; *Not PrEP indicated based on risk (those with 0/1 sex partners in the past 6 months);
	if HIV_Positive = 1 then PrEP_Indicated = 3; *Ineligible for PrEP due to HIV-positive serostatus;


*Recoding SES-related variables;
	if sex_work = 99 then sex_work = .;
	if homelessness = 99 then homelessness = .;
	if homelessness_2 = 99 then homelessness_2 = .;

*Hormones across waves;
	if wave = 0 and current_hormone = 0 then hormone_baseline = 0;
		else if wave = 0 and current_hormone = 1 then hormone_baseline = 1;
	if wave = 1 and current_hormone = 0 then hormone_wave1 = 0;
		else if wave = 1 and current_hormone = 1 then hormone_wave1 = 1;
	if wave = 2 and current_hormone = 0 then hormone_wave2 = 0;
		else if wave = 2 and current_hormone = 1 then hormone_wave2 = 1;
	
	if current_hormone = 99 then current_hormone = .;

*Dichotomous coding for surgery;
	if surg_head_n = . then head_surgery = .;
		else if surg_head_n > 0 then head_surgery = 1;
		else if surg_head_n = 0 then head_surgery = 0;
		
	if surg_chest_n = . then chest_surgery = .;
		else if surg_chest_n > 0 then chest_surgery = 1;
		else if surg_chest_n = 0 then chest_surgery = 0;
	
	if surg_abd_n = . then abd_surgery = .;
		else if surg_abd_n > 0 then abd_surgery = 1;
		else if surg_abd_n = 0 then abd_surgery = 0;
		
	if surg_repro_n = . then repro_surgery = .;
		else if surg_repro_n > 0 then repro_surgery = 1;
		else if surg_repro_n = 0 then repro_surgery = 0;
	
	if surg_genital_n = . then genital_surgery = .;
		else if surg_genital_n > 0 then genital_surgery = 1;
		else if surg_genital_n = 0 then genital_surgery = 0;
		
	if head_surgery = 1 or chest_surgery = 1 or abd_surgery = 1 or repro_surgery = 1 or genital_surgery = 1 then any_surgery = 1;
		else any_surgery = 0;
		
	if gender_dysphoria = . then gd_cat = .;
		else if 0 <= gender_dysphoria <= 20 then gd_cat = 0;
		else if 21 <= gender_dysphoria <= 40 then gd_cat = 1;
		else if 41 <= gender_dysphoria <= 60 then gd_cat = 2;
		
	if suicide_thoughts = . then any_suicide_thoughts = .;
		else if suicide_thoughts = 0 then any_suicide_thoughts = 0;
		else if suicide_thoughts in (1,2) then any_suicide_thoughts = 1;
		
	if suicide_attempt = . then any_suicide_attempt = .;
		else if suicide_attempt = 0 then any_suicide_attempt = 0;
		else if suicide_attempt in (1,2) then any_suicide_attempt = 1;

	if self_injury = . then any_self_injury = .;
		else if self_injury = 0 then any_self_injury = 0;
		else if self_injury in (1,2) then any_self_injury = 1;
		
	if Age = . then Age_CT = .;
		else if Age = 18 then Age_CT = 0;
		else if 19 <= Age <= 64 then Age_CT = 1;
		else if 65 >= Age then Age_CT = 2;
		
	*Satisfaction with GA care;
	if hormone_satisfaction = . then hormone_satisfied = .;
		else if hormone_satisfaction in (1, 2) then hormone_satisfied = 1;
		else if hormone_satisfaction in (3, 4, 5) then hormone_satisfied = 0;
	
	if h5_birth_certificate = 1 then social_affirmation = 1;
	if h5_driver_s_license_state = 1 then social_affirmation = 1;
	if h5_health_insurance_medica = 1 then social_affirmation = 1;
	if h5_passport = 1 then social_affirmation = 1;
	if h5_social_security = 1 then social_affirmation = 1;
	
	if social_affirmation ne 1 then social_affirmation = 0;
	
	if are_you_currently_employed = . then employment = .;
		else if are_you_currently_employed = 99 then employment = .;
		else if are_you_currently_employed in (1,2) then employment = 0; *full-time;
		else if are_you_currently_employed = 3 then employment = 1; *part-time;
		else if are_you_currently_employed = 4 then employment = 2; *less than part-time;
		else if are_you_currently_employed in (5,6) then employment = 3; *unemployed;
		else if are_you_currently_employed = 97 then employment = 4; *another employment status;
	
	if individual_income = . then individual_month_income = .;
		else if individual_income in (96,99) then individual_month_income = .;
		else if individual_income in (1,2) then individual_month_income = 0;
		else if individual_income in (3,4) then individual_month_income = 1;
		else if individual_income = 5 then individual_month_income = 2;
		
	if RaceCat = 3 then Latinx_Race = 1;
		else Latinx_Race = 0;
	
	*Cleaning hormone use;
	if current_hormone = . then current_hormone = 0;
	if current_hormone = 0 then hormone_satisfaction = .;
		
	if hormone_satisfaction = . then hormone_high_satisfaction = .;
		else if hormone_satisfaction in (1,2) then hormone_high_satisfaction = 1;
		else if hormone_satisfaction in (3,4,5) then hormone_high_satisfaction = 0;
		
	if sf12_1 = . then sf12_high = .;
		else if sf12_1 in (1,2) then sf12_high = 1;
		else if sf12_1 in (3,4,5) then sf12_high = 0;
	
	if hiv_test_6 = . then HIV_Test_6Mos = 0;
		else if hiv_test_6 = 96 then HIV_Test_6Mos = 0;
		else if hiv_test_6 = 1 then HIV_Test_6Mos = 1;
		else if hiv_test_6 = 0 then HIV_Test_6Mos = 0;
	
	if hiv_test = 0 then HIV_Test_6Mos = 0;
	
	*Cleaning sexual behavior data;
	
	if penile_condomless = 9999 then penile_condomless = .;
	
	if condomless_receptive_genital in (999, 9999, 99999) then condomless_receptive_genital = .;
	
	if condomless_recep_anal = 9999 then condomless_recep_anal = .;
	
	if condomless_insert_genital in (8888, 9999) then condomless_insert_genital = .;
	
	if condomless_insert_anal in (8888, 9999, 88888) then condomless_insert_anal = .;
	
	if sti_pos_test = 96 then sti_pos_test = .;
	
	if age = . then AgeCat_5 = .;
		else if 18 <= age <= 24 then AgeCat_5 = 0;
		else if 25 <= age <= 30 then AgeCat_5 = 1;
		else if 31 <= age <= 40 then AgeCat_5 = 2;
		else if 41 <= age <= 50 then AgeCat_5 = 3;
		else if 51 <= age <= 100 then AgeCat_5 = 4;
	
	if suicide_attempt = 0 then suicide_attempt_lifetime_di = 0;
		else if suicide_attempt in (1,2) then suicide_attempt_lifetime_di = 1;
	
	if suicide_attempt_2 in (.,0) then suicide_attempt_sixmos_di = 0;
		else if suicide_attempt_2 in (1,2) then suicide_attempt_sixmos_di = 1;
	
	if homelessness_2 = 99 then homeless_pastsixmos = .;
		else if homelessness_2 in (.,0) then homeless_pastsixmos = 0;
		else if homelessness_2 = 1 then homeless_pastsixmos = 1;
	
	if hormones_di = 0 and any_surgery = 0 then GACat = 0;
		else if hormones_di = 1 and any_surgery = 0 then GACat = 1;
		else if hormones_di = 0 and any_surgery = 1 then GACat = 2;
		else if hormones_di = 1 and any_surgery = 1 then GACat = 3;
		
	hormones_surgery = hormones_di*any_surgery;
		
run;
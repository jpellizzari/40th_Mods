livery = {

{"F16_bl50_Main_1", DIFFUSE, "f16_bl50_main_1", false};
{"F16_bl50_Main_1", ROUGHNESS_METALLIC, "F16_bl50_Main_1_RoughMet", false};

{"F16_bl50_Kil", DIFFUSE, "F16_bl50_Kil", false};
{"F16_bl50_Kil",	ROUGHNESS_METALLIC,	"F16_bl50_Kil_RoughMet",	false};


--F16_bl50_FIN_DECAL
    {"F16_bl50_FIN_DECAL",	0,	                "F16_bl50_Kil",			false};
	{"F16_bl50_FIN_DECAL",	1,	                "f16_bl50_kil_normal",												true};
	{"F16_bl50_FIN_DECAL",	ROUGHNESS_METALLIC,	"F16_bl50_Kil_RoughMet",	false};
	{"F16_bl50_FIN_DECAL",	DECAL,	            "F16_AF_91_Decal_m", false};

--F16_bl50_FIN_BORT_NUMBER
    {"F16_bl50_FIN_BORT_NUMBER",	0,	                "F16_bl50_Kil",			false};
	{"F16_bl50_FIN_BORT_NUMBER",	1,	                "f16_bl50_kil_normal",												true};
	{"F16_bl50_FIN_BORT_NUMBER",	ROUGHNESS_METALLIC,	"F16_bl50_Kil_RoughMet",	false};
	{"F16_bl50_FIN_BORT_NUMBER",	DECAL,	            "F16_bort_number_m",			false};

--F16_bl50_REFUEL_DECAL
    {"F16_bl50_MAT1_BORT_NUMBER_DECAL",	0,	                "F16_bl50_Main_1",			false};
	{"F16_bl50_MAT1_BORT_NUMBER_DECAL",	1,	                "f16_bl50_main_1_normal",		true};
	{"F16_bl50_MAT1_BORT_NUMBER_DECAL",	ROUGHNESS_METALLIC,	"F16_bl50_Main_1_RoughMet", true};
	{"F16_bl50_MAT1_BORT_NUMBER_DECAL",	DECAL,	            "F16_AF_91_Decal_m", 						false};

--F16_bl50_NOUSE AND REFUEL BORT NUMBER
    {"F16_bl50_MAT1_BORT_NUMBER",	0,	                "F16_bl50_Main_1",			false};
	{"F16_bl50_MAT1_BORT_NUMBER",	1,	                "f16_bl50_main_1_normal",		true};
	{"F16_bl50_MAT1_BORT_NUMBER",	ROUGHNESS_METALLIC,	"F16_bl50_Main_1_RoughMet", true};
	{"F16_bl50_MAT1_BORT_NUMBER",	DECAL,	            "F16_bort_number_m", 						false};

--F16_bl50_INTAKE_BORT_NUMBER
--  {"F16_bl50_INTAKE_BORT_NUMBER",	0,	                "F16_bl50_Main_3",												true};
--	{"F16_bl50_INTAKE_BORT_NUMBER",	1,	                "f16_bl50_main_3_normal",											true};
--	{"F16_bl50_INTAKE_BORT_NUMBER",	ROUGHNESS_METALLIC,	"F16_bl50_Main_3_RoughMet",										true};
	{"F16_bl50_INTAKE_BORT_NUMBER",	DECAL,	            "F16_bort_number_m",			false};
}

name = "40th FS Phoenix"

--countries = {"USA", "FRA", "UKR", "SPN", "NETH","GER", "NOR", "CAN", "DEN", "UK", "GRG", "ISR", "ABH", "RSO"}

-- Phoenix F16 skin by Rowdy & Cowboy for the 40th SOC

custom_args =
{

[1000] = 0.3,
[1001] = 0.0,
[1002] = 0.1,
[1003] = 1.0,
}

Cessna_210N =  {
      
		Name 			= 'Cessna_210N',--AG
		DisplayName		= _('Cessna P210N'),--AG
        Picture 		= "Cessna-210N.png",
        Rate 			= "40",
        Shape			= "Cessna_210N",--AG	
		--WorldID			=  WSTYPE_PLACEHOLDER, 
		WorldID 		= 39,		
		singleInFlight 	= true,
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'Cessna_210N';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'kc-135-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'Cessna_210N';--AG
			--index       =  WSTYPE_PLACEHOLDER;
			index       =  Cessna_210N;
			classname   = "lLandPlane";
			positioning = "BYNORMAL";
		},
		{
			name  		= "kc-135-oblomok";
			file  		= "kc-135-oblomok";
			fire  		= { 240, 2};
		},
	},
	
	    mapclasskey 		= "P0091000029",
	    attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, Cessna_210N, AN_26B,
        "Transports",},
		
	    Categories = {
        },
				
		M_empty	=	15850,--an-26b
		M_nominal	=	23000,
		M_max	=	24000,
		M_fuel_max	=	5500,
		H_max	=	5275,
		average_fuel_consumption	=	0.2,
		CAS_min	=	50,
		V_opt	=	120.8,
		V_take_off	=	60,
		V_land	=	52.8,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		radar_can_see_ground	=	false,
		
		nose_gear_pos 				                = {1.30,	-1.26,	0},   -- nosegear coord 
	    nose_gear_amortizer_direct_stroke   		=  0,      -- down from nose_gear_pos !!!
	    nose_gear_amortizer_reversal_stroke  		= -0,      -- up 
	    nose_gear_amortizer_normal_weight_stroke 	= -0,      -- down from nose_gear_pos
	    nose_gear_wheel_diameter 	                =  0.754,  -- in m
	
	    main_gear_pos 						 	    = {-0.50,	-1.13,	1.32},-- maingear coord
	    main_gear_amortizer_direct_stroke	 	    =   0,     --  down from main_gear_pos !!!
	    main_gear_amortizer_reversal_stroke  	    =  -0,     --  up 
	    main_gear_amortizer_normal_weight_stroke    =  -0,     --  down from main_gear_pos
	    main_gear_wheel_diameter 				    =   0.972, --  in m

		AOA_take_off	=	0.17,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.577,
		V_max_sea_level	=	178,
		V_max_h	=	140,
		tanker_type	=	0,
		wing_area	=	125,--75
		wing_span	=	11.20,--B-52 60.0,
		thrust_sum_max	=	22000,
		thrust_sum_ab	=	22000,
		Vy_max	=	8,
		length	=	8.59,--tu-160 67.0,
		height	=	2.87,--c-17 19.60,
		flaps_maneuver	=	1.0,--0.5,
		Mach_max	=	0.27,--0.55
		range	=	2660,
		RCS	=	50,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	0.5,
		IR_emission_coeff_ab	=	0,
		engines_count	=	1,
		wing_tip_pos = 	{-0.88,	0.70,	5.6},
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-0.8,	0.9,	9.5},--
				elevation	=	0,
				diameter	=	2.0,
				exhaust_length_ab	=	5.88,
				exhaust_length_ab_K	=	0.2,--0.76,
				smokiness_level     = 	0.1, 
			}, -- end of [1]
		}, -- end of engines_nozzles
		crew_members = 
		{
			[1] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{7.916,	0.986,	0},
			}, -- end of [1]
			[2] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [2]
			[3] = 
			{
				ejection_seat_name	=	0,
				drop_canopy_name	=	0,
				pos = 	{3.949,	1.01,	0},
			}, -- end of [3]
		}, -- end of crew_members
		brakeshute_name	=	0,
		is_tanker	=	false,
--		air_refuel_receptacle_pos = 	{6.731,	0.825,	0.492},
		fires_pos = 
		{
			[1] = 	{-0.138,	-0.79,	0},
			[2] = 	{-0.138,	-0.79,	5.741},
			[3] = 	{-0.138,	-0.79,	-5.741},
			[4] = 	{-0.82,	0.265,	2.774},
			[5] = 	{-0.82,	0.265,	-2.774},
			[6] = 	{-0.82,	0.255,	4.274},
			[7] = 	{-0.82,	0.255,	-4.274},
			[8] = 	{-0.347,	-1.875,	8.138},
			[9] = 	{-0.347,	-1.875,	-8.138},
			[10] = 	{-5.024,	-1.353,	13.986},
			[11] = 	{-5.024,	-1.353,	-13.986},
		}, -- end of fires_pos

        CanopyGeometry = {
            azimuth = {-110.0, 110.0},
            elevation = {-40.0, 70.0}
        },

	Failures = {
					{ id = 'asc', 			label = _('ASC'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
					{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
					{ id = 'hydro',  		label = _('HYDRO'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
					{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
					{ id = 'r_engine',	label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
	},
	HumanRadio = {
		frequency = 127.5,  -- Radio Freq
		editable = true,
		minFrequency = 100.000,
		maxFrequency = 156.000,
		modulation = MODULATION_AM
	},

	Pylons =     {

        pylon(1, 0, 0, 0, 0,
            {
            },
            {
            }
        ),
	},
	
	Tasks = {
        aircraft_task(Transport),
    },	
	DefaultTask = aircraft_task(Transport),

	SFM_Data = {     --An-26B.
	aerodynamics =
		{
			Cy0	=	0,
			Mzalfa	=	6.6,
			Mzalfadt	=	1,
			kjx	=	2.85,
			kjz	=	0.00125,
			Czbe	=	-0.012,
			cx_gear	=	0.015,
			cx_flap	=	0.08,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.022,	0.07,	0.0346,	1e-006,	0.5,	20,	1.2},
				[2] = 	{0.1,	0.022,	0.07,	0.0346,	1e-006,	1,	20,	1.2},
				[3] = 	{0.2,	0.022,	0.07,	0.0346,	1e-006,	1.5,	20,	1.2},
				[4] = 	{0.3,	0.022,	0.073,	0.0346,	1e-006,	2,	20,	1.2},
				[5] = 	{0.4,	0.022,	0.076,	0.0346,	1e-006,	2.5,	20,	1.2},
				[6] = 	{0.5,	0.022,	0.079,	0.0346,	1e-006,	3,	20,	1.2},
				[7] = 	{0.6,	0.022,	0.083,	-2.7755575615629e-017,	0.32,	3.5,	20,	1.2},
				[8] = 	{0.7,	0.025,	0.085,	0.049,	0.9,	3.5,	20,	1},
				[9] = 	{0.8,	0.034,	0.086,	0.117,	1,	3.5,	20,	0.8},
				[10] = 	{0.9,	0.0395,	0.08525,	0.14475,	0.7925,	3.5,	20,	0.6},
				[11] = 	{1.2,	0.056,	0.083,	0.228,	0.17,	3.5,	20,	0.4},
				[12] = 	{1.5,	0.056,	0.083,	0.228,	0.17,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			--typeng	=	0,
			--type	=	"Piston",
			type	=	"TurboJet",
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	0.37,
			cefor	=	0.37,
			dpdh_m	=	2400,
			dpdh_f	=	2400,
			table_data = 
			{
				[1] = 	{0,	55907.6,	55907.6},
				[2] = 	{0.1,	54979.1,	54979.1},
				[3] = 	{0.2,	45800.4,	45800.4},
				[4] = 	{0.3,	38485.5,	38485.5},
				[5] = 	{0.4,	32458.8,	32458.8},
				[6] = 	{0.5,	26586.6,	26586.6},
				[7] = 	{0.6,	21674,	21674},
				[8] = 	{0.7,	18028.1,	18028.1},
				[9] = 	{0.8,	15363.8,	15363.8},
				[10] = 	{0.9,	12235.1,	12235.1},
				[11] = 	{1.3,	178000,	178000},
			}, -- end of table_data
		}, -- end of engine
	},


	--damage , index meaning see in  Scripts\Aircrafts\_Common\Damage.lua
	Damage = {
	[0]  = {critical_damage = 5,  args = {146}},
	[1]  = {critical_damage = 3,  args = {296}},
	[2]  = {critical_damage = 3,  args = {297}},
	[3]  = {critical_damage = 8, args = {65}},
	[4]  = {critical_damage = 2,  args = {298}},
	[5]  = {critical_damage = 2,  args = {301}},
	[7]  = {critical_damage = 2,  args = {249}},
	[8]  = {critical_damage = 3,  args = {265}},
	[9]  = {critical_damage = 3,  args = {154}},
	[10] = {critical_damage = 3,  args = {153}},
	[11] = {critical_damage = 1,  args = {167}},
	[12] = {critical_damage = 1,  args = {161}},
	[13] = {critical_damage = 2,  args = {169}},
	[14] = {critical_damage = 2,  args = {163}},
	[15] = {critical_damage = 2,  args = {267}},
	[16] = {critical_damage = 2,  args = {266}},
	[17] = {critical_damage = 2,  args = {168}},
	[18] = {critical_damage = 2,  args = {162}},
	[20] = {critical_damage = 2,  args = {183}},
	[23] = {critical_damage = 5, args = {223}},
	[24] = {critical_damage = 5, args = {213}},
	[25] = {critical_damage = 2,  args = {226}},
	[26] = {critical_damage = 2,  args = {216}},
	[29] = {critical_damage = 5, args = {224}, deps_cells = {23, 25}},
	[30] = {critical_damage = 5, args = {214}, deps_cells = {24, 26}},
	[35] = {critical_damage = 6, args = {225}, deps_cells = {23, 29, 25, 37}},
	[36] = {critical_damage = 6, args = {215}, deps_cells = {24, 30, 26, 38}}, 
	[37] = {critical_damage = 2,  args = {228}},
	[38] = {critical_damage = 2,  args = {218}},
	[39] = {critical_damage = 2,  args = {244}, deps_cells = {53}}, 
	[40] = {critical_damage = 2,  args = {241}, deps_cells = {54}}, 
	[43] = {critical_damage = 2,  args = {243}, deps_cells = {39, 53}},
	[44] = {critical_damage = 2,  args = {242}, deps_cells = {40, 54}}, 
	[51] = {critical_damage = 2,  args = {240}}, 
	[52] = {critical_damage = 2,  args = {238}},
	[53] = {critical_damage = 2,  args = {248}},
	[54] = {critical_damage = 2,  args = {247}},
	[56] = {critical_damage = 2,  args = {158}},
	[57] = {critical_damage = 2,  args = {157}},
	[59] = {critical_damage = 3,  args = {148}},
	[61] = {critical_damage = 2,  args = {147}},
	[82] = {critical_damage = 2,  args = {152}},
	},
	
	DamageParts = 
	{  
		[1] = "Cessna_210N-OBLOMOK-WING-R", -- wing R
		[2] = "Cessna_210N-OBLOMOK-WING-L", -- wing L
--		[3] = "kc-135-oblomok-noise", -- nose
--		[4] = "kc-135-oblomok-tail-r", -- tail
--		[5] = "kc-135-oblomok-tail-l", -- tail
	},
	
-- VSN DCS World\Scripts\Aircrafts\_Common\Lights.lua

	lights_data = { typename = "collection", lights = {
	
    [1] = { typename = "collection", -- WOLALIGHT_STROBES
					lights = {	
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV_BANO_1"},--R
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV1_BANO_1"},--L
						--{typename  = "natostrobelight",	argument_1  = 199, period = 1.2, color = {0.8,0,0}, connector = "RESERV2_BANO_1"},--H
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON L"},--195
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "WHITE_BEACON R"},--196
						--{typename  = "natostrobelight",	argument_1  = 192, period = 1.2, color = {0.8,0,0}, connector = "BANO_0_BACK"},
						--{typename  = "natostrobelight",	argument_1  = 195, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON L"},
						--{typename  = "natostrobelight",	argument_1  = 196, period = 1.2, color = {0.8,0,0}, connector = "RED_BEACON R"},
							}
			},
	[2] = { typename = "collection",
					lights = {-- 1=Landing light -- 2=Landing/Taxi light
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 209, dir_correction = {elevation = math.rad(-1)}},--"MAIN_SPOT_PTR_02","RESERV_SPOT_PTR"
						{typename = "spotlight", connector = "MAIN_SPOT_PTR", argument = 208, dir_correction = {elevation = math.rad(3)}},--"MAIN_SPOT_PTR_01","RESERV_SPOT_PTR","MAIN_SPOT_PTL",
							}
			},
    [3]	= {	typename = "collection", -- nav_lights_default
					lights = {
						{typename  = "omnilight",connector =  "BANO_1"  ,argument  =  190,color = {0.99, 0.11, 0.3}},-- Left Position(red)
						{typename  = "omnilight",connector =  "BANO_2"  ,argument  =  191,color = {0, 0.894, 0.6}},-- Right Position(green)
						{typename  = "omnilight",connector =  "BANO_0"  ,argument  =  192,color = {1, 1, 1}},-- Tail Position white)
							}
			},
	[4] = { typename = "collection", -- formation_lights_default
					lights = {
						{typename  = "argumentlight" ,argument  = 200,},--formation_lights_tail_1 = 200;
						{typename  = "argumentlight" ,argument  = 201,},--formation_lights_tail_2 = 201;
						{typename  = "argumentlight" ,argument  = 202,},--formation_lights_left   = 202;
						{typename  = "argumentlight" ,argument  = 203,},--formation_lights_right  = 203;
						{typename  = "argumentlight" ,argument  =  88,},--old aircraft arg 
							}
			},
--[[			
	[5] = { typename = "collection", -- strobe_lights_default
					lights = {
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument = 193, color = {0.8,0,0}},-- Arg 193, 83,
						{typename  = "strobelight",connector =  "RED_BEACON_2",argument = 194, color = {0.8,0,0}},-- (-1"RESERV_RED_BEACON")
						{typename  = "strobelight",connector =  "RED_BEACON"  ,argument =  83, color = {0.8,0,0}},-- Arg 193, 83,
							}
			},
--]]			
	}},
}

add_aircraft(Cessna_210N)

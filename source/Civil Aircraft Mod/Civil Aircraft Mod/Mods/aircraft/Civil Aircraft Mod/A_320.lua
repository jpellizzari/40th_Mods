
A_320 =  {
      
		Name 			= 'A_320',--AG
		DisplayName		= _('A-320'),--AG
        Picture 		= "A-320.png",
        Rate 			= "40",
        Shape			= "A_320",--AG	
        WorldID			=  WSTYPE_PLACEHOLDER, 
		singleInFlight 	= true,
        
	shape_table_data 	= 
	{
		{
			file  	 	= 'A_320';--AG
			life  	 	= 20; -- lifebar
			vis   	 	= 3; -- visibility gain.
			desrt    	= 'kc-135-oblomok'; -- Name of destroyed object file name
			fire  	 	= { 300, 2}; 			-- Fire on the ground after destoyed: 300sec 2m
			username	= 'A_320';--AG
			index       =  WSTYPE_PLACEHOLDER;
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
	    attribute  			= {wsType_Air, wsType_Airplane, wsType_Cruiser, WSTYPE_PLACEHOLDER,
        "Transports",},
		
	    Categories = {
        },
				
		M_empty	=	44663,
		M_nominal	=	100000,
		M_max	=	146000,
		M_fuel_max	=	90700,
		H_max	=	12000,
		average_fuel_consumption	=	0.1893,
		CAS_min	=	54,
		V_opt	=	220,
		V_take_off	=	58,
		V_land	=	61,
		has_afteburner	=	false,
		has_speedbrake	=	false,
		has_differential_stabilizer = false,
		main_gear_pos = 	{-0.36,	-4.13,	3.80},
		radar_can_see_ground	=	true,
		nose_gear_pos = 	{12.12,	-4.13,	0},
		AOA_take_off	=	0.14,
		stores_number	=	0,
		bank_angle_max	=	45,
		Ny_min	=	0.5,
		Ny_max	=	2.5,
		tand_gear_max	=	0.877,
		V_max_sea_level	=	280.28,
		V_max_h	=	280.28,
		tanker_type	=	0,
		wing_area	=	226,
		wing_span	=	35.80,--B-52 60.0,
		thrust_sum_max	=	38100,
		thrust_sum_ab	=	38100,
		Vy_max	=	10,
		length	=	37.57,--tu-160 67.0,
		height	=	11.76,--c-17 19.60,
		flaps_maneuver	=	0.5,
		Mach_max	=	0.9,--0.82,
		range	=	12247,
		crew_size	=	3,
		RCS	=	80,
		Ny_max_e	=	2,
		detection_range_max	=	0,
		IR_emission_coeff	=	4,
		IR_emission_coeff_ab	=	0,
		engines_count	=	2,
		wing_tip_pos = 	{-4.47,	0.18,	16.50},
		nose_gear_wheel_diameter	=	0.764,
		main_gear_wheel_diameter	=	1.15,
		engines_nozzles = 
		{
			[1] = 
			{
				pos = 	{-0.8,	0.9,	9.5},--
				elevation	=	0,
				diameter	=	1.1,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, -- end of [1]
			[2] = 
			{
				pos = 	{-0.8,	0.9,	-9.5},--
				elevation	=	0,
				diameter	=	1.1,
				exhaust_length_ab	=	11.794,
				exhaust_length_ab_K	=	0.76,
				smokiness_level     = 	0.02, 
			}, -- end of [2] 
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

	SFM_Data = {     --kc-135
	aerodynamics = 
		{
			Cy0	=	0,
			Mzalfa	=	4.355,
			Mzalfadt	=	0.8,
			kjx	=	2.75,
			kjz	=	0.00125,
			Czbe	=	-0.016,
			cx_gear	=	0.015,
			cx_flap	=	0.05,
			cy_flap	=	1,
			cx_brk	=	0.06,
			table_data = 
			{
				[1] = 	{0,	0.023,	0.117,	0.064,	0,	0.5,	20,	1.4},
				[2] = 	{0.2,	0.023,	0.117,	0.064,	0,	1.5,	20,	1.4},
				[3] = 	{0.4,	0.023,	0.117,	0.064,	0,	2.5,	20,	1.4},
				[4] = 	{0.6,	0.025,	0.117,	0.064,	0.022,	3.5,	20,	1.4},
				[5] = 	{0.7,	0.03,	0.117,	0.083,	0.031,	3.5,	20,	1.2},
				[6] = 	{0.8,	0.032,	0.117,	0.107,	0.04,	3.5,	20,	1},
				[7] = 	{0.9,	0.045,	0.117,	0.148,	0.058,	3.5,	20,	0.8},
				[8] = 	{1,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.7},
				[9] = 	{1.5,	0.054,	0.117,	0.199,	0.1,	3.5,	20,	0.2},
			}, -- end of table_data
		}, -- end of aerodynamics
		engine = 
		{
			Nmg	=	67.5,
			MinRUD	=	0,
			MaxRUD	=	1,
			MaksRUD	=	1,
			ForsRUD	=	1,
			typeng	=	0,
			hMaxEng	=	19.5,
			dcx_eng	=	0.0085,
			cemax	=	1.24,
			cefor	=	2.56,
			dpdh_m	=	9000,
			dpdh_f	=	9000,
			table_data = 
			{
				[1] = 	{0,	373600,	373600},
				[2] = 	{0.2,	312756.6,	312756.6},
				[3] = 	{0.4,	279000,	279000},
				[4] = 	{0.6,	251000,	251000},
				[5] = 	{0.7,	253000,	253000},
				[6] = 	{0.8,	262000,	262000},
				[7] = 	{0.9,	274000,	274000},
				[8] = 	{1,	279000,	279000},
				[9] = 	{1.1,	280000,	280000},
				[10] = 	{1.2,	266000,	266000},
				[11] = 	{1.3,	95001.1,	95001.1},
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
		[1] = "A_320-OBLOMOK-WING-R", -- wing R
		[2] = "A_320-OBLOMOK-WING-L", -- wing L
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

add_aircraft(A_320)

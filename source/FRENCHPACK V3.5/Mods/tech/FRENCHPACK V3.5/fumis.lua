mount_vfs_texture_path(current_mod_path.."/Textures/AMX10RCR.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/SmokeD.zip")
--Color marker rocket green


GT_t.CH_t.SMOKD = {
	life = 10000000000000000,
	mass = 5000,
	length = 5,
	width = 5,
	max_road_velocity = 0,
	max_slope = 0,
	engine_power = 0,
	max_vert_obstacle = 0,
	max_acceleration = 0,
	min_turn_radius = 0,
	X_gear_1 = 0,
	Y_gear_1 = 0,
	Z_gear_1 = 0,
	X_gear_2 = 0,
	Y_gear_2 = 0,
	Z_gear_2 = 0,
	gear_type = GT_t.GEAR_TYPES.STATIONARY,
	r_max = 0,
	r_track = 0,
	armour_thickness = 0.6,
}

--SMOKED1

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.SMOKD);


GT.visual.shape = "SmokeD1"
GT.visual.shape_dstr = "SmokeD1"


--Burning after hit
GT.visual.fire_time = 5 --burning time (seconds)
GT.visual.fire_size = 0.2 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.animation_arguments.crew_presence = 50;

GT.Name = "SmokeD1";
GT.DisplayName = _("SmokeD1");
GT.Rate = 5;

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};
GT.category = "Unarmed";

GT.Countries = { "France"}; 

add_surface_unit(GT)


--SMOKED3

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.SMOKD);


GT.visual.shape = "SmokeD3"
GT.visual.shape_dstr = "SmokeD3"


--Burning after hit
GT.visual.fire_time = 5 --burning time (seconds)
GT.visual.fire_size = 0.2 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.animation_arguments.crew_presence = 50;

GT.Name = "SmokeD3";
GT.DisplayName = _("SmokeD3");
GT.Rate = 5;

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};
GT.category = "Unarmed";

GT.Countries = { "France"}; 

add_surface_unit(GT)

local FUMIRCG = {
	category			= CAT_ROCKETS,
	name				= "FUMIRCG",
	user_name			= _("FUMIRCG"),
	wsTypeOfWeapon		= {wsType_Weapon,wsType_NURS,wsType_Rocket, WSTYPE_PLACEHOLDER},
	scheme			  = "nurs-marker", --Marker type rocket, for standard rocket, write "nurs-standard"
	model 				= "GRFUMI", --3Dmodel name used

        fm = 
        {
            mass        = 11.1,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 1.1},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 0.00928,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 0,
            wind_sigma  = 0,
        },

         engine =
        {
            fuel_mass   = 3.7137188,
            impulse     = 100,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,
			
            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.1,
        },

	warhead	= 
	{
	transparency= 0.5,
    color = {0, 3, 0}, -- green color
    intensity = 3,
    duration = 300,
	flare    = false	
	},

	shape_table_data =
	{
		{
			file		 = "GRFUMI",
			life		 = 1,
			fire		 = {0, 1},
			username = "GREEN",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	properties =
	{
		dist_min = 500,
		dist_max = 7000,
	}
}

declare_weapon(FUMIRCG)

-- defense white smokes

local FUMIRCW = {
	category			= CAT_ROCKETS,
	name				= "FUMIRCW",
	user_name			= _("FUMIRCW"),
	wsTypeOfWeapon		= {wsType_Weapon,wsType_NURS,wsType_Rocket, WSTYPE_PLACEHOLDER},
	scheme			  = "nurs-marker",
	model 				= "GRFUMI",

        fm = 
        {
            mass        = 10,   
            caliber     = 0.001, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 0.00928,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

         engine =
        {
            fuel_mass   = 2, --Difference with the standard rocket is the fuel mass, the impulse initial speed, and work time of the engine.
            impulse     = 7,
            boost_time  = 0,
            work_time   = 0.1,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 1,
        },

	warhead	= 
	{
	transparency= 1000,
    color = {1, 1, 1}, -- White colour RGB
    intensity = 0.9,
    duration = 60,
	flare    = false
	},


	shape_table_data =
	{
		{
			file		 = "GRFUMI",
			life		 = 1,
			fire		 = {0, 1},
			username = "WHITE",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	properties =
	{
		dist_min = 1,
		dist_max = 5,
	}
}

declare_weapon(FUMIRCW)

local DRECS = {
	category			= CAT_ROCKETS,
	name				= "DRECS",
	user_name			= _("DRECS"),
	wsTypeOfWeapon		= {wsType_Weapon,wsType_NURS,wsType_Rocket, WSTYPE_PLACEHOLDER},
	scheme			  = "nurs-ground-cluster",
	model 				= "GRFUMI",

        fm = 
        {
            mass        = 10,   
            caliber     = 0.001, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 0.00928,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

         engine =
        {
            fuel_mass   = 2, --Difference with the standard rocket is the fuel mass, the impulse initial speed, and work time of the engine.
            impulse     = 10,
            boost_time  = 0,
            work_time   = 0.1,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.1,
        },

    launcher = 
    {
        cluster = cluster_desc("Bomb_Other", wsType_Bomb_Cluster, combine_cluster(PTAB_10_5_DATA,
        {
            cluster = {
                count        = 1,
                effect_count = 5, 
            
                wind_sigma  = 5,
                impulse_sigma = 30000,
                moment_sigma = 0.0001,
            }
        }))
    },
	
	    fuze = 
    {
        fire_height = 8,
    },
	
    shape_table_data =
	{
		{
			file		 = "GRFUMI",
			life		 = 1,
			fire		 = {0, 1},
			username = "DRECS",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	properties =
	{
		dist_min = 1,
		dist_max = 5,
	}
}

declare_weapon(DRECS)


-- declare_cluster_nurs("SMERCH_9M55K", _("SMERCH"), "9M55", "nurs-ground-cluster",
-- {
    -- fm = 
    -- {
        -- mass        = 480.9 + 320.0,
        -- caliber     = 0.300,    
        -- cx_coeff    = {1,0.66,0.49,0.02,1.53},
        -- L           = 7.6,
        -- I           = 3898.8,
        -- Ma          = 0.192352,
        -- Mw          = 2.521688,
        -- shapeName   = "",
        
        -- wind_time   = 3,
        -- wind_sigma  = 2,
    -- },

    -- engine =
    -- {
        -- fuel_mass   = 320.0,
        -- impulse     = 220.0,
        -- boost_time  = 0,
        -- work_time   = 3,
        -- boost_factor= 1,
        -- nozzle_position =  { {-4.00, 0, 0} },
		-- nozzle_orientationXYZ =  {{0, 0, 0}},
        -- tail_width  = 3.0,
        -- boost_tail  = 0,
        -- work_tail   = 1,

            -- smoke_color = {0.9, 0.9, 0.9},
            -- smoke_transparency = 0.5,
    -- },
    


-- },{
    -- dist_min = 0,       -- Не используется
    -- dist_max = 0,   
-- })































































local FUMIRCR = {
	category			= CAT_ROCKETS,
	name				= "FUMIRCR",
	user_name			= _("FUMIRCR"),
	wsTypeOfWeapon		= {wsType_Weapon,wsType_NURS,wsType_Rocket, WSTYPE_PLACEHOLDER},
	scheme			  = "nurs-marker",
	model 				= "GRFUMI",

        fm = 
        {
            mass        = 11.1,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 0.00928,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 0,
            wind_sigma  = 0,
        },

         engine =
        {
            fuel_mass   = 3.7137188,
            impulse     = 100,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.1,
        },

	warhead	= 
	{
	transparency= 1,
    color = {3, 0, 0}, -- White colour RGB
    intensity = 5,
    duration = 60,
	flare    = false
	},

	shape_table_data =
	{
		{
			file		 = "GRFUMI",
			life		 = 1,
			fire		 = {0, 1},
			username = "GREEN",
			index = WSTYPE_PLACEHOLDER,
		},
	},

	properties =
	{
		dist_min = 500,
		dist_max = 7000,
	}
}

declare_weapon(FUMIRCR)

local SMOKEEXPLO = {
	category = CAT_SHELLS,
	user_name = _("SMOKEEXPLO"),
	model_name    = "pula",
	v0    = 30.0,
	Dv0   = 0.0027,
	Da0     = 0.00036,
	Da1     = 0.0009,
	mass      = 5,
	explosive     = 0.5,
	life_time     = 0.1,
	caliber     	 = 105.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.3,0.60,0.75,0.16,2.20},
	k1        = 9.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	
	name = "SMOKEEXPLO",

	cartridge = 0,
	};
declare_weapon(SMOKEEXPLO);




-- GT_t.LN_t._SMOKD = {} 
-- GT_t.LN_t._SMOKD.type = 2
-- GT_t.LN_t._SMOKD.xc = 0.585
-- GT_t.LN_t._SMOKD.distanceMin = 5
-- GT_t.LN_t._SMOKD.distanceMax = 15
-- GT_t.LN_t._SMOKD.max_trg_alt = 20
-- GT_t.LN_t._SMOKD.reactionTime = 0.01
-- GT_t.LN_t._SMOKD.launch_delay = 0.01

-- GT_t.LN_t._SMOKD.maxShootingSpeed = 5
-- GT_t.LN_t._SMOKD.beamWidth = math.rad(1);
-- GT_t.LN_t._SMOKD.inclination_correction_upper_limit = math.rad(20);
-- GT_t.LN_t._SMOKD.inclination_correction_bias = math.rad(0.4);
-- GT_t.LN_t._SMOKD.sensor = {}
-- set_recursive_metatable(GT_t.LN_t._SMOKD.sensor, GT_t.WSN_t[7])
-- GT_t.LN_t._SMOKD.PL = {}
-- GT_t.LN_t._SMOKD.PL[1] = {}
-- GT_t.LN_t._SMOKD.PL[1].shot_delay = 5
-- GT_t.LN_t._SMOKD.PL[1].ammo_capacity = 8

-- GT_t.LN_t._SMOKD.PL[1].reload_time = 20*12;
-- GT_t.LN_t._SMOKD.PL[1].type_ammunition=SMOKEEXPLO.wsTypeOfWeapon
-- GT_t.LN_t._SMOKD.PL[1].shell_name = {"SMOKEEXPLO", "SMOKEEXPLO1"};
-- GT_t.LN_t._SMOKD.PL[1].switch_on_delay = 0.1;
-- GT_t.LN_t._SMOKD.BR = { {pos = {1.2, 0, 0} } }

Def_mg_LN = {
    type = 9, --machinegun
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[1]);



GT_t.LN_t._SMOKD = {}
GT_t.LN_t._SMOKD.type = 34
GT_t.LN_t._SMOKD.distanceMin = 5
GT_t.LN_t._SMOKD.distanceMax = 5000
GT_t.LN_t._SMOKD.reactionTime = 10
GT_t.LN_t._SMOKD.launch_delay = 0; 
GT_t.LN_t._SMOKD.show_external_missile = false
GT_t.LN_t._SMOKD.sensor = {}
set_recursive_metatable(GT_t.LN_t._SMOKD.sensor, GT_t.WSN_t[7])
GT_t.LN_t._SMOKD.PL = {}
GT_t.LN_t._SMOKD.PL[1] = {}
GT_t.LN_t._SMOKD.PL[1].ammo_capacity = 16
GT_t.LN_t._SMOKD.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._SMOKD.PL[1].rocket_name = "weapons.nurs.FUMIRCW"; 
GT_t.LN_t._SMOKD.PL[1].reload_time = 200
GT_t.LN_t._SMOKD.PL[1].shot_delay = 1/1000
GT_t.LN_t._SMOKD.customViewPoint =  { "IronSight/IronSight", {0, 0, 0.0}}; 
GT_t.LN_t._SMOKD.BR = {
	{connector_name = "T1"},
	{connector_name = "T1bis"},
	{connector_name = "T2"},
	{connector_name = "T2bis"},
	{connector_name = "T3"},
	{connector_name = "T3bis"},
	{connector_name = "T4"},
	{connector_name = "T4bis"},
	{connector_name = "T5"},
	{connector_name = "T5bis"},
	{connector_name = "T6"},
	{connector_name = "T6bis"},
	{connector_name = "T7"},
	{connector_name = "T7bis"},
	{connector_name = "T8"},
	{connector_name = "T8bis"},

}; 


GT_t.LN_t._SMOKD1 = {}
GT_t.LN_t._SMOKD1.type = 34
GT_t.LN_t._SMOKD1.distanceMin = 5
GT_t.LN_t._SMOKD1.distanceMax = 5000
GT_t.LN_t._SMOKD1.reactionTime = 10
GT_t.LN_t._SMOKD1.launch_delay = 0; 
GT_t.LN_t._SMOKD1.show_external_missile = false
GT_t.LN_t._SMOKD1.sensor = {}
set_recursive_metatable(GT_t.LN_t._SMOKD1.sensor, GT_t.WSN_t[7])
GT_t.LN_t._SMOKD1.PL = {}
GT_t.LN_t._SMOKD1.PL[1] = {}
GT_t.LN_t._SMOKD1.PL[1].ammo_capacity = 16
GT_t.LN_t._SMOKD1.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._SMOKD1.PL[1].rocket_name = "weapons.nurs.FUMIRCW"; 
GT_t.LN_t._SMOKD1.PL[1].reload_time = 200
GT_t.LN_t._SMOKD1.PL[1].shot_delay = 1/1000
GT_t.LN_t._SMOKD1.customViewPoint =  { "IronSight/IronSight", {0, 0, 0.0}}; 
GT_t.LN_t._SMOKD1.BR = {
	{connector_name = "FUMI1", drawArgument = 4},
	{connector_name = "FUMI2"},
	{connector_name = "FUMI3"},
	{connector_name = "FUMI4"},
	{connector_name = "FUMI5"},
	{connector_name = "FUMI6"},
	{connector_name = "FUMI7"},
	{connector_name = "FUMI8"},
	{connector_name = "FUMI9"},
	{connector_name = "FUMI10"},
	{connector_name = "FUMI11"},
	{connector_name = "FUMI12"},
	{connector_name = "FUMI13"},
	{connector_name = "FUMI14"},
	{connector_name = "FUMI15"},
	{connector_name = "FUMI16"},

}; 

GT_t.LN_t._DRECS = {}
GT_t.LN_t._DRECS.type = 34
GT_t.LN_t._DRECS.distanceMin = 5
GT_t.LN_t._DRECS.distanceMax = 5000
GT_t.LN_t._DRECS.reactionTime = 10
GT_t.LN_t._DRECS.launch_delay = 0; 
GT_t.LN_t._DRECS.show_external_missile = false
GT_t.LN_t._DRECS.sensor = {}
set_recursive_metatable(GT_t.LN_t._DRECS.sensor, GT_t.WSN_t[7])
GT_t.LN_t._DRECS.PL = {}
GT_t.LN_t._DRECS.PL[1] = {}
GT_t.LN_t._DRECS.PL[1].ammo_capacity = 6
GT_t.LN_t._DRECS.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._DRECS.PL[1].rocket_name = "weapons.nurs.DRECS"; 
GT_t.LN_t._DRECS.PL[1].reload_time = 200
GT_t.LN_t._DRECS.PL[1].shot_delay = 1/1000
GT_t.LN_t._DRECS.customViewPoint =  { "IronSight/IronSight", {0, 0, 0.0}}; 
GT_t.LN_t._DRECS.BR = {
	{connector_name = "FUMIINF1", drawArgument = 5},
	{connector_name = "FUMIINF7"},
	{connector_name = "FUMIINF2"},
	{connector_name = "FUMIINF4"},
	{connector_name = "FUMIINF6"},
	{connector_name = "FUMIINF8"},

}; 

GT_t.LN_t._SMOKG = {}
GT_t.LN_t._SMOKG.type = 34
GT_t.LN_t._SMOKG.distanceMin = 5
GT_t.LN_t._SMOKG.distanceMax = 5000
GT_t.LN_t._SMOKG.reactionTime = 10
GT_t.LN_t._SMOKG.launch_delay = 0.1; 
GT_t.LN_t._SMOKG.show_external_missile = false
GT_t.LN_t._SMOKG.sensor = {}
set_recursive_metatable(GT_t.LN_t._SMOKG.sensor, GT_t.WSN_t[7])
GT_t.LN_t._SMOKG.PL = {}
GT_t.LN_t._SMOKG.PL[1] = {}
GT_t.LN_t._SMOKG.PL[1].ammo_capacity = 20
GT_t.LN_t._SMOKG.PL[1].rocket_name = "weapons.nurs.FUMIRCG"; 
GT_t.LN_t._SMOKG.PL[1].reload_time = 200
GT_t.LN_t._SMOKG.PL[1].shot_delay = 1
GT_t.LN_t._SMOKG.customViewPoint =  { "IronSight/IronSight", {0, 0, 0.0}}; 
GT_t.LN_t._SMOKG.BR = { {pos = {0, 0, 0} } }

GT_t.LN_t._SMOKR = {}
GT_t.LN_t._SMOKR.type = 34
GT_t.LN_t._SMOKR.distanceMin = 5
GT_t.LN_t._SMOKR.distanceMax = 5000
GT_t.LN_t._SMOKR.reactionTime = 10
GT_t.LN_t._SMOKR.launch_delay = 0.1; 
GT_t.LN_t._SMOKR.show_external_missile = false
GT_t.LN_t._SMOKR.sensor = {}
set_recursive_metatable(GT_t.LN_t._SMOKR.sensor, GT_t.WSN_t[7])
GT_t.LN_t._SMOKR.PL = {}
GT_t.LN_t._SMOKR.PL[1] = {}
GT_t.LN_t._SMOKR.PL[1].ammo_capacity = 20
GT_t.LN_t._SMOKR.PL[1].rocket_name = "weapons.nurs.FUMIRCR"; 
GT_t.LN_t._SMOKR.PL[1].reload_time = 200
GT_t.LN_t._SMOKR.PL[1].shot_delay = 1
GT_t.LN_t._SMOKR.customViewPoint =  { "IronSight/IronSight", {0, 0, 0.0}}; 
GT_t.LN_t._SMOKR.BR = { {pos = {0, 0, 0} } }
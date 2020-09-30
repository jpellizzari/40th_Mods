mount_vfs_texture_path(current_mod_path.."/Textures/Toyota.zip")


------------------------chassis
GT_t.CH_t.TOYOTA = {
	life = 2.0,
	mass = 1200,
	length = 4.5,
	width = 1.5,
	max_road_velocity = 35,		
	max_slope = 0.4,
	engine_power = 200,
	gear_count = 4,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 0.5,
	max_acceleration = 4.08497,
	min_turn_radius = 5,
	X_gear_1 = 1.5,
	Y_gear_1 = 0,
	Z_gear_1 = 0.333,
	X_gear_2 = -1.3,
	Y_gear_2 = 0,
	Z_gear_2 = 0.333,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.330,
	armour_thickness = 0.002,
};

GT_t.CH_t.KAMIKAZZ = {
	life = 4,
	mass = 1200,
	length = 4.5,
	width = 1.5,
	max_road_velocity = 35,		
	max_slope = 0.4,
	engine_power = 200,
	gear_count = 4,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 0.5,
	max_acceleration = 4.08497,
	min_turn_radius = 5,
	X_gear_1 = 1.5,
	Y_gear_1 = 0,
	Z_gear_1 = 0.333,
	X_gear_2 = -1.3,
	Y_gear_2 = 0,
	Z_gear_2 = 0.333,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.330,
	armour_thickness = 0.02,
};



----------------------------------------------
----------------------------------------------SHELL

local BOMBK = {
	category = CAT_SHELLS,
	user_name = _("BOMBK"),
	model_name    = "pula",
	v0    = 10.0,
	Dv0   = 0.00508,
	Da0     = 0.0005,
	Da1     = 0.0,
	mass      = 4000,
	explosive     = 10000,
	life_time     = 0.1,
	caliber     = 240.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.0,0.78,0.60,0.15,1.80},
	k1        = 9.4e-09,
	tracer_off    = 4,
	scale_tracer  = 1,
	
	name = "BOMBK",

	cartridge = 0,
	};
declare_weapon(BOMBK);


--------------------------------------------------
--------------------------------------------------CANON

GT_t.LN_t._BOMBKA = {} 
GT_t.LN_t._BOMBKA.type = 2
GT_t.LN_t._BOMBKA.xc = 0.585
GT_t.LN_t._BOMBKA.distanceMin = 1
GT_t.LN_t._BOMBKA.distanceMax = 50
GT_t.LN_t._BOMBKA.max_trg_alt = 100
GT_t.LN_t._BOMBKA.reactionTime = 1
GT_t.LN_t._BOMBKA.launch_delay = 1
GT_t.LN_t._BOMBKA.radialDisperse = 2.7;
GT_t.LN_t._BOMBKA.dispertionReductionFactor = 0.988;
GT_t.LN_t._BOMBKA.maxShootingSpeed = 30
GT_t.LN_t._BOMBKA.beamWidth = math.rad(1);
GT_t.LN_t._BOMBKA.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._BOMBKA.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._BOMBKA.sensor = {}
set_recursive_metatable(GT_t.LN_t._BOMBKA.sensor, GT_t.WSN_t[4])
GT_t.LN_t._BOMBKA.PL = {}
GT_t.LN_t._BOMBKA.PL[1] = {}
GT_t.LN_t._BOMBKA.PL[1].shot_delay = 9
GT_t.LN_t._BOMBKA.PL[1].ammo_capacity = 12
GT_t.LN_t._BOMBKA.PL[1].reload_time = 600;
GT_t.LN_t._BOMBKA.PL[1].type_ammunition=BOMBK.wsTypeOfWeapon
GT_t.LN_t._BOMBKA.PL[1].shell_name = {"BOMBK"};
GT_t.LN_t._BOMBKA.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._BOMBKA.BR = { {pos = {1.2, 0, 0} } }



------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------



-- Toyota bleu

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TOYOTA);

GT.visual.shape = "Toyota_bleu"
GT.visual.shape_dstr = "Toyota_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 4000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 2500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "POINT_DRIVER"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'Center Tower';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(60)},
                   
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = false;
GT.WS[ws].laser = false;
GT.WS[ws].pointer = 'POINT_SIGHT';



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 3
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;


GT.Name = "Toyota_bleu"

GT.DisplayName = _("DIM' TOYOTA BLUE")

GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",                               
        };
GT.category = "Armor";

GT.Countries = {"Abkhazia", "Saudi Arabia", "Bahrain", "Chile", "Cuba", "Georgia", "Honduras", "Insurgents", "Iraq", "Iran", "Jordan", "Kazakhstan", "Kuwait", "Libya", "Morocco", "Oman", "South Ossetia", "Pakistan", "Qatar", "Serbia", "Slovakia", "Sudan", "Syria", "Yemen", "Yugoslavia", "United Arab Emirates", "Ethiopia"}; 

add_surface_unit(GT)

-- Toyota vert

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TOYOTA);

GT.visual.shape = "Toyota_vert"
GT.visual.shape_dstr = "Toyota_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 4000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 2500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "POINT_DRIVER"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'Center Tower';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(60)},
                   
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = false;
GT.WS[ws].laser = false;
GT.WS[ws].pointer = 'POINT_SIGHT';



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 3
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;


GT.Name = "Toyota_vert"

GT.DisplayName = _("DIM' TOYOTA GREEN")

GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",                               
        };
GT.category = "Armor";

GT.Countries = {"Abkhazia", "Saudi Arabia", "Bahrain", "Chile", "Cuba", "Georgia", "Honduras", "Insurgents", "Iraq", "Iran", "Jordan", "Kazakhstan", "Kuwait", "Libya", "Morocco", "Oman", "South Ossetia", "Pakistan", "Qatar", "Serbia", "Slovakia", "Sudan", "Syria", "Yemen", "Yugoslavia", "United Arab Emirates", "Ethiopia"}; 

add_surface_unit(GT)

-- Toyota bleu

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TOYOTA);

GT.visual.shape = "Toyota_desert"
GT.visual.shape_dstr = "Toyota_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 4000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 2500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "POINT_DRIVER"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'Center Tower';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(60)},
                   
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = false;
GT.WS[ws].laser = false;
GT.WS[ws].pointer = 'POINT_SIGHT';



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.type = 3
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;


GT.Name = "Toyota_desert"

GT.DisplayName = _("DIM' TOYOTA DESERT")

GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",                               
        };
GT.category = "Armor";

GT.Countries = {"Abkhazia", "Saudi Arabia", "Bahrain", "Chile", "Cuba", "Georgia", "Honduras", "Insurgents", "Iraq", "Iran", "Jordan", "Kazakhstan", "Kuwait", "Libya", "Morocco", "Oman", "South Ossetia", "Pakistan", "Qatar", "Serbia", "Slovakia", "Sudan", "Syria", "Yemen", "Yugoslavia", "United Arab Emirates", "Ethiopia"}; 

add_surface_unit(GT)

----------------Kamikaze

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.KAMIKAZZ);

GT.visual.shape = "Kamikaze"
GT.visual.shape_dstr = "Toyota_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 250;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 250;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "POINT_DRIVER"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'Center Tower';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(60)},
                   
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT';


__LN = add_launcher(GT.WS[ws], GT_t.LN_t._BOMBKA);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_SIGHT'
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;

GT.Name = "Kamikaze"

GT.DisplayName = _("DIM' KAMIKAZE")

GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",                               
        };
GT.category = "Armor";

GT.Countries = {"Abkhazia", "Saudi Arabia", "Bahrain", "Chile", "Cuba", "Georgia", "Honduras", "Insurgents", "Iraq", "Iran", "Jordan", "Kazakhstan", "Kuwait", "Libya", "Morocco", "Oman", "South Ossetia", "Pakistan", "Qatar", "Serbia", "Slovakia", "Sudan", "Syria", "Yemen", "Yugoslavia", "United Arab Emirates", "Ethiopia"}; 

add_surface_unit(GT)

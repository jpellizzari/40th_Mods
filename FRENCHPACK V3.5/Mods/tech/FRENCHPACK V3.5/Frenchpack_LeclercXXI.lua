mount_vfs_texture_path(current_mod_path.."/Textures/AMX10RCR.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/Leclerc_XXI.zip")



GT_t.CH_t.LeclercXXI = {
	life = 30.0,
	mass = 57000,
	length = 7.57,
	width = 3.6,
	max_road_velocity = 20.83,
	fordingDepth = 1.8,
	max_slope = 0.7,
	engine_power = 1500,
	gear_count = 7,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 1.15,
	max_acceleration = 4,
	min_turn_radius = 0,
	X_gear_1 = 1.673,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.673,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.337,
	r_track = 0.08,	
	armour_thickness = 0.1,
	};

	
	
	-- APS LECLERC
local OFLE_120F2 = {
	category = CAT_SHELLS,
	user_name = _("OFL 120 F2"),
	model_name    = "kinetic_type1",
	v0    = 1790.0,
  Dv0   = 0.0001,
  Da0     = 0.0001,
	Da1     = 0.0,
	mass      = 4.5,
	explosive     = 0,
	life_time     = 100,
	caliber     	 = 120.0,
	AP_cap_caliber = 27, --масса и диаметр "стрелы"
	subcalibre     = true,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
  cx        = {1.0,1.40,0.80,0.172,1.60},
  k1        = 1.8e-10,
  tracer_off    = 100,
  scale_tracer  = 0,
  rotation_freq = 0,
	
	name = "OFLE_120F2",

	cartridge = 0,
	};
declare_weapon(OFLE_120F2);


-- OE 10RCR
local EXPL_120_F1 = {
	category = CAT_SHELLS,
	user_name = _("120 EXPL F1"),
	model_name    = "pula",
	v0    = 1000.0,
	Dv0   = 0.0027,
	Da0     = 0.00036,
	Da1     = 0.0009,
	mass      = 16.8,
	explosive     = 3,
	life_time     = 100,
	caliber     	 = 120.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.3,0.60,0.75,0.16,2.20},
	k1        = 9.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	
	name = "EXPL_120_F1",

	cartridge = 0,
	};
declare_weapon(EXPL_120_F1);


GT_t.LN_t._120XXIAP = {} 
GT_t.LN_t._120XXIAP.type = 2
GT_t.LN_t._120XXIAP.distanceMin = 10
GT_t.LN_t._120XXIAP.distanceMax = 5000
GT_t.LN_t._120XXIAP.max_trg_alt = 3000
GT_t.LN_t._120XXIAP.reactionTime = 1
GT_t.LN_t._120XXIAP.launch_delay = 1
GT_t.LN_t._120XXIAP.maxShootingSpeed = 20
GT_t.LN_t._120XXIAP.beamWidth = math.rad(1);
GT_t.LN_t._120XXIAP.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._120XXIAP.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._120XXIAP.sensor = {}
set_recursive_metatable(GT_t.LN_t._120XXIAP.sensor, GT_t.WSN_t[0])
GT_t.LN_t._120XXIAP.PL = {}
GT_t.LN_t._120XXIAP.PL[1] = {}
GT_t.LN_t._120XXIAP.PL[1].shot_delay = 6
GT_t.LN_t._120XXIAP.PL[1].ammo_capacity = 16
GT_t.LN_t._120XXIAP.PL[1].reload_time = 22*10;
GT_t.LN_t._120XXIAP.PL[1].type_ammunition = OFLE_120F2.wsTypeOfWeapon
GT_t.LN_t._120XXIAP.PL[1].shell_name = {"OFLE_120F2"};
GT_t.LN_t._120XXIAP.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._120XXIAP.PL[2] = {}
GT_t.LN_t._120XXIAP.PL[2].shot_delay = 6
GT_t.LN_t._120XXIAP.PL[2].ammo_capacity = 16
GT_t.LN_t._120XXIAP.PL[2].reload_time = 5;
GT_t.LN_t._120XXIAP.PL[2].type_ammunition = OFLE_120F2.wsTypeOfWeapon
GT_t.LN_t._120XXIAP.PL[2].shell_name = {"OFLE_120F2"};
GT_t.LN_t._120XXIAP.PL[2].switch_on_delay = 480;
GT_t.LN_t._120XXIAP.BR = { {pos = {1.2, 0, 0} } }

GT_t.LN_t._120XXIHE = {} 
GT_t.LN_t._120XXIHE.type = 2
GT_t.LN_t._120XXIHE.distanceMin = 10
GT_t.LN_t._120XXIHE.distanceMax = 5000
GT_t.LN_t._120XXIHE.max_trg_alt = 3000
GT_t.LN_t._120XXIHE.reactionTime = 1
GT_t.LN_t._120XXIHE.launch_delay = 1
GT_t.LN_t._120XXIHE.maxShootingSpeed = 20
GT_t.LN_t._120XXIHE.beamWidth = math.rad(1);
GT_t.LN_t._120XXIHE.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._120XXIHE.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._120XXIHE.sensor = {}
set_recursive_metatable(GT_t.LN_t._120XXIHE.sensor, GT_t.WSN_t[0])
GT_t.LN_t._120XXIHE.PL = {}
GT_t.LN_t._120XXIHE.PL[1] = {}
GT_t.LN_t._120XXIHE.PL[1].shot_delay = 6
GT_t.LN_t._120XXIHE.PL[1].ammo_capacity = 6
GT_t.LN_t._120XXIHE.PL[1].reload_time = 6*10;
GT_t.LN_t._120XXIHE.PL[1].type_ammunition = EXPL_120_F1.wsTypeOfWeapon
GT_t.LN_t._120XXIHE.PL[1].shell_name = {"EXPL_120_F1"};
GT_t.LN_t._120XXIHE.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._120XXIHE.PL[2] = {}
GT_t.LN_t._120XXIHE.PL[2].shot_delay = 6
GT_t.LN_t._120XXIHE.PL[2].ammo_capacity = 6
GT_t.LN_t._120XXIHE.PL[2].reload_time = 5;
GT_t.LN_t._120XXIHE.PL[2].type_ammunition = EXPL_120_F1.wsTypeOfWeapon
GT_t.LN_t._120XXIHE.PL[2].shell_name = {"EXPL_120_F1"};
GT_t.LN_t._120XXIHE.PL[2].switch_on_delay = 180;
GT_t.LN_t._120XXIHE.BR = { {pos = {1.2, 0, 0} } }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

-- Leclerc_XXI

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.LeclercXXI);

GT.visual.shape = "Leclerc_XXI" --Model
GT.visual.shape_dstr = "Leclerc_p_1" --Destroyed model

--Complex scheme armor parts (collision 3D model is divided in all these parts)
GT.DM = {
   
   
	{ area_name = "AVANT_650", 	armour = {width=0.750}},
	{ area_name = "AVANT_350", 	armour = {width=0.450}},
	{ area_name = "AVANT_150", 	armour = {width=0.250}},
	{ area_name = "25TOURELLE_G_LeclercXX1003",  	armour = {width=0.1}},
	{ area_name = "COLL_40",  	armour = {width=0.040}},
	{ area_name = "JUPPES_150",  	armour = {width=0.150}},
	{ area_name = "FLANCS_250",  	armour = {width=0.250}},
	{ area_name = "TOIT_40",  	armour = {width=0.04}},
	{ area_name = "MASQUE_700",  	armour = {width=0.450}},
	{ area_name = "JOUE_G_750",  	armour = {width=0.750}},
	{area_name = "JOUE_D_750",  	armour = {width=0.850}},
	{ area_name = "COFFRE_IINF",  	armour = {width=10}},
	{ area_name = "ARRIERE_TOURELLE_60",  	armour = {width=0.60}},
	{ area_name = "Cylinder019",  	armour = {width=10}},
	
}



--chassis
GT.swing_on_run = false


GT.sensor = {}; 
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 1500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0; --JTAC binocular position

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = -0.5 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "POINT_DRIVER" --Name of the dummy to be used as driver cockpit
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR" --Set up of thermal imagery

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;


--Turret 1 with main canon, MG

local ws = GT_t.inc_ws(); 
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER1'; --Dummy wich is used as reference for the aiming, it must be put in the exact center of rotation axis of the turret
GT.WS[ws].angles = {
                    {math.rad(125), math.rad(-125), math.rad(-8), math.rad(15)}, --Turret limitations, from 125 to -125°, its negative elevation is -8°
                    {math.rad(-125), math.rad(125), math.rad(-2), math.rad(15)}, -- From -125 to 125, its negative elevation is -2° cause the canon would hit the engine
                    };
GT.WS[ws].drawArgument1 = 0; --azimut argument
GT.WS[ws].drawArgument2 = 1; -- elevation argument
GT.WS[ws].omegaY = math.rad(30); --azimut speed
GT.WS[ws].omegaZ = math.rad(40); --elevation speed
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true; --aiming stabilizer
GT.WS[ws].laser = true; --aiming laser
GT.WS[ws].pointer = 'POINT_SIGHT'; --name of the dummy which is to be the camera
GT.WS[ws].cockpit = { "HL-60/HL-60", {0.0, 0.0, 0.0 }, };


__LN = add_launcher(GT.WS[ws], GT_t.LN_t._120XXIAP); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].connector_name = 'POINT_GUN1' -- name of the dummy for canon muzzle
__LN.BR[1].recoilArgument = 23 --argument number for the recoil animation
__LN.sightMasterMode = 1 
__LN.distanceMaxForFCS = 4000; --Max range for stabilizer and "auto setting of the aim"
__LN.sightIndicationMode = 1;
__LN = nil;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._120XXIHE);-- Second type of shell using the 105RCRH canon, shoots OE105 explosive shells
__LN.fireAnimationArgument = 125
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.beamWidth = math.rad(1);
__LN.BR[1].recoilArgument = 23
__LN.BR[1].connector_name = 'POINT_GUNHE'
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 3000;
__LN.sightIndicationMode = 2;
__LN = nil;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.LECLERC50);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.fireAnimationArgument = 160
__LN.BR[1].connector_name = 'POINT_GUN2'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 4000
__LN = nil; --End of all of this

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._SMOKD1); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].recoilArgument = 160 --argument number for the recoil animation
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 
__LN.secondary = true

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._DRECS); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].recoilArgument = 160 --argument number for the recoil animation
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 


ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_TOWER2';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-9), math.rad(40)},
                    };
GT.WS[ws].drawArgument1 = 25; --Arguments of the second turret, a second turret must use arguments from 25, don't give it arg 2 arg 3, it won't work, it must be 25-26, then 27-28 etc etc
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].laser = true;
GT.WS[ws].stabilizer = true;
GT.WS[ws].pidY = {p=40,i=1,d=7,inn=5,}; --{p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=40,i=1,d=7,inn=5,};
GT.WS[ws].pointer = 'POINT_CDB'



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1); --Machin gun 
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_AANF1',
			  recoilArgument = 24,
			  recoilTime = 60/1800}
__LN.BR[1].recoilArgument = 24
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0 }};
__LN.sightMasterMode = 1
__LN = nil; --End of all of this


GT.Name = "Leclerc_XXI"
GT.DisplayName = _("Leclerc Série XXI")
GT.Rate = 50

GT.Sensors = { OPTIC = {"HL-70 day" ,"HL-70 night",
                        },
            };


GT.ThreatRange = GT.WS[1].LN[1].distanceMax; -- ME threat ring
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Modern Tanks",
				};

GT.category = "Armor";

GT.Countries = { "France", "Russia"}; --Specifies that I only want it to be in France country

add_surface_unit(GT)

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

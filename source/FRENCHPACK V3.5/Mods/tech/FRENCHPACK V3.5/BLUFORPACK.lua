
mount_vfs_texture_path(current_mod_path.."/Textures/SHERIDAN.zip")


local M409 = {
	category = CAT_SHELLS,
	user_name = _("M409"),
	model_name    = "pula",
	v0    = 682.0,
	Dv0   = 0.0027,
	Da0     = 0.00036,
	Da1     = 0.0009,
	mass      = 19.0,
	explosive     = 10.95,
	life_time     = 100,
	caliber     	 = 152.0,
	s         = 0.0,
	j         = 0.0,
	l         = 0.0,
	charTime    = 0,
	cx        = {1.3,0.60,0.75,0.16,2.20},
	k1        = 9.0e-10,
	tracer_off    = 100,
	scale_tracer  = 0,
	
	name = "M409",

	cartridge = 0,
	};
declare_weapon(M409);

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

-- S762 MG

GT_t.LN_t.S762 = {name = "7_62_S", display_name = _("7_62_S")}
GT_t.LN_t.S762.type=9;
set_recursive_metatable(GT_t.LN_t.S762, Def_mg_LN);
GT_t.LN_t.S762.distanceMax = 1000
GT_t.LN_t.S762.max_trg_alt = 500
set_recursive_metatable(GT_t.LN_t.S762.sensor, GT_t.WSN_t[7])
GT_t.LN_t.S762.PL[1] = {};
GT_t.LN_t.S762.PL[1].ammo_capacity = 200; --2200 total
GT_t.LN_t.S762.PL[1].portionAmmoCapacity = 200
GT_t.LN_t.S762.PL[1].shell_name = {"7_62x51"};
GT_t.LN_t.S762.PL[1].shot_delay = 60/600; -- 520 rpm
GT_t.LN_t.S762.PL[1].switch_on_delay = 15;
GT_t.LN_t.S762.PL[1].reload_time = 15;
for i = 2, 11 do
	GT_t.LN_t.S762.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.S762.PL[i], GT_t.LN_t.S762.PL[1]);
end;
GT_t.LN_t.S762.BR = { {pos = {0, 0, 0} } }


GT_t.LN_t._SHE = {} 
GT_t.LN_t._SHE.type = 2
GT_t.LN_t._SHE.xc = 0.585
GT_t.LN_t._SHE.distanceMin = 10
GT_t.LN_t._SHE.distanceMax = 5000
GT_t.LN_t._SHE.max_trg_alt = 3000
GT_t.LN_t._SHE.reactionTime = 5
GT_t.LN_t._SHE.launch_delay = 10
--GT_t.LN_t._105RCR.radialDisperse = 2.7;
--GT_t.LN_t._105RCR.dispertionReductionFactor = 0.988;
GT_t.LN_t._SHE.maxShootingSpeed = 3
GT_t.LN_t._SHE.beamWidth = math.rad(1);
GT_t.LN_t._SHE.inclination_correction_upper_limit = math.rad(20);
GT_t.LN_t._SHE.inclination_correction_bias = math.rad(0.4);
GT_t.LN_t._SHE.sensor = {}
set_recursive_metatable(GT_t.LN_t._SHE.sensor, GT_t.WSN_t[7])
GT_t.LN_t._SHE.PL = {}
GT_t.LN_t._SHE.PL[1] = {}
GT_t.LN_t._SHE.PL[1].shot_delay = 15
GT_t.LN_t._SHE.PL[1].ammo_capacity = 30
--GT_t.LN_t._105RCR.PL[1].portionAmmoCapacity = 28;
GT_t.LN_t._SHE.PL[1].reload_time = 30*20;
GT_t.LN_t._SHE.PL[1].type_ammunition = M409.wsTypeOfWeapon
GT_t.LN_t._SHE.PL[1].shell_name = {"M409"};
GT_t.LN_t._SHE.PL[1].switch_on_delay = 0.5;
GT_t.LN_t._SHE.BR = { {pos = {0, 0, 0} } }


GT_t.CH_t.SHERI = {
	life = 6.0,
	mass = 15200,
	length = 6.0,
	width = 3.3,
	max_road_velocity = 16.66,
	max_slope = 0.6,
	engine_power = 305,
	gear_count = 6,
	canSwim = true,
	canWade = true,
	max_vert_obstacle = 1.0,
	max_acceleration = 2.5,
	min_turn_radius = 1,
	X_gear_1 = 1.673,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.673,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.TRACKS,
	r_max = 0.3,
	armour_thickness = 0.20,
};

-- SHERIDAN

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.SHERI);

GT.visual.shape = "SHERIDAN" --Model
GT.visual.shape_dstr = "M-2_P1" --Destroyed model


--chassis
GT.swing_on_run = true


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
GT.WS.maxTargetDetectionRange = 5000;


--Turret 1 with main canon, MG

local ws = GT_t.inc_ws(); 
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER'; --Dummy wich is used as reference for the aiming, it must be put in the exact center of rotation axis of the turret
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-8), math.rad(19)}, --Turret limitations, from 125 to -125°, its negative elevation is -8° -- From -125 to 125, its negative elevation is -2° cause the canon would hit the engine
                    };
GT.WS[ws].drawArgument1 = 0; --azimut argument
GT.WS[ws].drawArgument2 = 1; -- elevation argument
GT.WS[ws].omegaY = math.rad(23.8); --azimut speed
GT.WS[ws].omegaZ = math.rad(8); --elevation speed
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true; --aiming stabilizer
GT.WS[ws].laser = true; --aiming laser
GT.WS[ws].pointer = 'POINT_SIGHT'; --name of the dummy which is to be the camera


__LN = add_launcher(GT.WS[ws], GT_t.LN_t._SHE);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN1',
			  recoilArgument = 23,
			  recoilTime = 0.5}
__LN.customViewPoint = {"GPS/GPS", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;


__LN = add_launcher(GT.WS[ws], GT_t.LN_t.S762);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN2',
			  recoilArgument = 24,
			  recoilTime = 0.5}
__LN.customViewPoint = {"GPS/GPS", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;



GT.Name = "SHERIDAN"
GT.DisplayName = _("Char M551 Sheridan")
GT.Rate = 20

GT.Sensors = { OPTIC = {"CITV day", "CITV night"} };


GT.ThreatRange = GT.WS[1].LN[1].distanceMax; -- ME threat ring
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};

GT.category = "Armor";

GT.Countries = { "USA" }; --Specifies that I only want it to be in France country

add_surface_unit(GT)


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

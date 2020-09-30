mount_vfs_texture_path(current_mod_path.."/Textures/VBAE.zip")


------------------------chassis
GT_t.CH_t.VBAE = {
	life = 4.0,
	mass = 750,
	length = 4.9,
	width = 2.60,
	max_road_velocity = 50,		
	max_slope = 0.6,
	engine_power = 330,
	gear_count = 4,
	canSwim = false,
	canWade = true,
	max_vert_obstacle = 1.2,
	max_acceleration = 4.08497,
	min_turn_radius = 2,
	X_gear_1 = 1.75,
	Y_gear_1 = 0,
	Z_gear_1 = 0.6,
	X_gear_2 = -1.45,
	Y_gear_2 = 0,
	Z_gear_2 = 0.6,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.55,
	armour_thickness = 0.02,
};



----------------OBUS 25MM

local T_25_HE = {
	category = CAT_SHELLS,
	user_name = _("T_25_HE"),
	model_name    = "tracer_bullet_yellow",
  v0    = 1100.0,
  Dv0   = 0.00508,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.185,
  explosive     = 0.185, -- 0.032 kg in real
  life_time     = 7,
  caliber     = 25.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.78,0.60,0.15,1.80},
  k1        = 9.4e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "T_25_HE",
  
  cartridge = 0,
	};
declare_weapon(T_25_HE);

local T_25_AP = {
	category = CAT_SHELLS,
	user_name = _("T_25_AP"),
	model_name    = "tracer_bullet_white",
  v0    = 1310.0,
  Dv0   = 0.00508,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.155,
  explosive     = 0.0000,
  life_time     = 6.2,
  caliber     = 25.0,
  subcalibre     = true,
  AP_cap_caliber = 13.0,  --указана масса и диаметр "стрелы"
  piercing_mass = 0.130,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.75,0.70,0.20,1.70},
  k1        = 1.1e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "T_25_AP",
  
  cartridge = 0,
	};
declare_weapon(T_25_AP);


----------------canon 25

Def_mg_LN = {
    type = 3, --AA
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[4]);


GT_t.LN_t.T25 = {name = "T25", display_name = _("T25")}
GT_t.LN_t.T25.type=3;
set_recursive_metatable(GT_t.LN_t.T25, Def_mg_LN);
GT_t.LN_t.T25.distanceMax = 3500
GT_t.LN_t.T25.max_trg_alt = 3000
set_recursive_metatable(GT_t.LN_t.T25.sensor, GT_t.WSN_t[4])
GT_t.LN_t.T25.PL[1] = {};
GT_t.LN_t.T25.PL[1].ammo_capacity = 250; --2200 total
GT_t.LN_t.T25.PL[1].portionAmmoCapacity = 250
GT_t.LN_t.T25.PL[1].shell_name = {"T_25_HE"};
GT_t.LN_t.T25.PL[1].shot_delay = 60/200; -- 520 rpm
GT_t.LN_t.T25.PL[1].switch_on_delay = 15;
GT_t.LN_t.T25.PL[1].reload_time = 15;

GT_t.LN_t.T25.BR = { {pos = {1.2, 0, 0} } }

Def_mg_LN = {
    type = 3, --AA
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(Def_mg_LN.sensor, GT_t.WSN_t[4]);


GT_t.LN_t.T25AP = {name = "T25AP", display_name = _("T25AP")}
GT_t.LN_t.T25AP.type=3;
set_recursive_metatable(GT_t.LN_t.T25AP, Def_mg_LN);
GT_t.LN_t.T25AP.distanceMax = 3500
GT_t.LN_t.T25AP.max_trg_alt = 3000
set_recursive_metatable(GT_t.LN_t.T25AP.sensor, GT_t.WSN_t[4])
GT_t.LN_t.T25AP.PL[1] = {};
GT_t.LN_t.T25AP.PL[1].ammo_capacity = 150; --2200 total
GT_t.LN_t.T25AP.PL[1].portionAmmoCapacity = 150
GT_t.LN_t.T25AP.PL[1].shell_name = {"T_25_AP"};
GT_t.LN_t.T25AP.PL[1].shot_delay = 60/200; -- 520 rpm
GT_t.LN_t.T25AP.PL[1].switch_on_delay = 15;
GT_t.LN_t.T25AP.PL[1].reload_time = 15;

GT_t.LN_t.T25AP.BR = { {pos = {1.2, 0, 0} } }


------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------


-- VBAE

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VBAE);

GT.visual.shape = "VBAE"
GT.visual.shape_dstr = "VBAE_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = -0.5 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"



GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(45)},
                   
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
--GT.WS[ws].cockpit = { "Gepard/Gepard", {0.0, 0.0, 0.0}};


__LN = add_launcher(GT.WS[ws], GT_t.LN_t.T25);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN1',
			  recoilArgument = 23,
			  recoilTime = 60/500}
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.T25AP);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN1',
			  recoilArgument = 23,
			  recoilTime = 60/500}
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_GUN2'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil;


ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_CDB';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-20), math.rad(90)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].stabilizer = true;
GT.WS[ws].pidY = {p=40,i=1,d=7,inn=5,}; --{p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=40,i=1,d=7,inn=5,};
GT.WS[ws].pointer = 'POINT_CDB'



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.beamWidth = math.rad(1);
--__LN.ammunition_reserve = 5300; -- 5500 total
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0} };
__LN = nil;


GT.Name = "VBAE"

GT.DisplayName = _("VBAE CRAB")

GT.Rate = 15

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",               
                "Datalink"
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)


-- VBAE MMP

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VBAE);

GT.visual.shape = "VBAE_MMP"
GT.visual.shape_dstr = "VBAE_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.0;

--Burning after hit
GT.visual.fire_size = 0.9 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = -0.5 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"



GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(45)},
                   
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
--GT.WS[ws].cockpit = { "Gepard/Gepard", {0.0, 0.0, 0.0}};


__LN = add_launcher(GT.WS[ws], GT_t.LN_t.T25);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN1',
			  recoilArgument = 23,
			  recoilTime = 60/500}
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.T25AP);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_GUN1',
			  recoilArgument = 23,
			  recoilTime = 60/500}
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._MMP);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0} };
__LN.BR = {
	{connector_name = "POINT_MMP1", drawArgument = 4},
	{connector_name = "POINT_MMP2", drawArgument = 5},
};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'POINT_GUN2'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil;



ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_CDB';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-20), math.rad(90)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].stabilizer = true;
GT.WS[ws].pidY = {p=40,i=1,d=7,inn=5,}; --{p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=40,i=1,d=7,inn=5,};
GT.WS[ws].pointer = 'POINT_CDB'



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[6]);
__LN.beamWidth = math.rad(1);
--__LN.ammunition_reserve = 5300; -- 5500 total
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0} };
__LN = nil;


GT.Name = "VBAE_MMP"

GT.DisplayName = _("VBAE CRAB MMP")

GT.Rate = 15

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",               
                "Datalink"
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)

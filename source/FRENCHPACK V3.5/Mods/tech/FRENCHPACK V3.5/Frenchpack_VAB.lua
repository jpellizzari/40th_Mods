
mount_vfs_texture_path(current_mod_path.."/Textures/VAB.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/M120.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/VABH.zip")

------------------------------------------------------------------------------------
-- Chassis declaration --
------------------------------------------------------------------------------------

-- VAB Chassis
GT_t.CH_t.VABH = {
	life = 4.0,
	mass = 13000,
	length = 6.05,
	width = 2.49,
	max_road_velocity = 30.55,
	max_slope = 0.6,
	engine_power = 220,
	gear_count = 6,
	canSwim = true,
	canWade = true,
	max_vert_obstacle = 0.56,
	max_acceleration = 1.925926,
	min_turn_radius = 18,
	X_gear_1 = 1.925,
	Y_gear_1 = 0,
	Z_gear_1 = 0.75,
	X_gear_2 = -1.361,
	Y_gear_2 = 0,
	Z_gear_2 = 0.75,
	gear_type = GT_t.GEAR_TYPES.WHEELS,
	r_max = 0.46,
	armour_thickness = 0.010,
};



-- VAB-H

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VABH);

GT.visual.shape = "VABH";
GT.visual.shape_dstr = "tpz_p_1";

GT.turbine = true;
GT.animation_arguments.stoplights = 30;
GT.animation_arguments.headlights = 31;
GT.animation_arguments.markerlights = 32;
--chassis
GT.swing_on_run = true;

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.Name = "VABH";
GT.Aliases = {"VABH"};
GT.DisplayName = _("VAB MEDICAL");
GT.Rate = 3;

GT.EPLRS = true
GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR";

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "APC",
                "Datalink",
        };
GT.category = "Unarmed";


GT.warehouse = true
add_surface_unit(GT)



-- VAB-RADIO

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VAB);

GT.visual.shape = "VAB_RADIO";
GT.visual.shape_dstr = "tpz_p_1";

GT.turbine = true;
GT.animation_arguments.stoplights = 30;
GT.animation_arguments.headlights = 31;
GT.animation_arguments.markerlights = 32;
--chassis
GT.swing_on_run = true;

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.Name = "VAB_RADIO";
GT.Aliases = {"VAB_RADIO"};
GT.DisplayName = _("VAB");
GT.Rate = 3;

GT.EPLRS = true
GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR";

GT.DetectionRange  = 0;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "APC",
                "Datalink",
        };
GT.category = "Unarmed";

GT.Countries = { "France"}; 
GT.warehouse = true
add_surface_unit(GT)

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

-- VAB-50

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VAB);

GT.visual.shape = "VAB_50"
GT.visual.shape_dstr = "tpz_p_1"


--chassis
GT.swing_on_run = true


GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.0

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

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
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].cockpit = { "IronSight/IronSight", {-2.0, 0.3, 0.0}};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.fireAnimationArgument = 23
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.sightMasterMode = 1

GT.Name = "VAB_50"
GT.DisplayName = _("VAB .50")
GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "APC",
                "Datalink",
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- VIB VBR

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VIB);

GT.visual.shape = "VIB_VBR"
GT.visual.shape_dstr = "tpz_p_1"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.854;

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-4.5), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT';




__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AA20); 
__LN.fireAnimationArgument = 125
__LN.BR[1].connector_name = 'POINT_GUN001'
__LN.sightMasterMode = 1
__LN.customViewPoint = { "Gepard/Gepard", {0.0, 0.0, 0.0} };
__LN.beamWidth = math.rad(1);
for i = 2, 8 do
	GT_t.LN_t.AA20.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.AA20.PL[i], GT_t.LN_t.AA20.PL[1]);
end;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AA20AP); 
__LN.fireAnimationArgument = 125
__LN.BR[1].connector_name = 'POINT_GUN001'
__LN.sightMasterMode = 1
__LN.customViewPoint = { "Gepard/Gepard", {0.0, 0.0, 0.0} };
__LN.beamWidth = math.rad(1);
for i = 2, 8 do
	GT_t.LN_t.AA20AP.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.AA20AP.PL[i], GT_t.LN_t.AA20AP.PL[1]);
end;

GT.Name = "VIB_VBR"
GT.DisplayName = _("VAB T20/13")
GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "APC",
                "Datalink",
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- VAB_HOT

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VAB);

GT.visual.shape = "VAB_HOT"
GT.visual.shape_dstr = "tpz_p_1"


--chassis
GT.swing_on_run = false


GT.sensor = {};
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 3000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.854;

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(10)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT';



__LN = add_launcher(GT.WS[ws], GT_t.LN_t._HOT2);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);

__LN.BR = {
	{connector_name = "HOT_1", drawArgument = 4},
	{connector_name = "HOT_2", drawArgument = 5},
	{connector_name = "HOT_3", drawArgument = 6},
	{connector_name = "HOT_4", drawArgument = 7},
};


__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1

GT.Name = "VAB_HOT"
GT.DisplayName = _("VAB MEPHISTO")
GT.Rate = 5

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000204";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_MissGun,wsType_Hummer,
                "APC",
				"ATGM",
                "Datalink",
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)


--------------------------------------------------------------
--------------------------------------------------------------
-- VAB-MORITER

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VIB);

GT.visual.shape = "VAB_MORTIER";
GT.visual.shape_dstr = "tpz_p_1";

GT.turbine = false;
GT.animation_arguments.stoplights = 30;
GT.animation_arguments.headlights = 31;
GT.animation_arguments.markerlights = 32;
--chassis
GT.swing_on_run = true;

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 1 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.animation_arguments.crew_presence = 50;

GT.Name = "VAB_MORTIER";
GT.Aliases = {"VAB_MORTIER"};
GT.DisplayName = _("VAB MORTIER");
GT.Rate = 3;

GT.EPLRS = true
GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR";


GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180),math.rad(20), math.rad(90),},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(20);
GT.WS[ws].omegaZ = math.rad(3);
GT.WS[ws].pidY = {p=5, i=0.0, d=2};
GT.WS[ws].pidZ = {p=5, i=0.0, d=2};
GT.WS[ws].reference_angle_Z = math.rad(60);


--GT.WS[1].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.howitzer_2A18);
__LN.connectorFire = false;
__LN.PL[1].ammo_capacity= 80;
--__LN.PL[1].portionAmmoCapacity= 20;
__LN.PL[1].reload_time = 30*40;
__LN.PL[1].shot_delay = 10
__LN.BR[1].connector_name = 'MORTAR_POINT';
__LN = nil;

GT.DetectionRange  = 0;
GT.ThreatRangeMin = GT.WS[1].LN[1].distanceMin;
GT.ThreatRange = 15000;
GT.mapclasskey = "P0091000006";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericSAU,
                "Artillery",
                };
GT.category = "Artillery";

GT.Countries = { "France"}; 
add_surface_unit(GT)










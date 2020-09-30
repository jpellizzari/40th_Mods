
mount_vfs_texture_path(current_mod_path.."/Textures/AA20.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/TRM.zip")
------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------


-- TRM2000

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TRM2000);

GT.visual.shape = "TRM2000";
GT.visual.shape_dstr = "gaz-66_p_1";

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

GT.Name = "TRM2000";
GT.Aliases = {"TRM2000"};
GT.DisplayName = _("TRM-2000");
GT.Rate = 3;

GT.EPLRS = true
GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "Point_Driver"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR";

GT.DetectionRange  = 3500;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "Trucks",               
        };
GT.category = "Unarmed";

GT.Countries = { "France"}; 
GT.warehouse = true
add_surface_unit(GT)

-----------------------------------------------------------------
-----------------------------------------------------------------

-- TRM2000 Citerne

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_vehicle);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TRM2000);

GT.visual.shape = "TRM2000_Citerne";
GT.visual.shape_dstr = "gaz-66_p_1";

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
GT.visual.max_time_agony = 1;

GT.Name = "TRM2000_Citerne";
GT.Aliases = {"TRM2000_Citerne"};
GT.DisplayName = _("TRM-2000 Fuel");
GT.Rate = 3;

GT.EPLRS = true
GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "Point_Driver"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR";

GT.DetectionRange  = 3500;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000005";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,
                "Trucks",               
        };
GT.category = "Unarmed";

GT.Countries = { "France"}; 
GT.warehouse = true
add_surface_unit(GT)


-------------------------------------------------------------
-------------------------------------------------------------



-- TRM2000 AA20

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TRM2000);

GT.visual.shape = "TRM2000_AA20"
GT.visual.shape_dstr = "gaz-66_p_1"


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
GT.driverViewConnectorName = "Point_Driver"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].board = 2
GT.WS[ws].angles = {
					{math.rad(140), math.rad(-140), math.rad(-4.5), math.rad(80)},
                    {math.rad(-140), math.rad(140), math.rad(20), math.rad(80)},
					};
					
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);	
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;				
GT.WS[ws].reference_angle_Z = math.rad(30);
GT.WS[ws].pointer = 'POINT_SIGHT'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AA20); 
__LN.fireAnimationArgument = 125
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.sightMasterMode = 1
__LN.customViewPoint = { "Gepard/Gepard", {0.0, 0.0, 0.0} };
__LN.beamWidth = math.rad(1);
for i = 2, 4 do
	GT_t.LN_t.AA20.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.AA20.PL[i], GT_t.LN_t.AA20.PL[1]);
end;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AA20AP); 
__LN.fireAnimationArgument = 125
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.sightMasterMode = 1
__LN.customViewPoint = { "Gepard/Gepard", {0.0, 0.0, 0.0} };
__LN.beamWidth = math.rad(1);
for i = 2, 4 do
	GT_t.LN_t.AA20AP.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.AA20AP.PL[i], GT_t.LN_t.AA20AP.PL[1]);
end;



GT.Name = "TRM2000_AA20";
GT.Aliases = {"TRM2000_AA20"};
GT.DisplayName = _("TRM-2000 53T2");
GT.Rate = 6

GT.EPLRS = true;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000205";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_ZU_23_URAL,
                "AA_flak",
                "Mobile AAA",                
        };
GT.category = "Air Defence";

GT.Countries = { "France"}; 

add_surface_unit(GT)


-------------------------------------------------------------
-------------------------------------------------------------



-- TRM2000 MISTRAL

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.TRM2000);

GT.visual.shape = "TRMMISTRAL"
GT.visual.shape_dstr = "gaz-66_p_1"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 8000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 7000;
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
GT.driverViewConnectorName = "Point_Driver"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR" --Set up of thermal imagery

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 8000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].board = 2
GT.WS[ws].angles = {
					{math.rad(140), math.rad(-140), math.rad(-10), math.rad(80)},
                    {math.rad(-140), math.rad(140), math.rad(0), math.rad(80)},
					};
					
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);	
GT.WS[ws].reference_angle_Z = math.rad(-10);
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;				
GT.WS[ws].pointer = 'POINT_SIGHT'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._MISTRALSOL);
__LN.customViewPoint = { 'Challenger2/GPS', { 0, 0, 0 }, };
__LN = nil;

GT.Name = "TRMMISTRAL";
GT.Aliases = {"TRMMISTRAL"};
GT.DisplayName = _("TRM-2000 PAMELA");
GT.Rate = 20

GT.EPLRS = true;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000085";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,M48_Chaparral,
				"AA_missile",
				"SR SAM",
				"IR Guided SAM",
				"Datalink"
				};
GT.category = "Air Defence";

GT.Countries = { "France"}; 

add_surface_unit(GT)



mount_vfs_texture_path(current_mod_path.."/Textures/ERC.zip")

-- ERC-90

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.ERC);

GT.visual.shape = "ERC"
GT.visual.shape_dstr = "ERC_destr"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 6000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 1500;
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

-- weapon systems


GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-8), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'GUNNER_POINT';
--GT.WS[ws].cockpit = { "Gepard/Gepard", {0.0, 0.0, 0.0}};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._90F4);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'GUN_POINT'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._90F4H);
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'GUN_POINT'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1);
__LN.fireAnimationArgument = 23
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'AANF1_POINT'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil;


GT.Name = "ERC"
GT.DisplayName = _("ERC-90")
GT.Rate = 15

GT.EPLRS = true;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000001";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Hummer,              
				"APC",               
                "Datalink"
        };
GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)

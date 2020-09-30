mount_vfs_texture_path(current_mod_path.."/Textures/M120.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/AA20.zip")


-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- Mortier 120mm


GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_stationary);

set_recursive_metatable(GT.chassis, GT_t.CH_t.STAT);
GT.chassis.life = 0.1;

GT.visual.shape = "M120"
GT.visual.shape_dstr = "M120_detr"

--chassis

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.3

GT.driverViewPoint = {0.0, 0.0, 0.0};
GT.driverViewConnectorName = "DRIVER_POINT001"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"


--Burning after hit
GT.visual.fire_time = 5 --burning time (seconds)
GT.visual.fire_size = 0.2 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.animation_arguments.crew_presence = 50;

-- weapon systems

--GT.WS[1]
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
__LN.PL[1].ammo_capacity= 40;
--__LN.PL[1].portionAmmoCapacity= 20;
__LN.PL[1].reload_time = 30*40;
__LN.PL[1].shot_delay = 10
__LN.BR[1].connector_name = 'POINT_GUN';
__LN = nil;

GT.Name = "M120";
GT.DisplayName = _("MO 120 RT");
GT.Rate = 5;

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

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- AA20


GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);
GT.chassis.life = 0.5

GT.visual.shape = "AA20";
GT.visual.shape_dstr = "AA20_Destr";


--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.0;

--Burning after hit
GT.visual.fire_size = 0.4; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 150; --burning time (seconds)



-- weapon systems


GT.WS = {};
GT.WS.maxTargetDetectionRange = 7500;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(80)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].stabilizer = true;
GT.WS[ws].pidY = {p=40,i=1,d=7,inn=5,}; --{p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=40,i=1,d=7,inn=5,};
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


GT.Name = "AA20";
GT.DisplayName = _("53T2");
GT.Rate = 4;

GT.Crew = 1;

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000015";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Gun,ZU_23_insurgent_okop,
                "AA_flak",
                "Static AAA",
                };
GT.category = "Air Defence";

GT.Countries = { "France"}; 

add_surface_unit(GT)

-------------------------------------------------------------
-------------------------------------------------------------


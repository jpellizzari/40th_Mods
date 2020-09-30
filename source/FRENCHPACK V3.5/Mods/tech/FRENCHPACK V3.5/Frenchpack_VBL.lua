mount_vfs_texture_path(current_mod_path.."/Textures/VBL.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/VBLnew.zip")


------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------

-- VBL Cal 50

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VBL);

GT.visual.shape = "VBL_50_N"
GT.visual.shape_dstr = "Otokar_Cobra_p1"


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
                    {math.rad(180), math.rad(-180), math.rad(-9), math.rad(60)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = 'POINT_SIGHT'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2); --Trouver le canon dans /scripts/database/Scripts/Automaticgun ou cannon
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);  --WSN= Précision IA. 2 pour tourelle simple, 4 pour optique. 
__LN.fireAnimationArgument = 24
__LN.BR[1] = {connector_name = 'POINT_GUN',
			  recoilArgument = 23,
			  recoilTime = 60/900}
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1

GT.Name = "VBL50"
GT.DisplayName = _("VBL .50")
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

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

-- VBL-ANF1

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VBL);

GT.visual.shape = "VBL_ANF1_N"
GT.visual.shape_dstr = "Otokar_Cobra_p1"


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
                    {math.rad(134), math.rad(-134), math.rad(-11), math.rad(36)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = false;
GT.WS[ws].laser = false;
GT.WS[ws].pointer = 'POINT_SIGHT'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);

__LN.fireAnimationArgument = 24
__LN.BR[1] = {connector_name = 'POINT_GUN',
			  recoilArgument = 23,
			  recoilTime = 60/1800}
__LN.customViewPoint = { "IronSight/IronSight", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1


GT.Name = "VBLANF1"
GT.DisplayName = _("VBL AANF1")
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

----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

-- VBL-RADIO

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.VBL);

GT.visual.shape = "VBL_RADIO_N";
GT.visual.shape_dstr = "Otokar_Cobra_p1";

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

GT.Name = "VBL-Radio";
GT.Aliases = {"VBL-Radio"};
GT.DisplayName = _("VBL");
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

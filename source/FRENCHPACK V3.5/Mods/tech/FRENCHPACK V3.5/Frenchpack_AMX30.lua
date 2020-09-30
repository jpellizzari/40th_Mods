mount_vfs_texture_path(current_mod_path.."/Textures/Tracma.zip")
mount_vfs_texture_path(current_mod_path.."/Textures/AMX30B2.zip")

------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------

-- AMX-30B2 MBT

GT = {};
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_tank); -- Vehicle type
set_recursive_metatable(GT.chassis, GT_t.CH_t.AMX30); -- Chassis
GT.chassis.canCrossRiver = true;

--Armour scheme
GT.armour_scheme = AMX30_armour_scheme; -- Armor thickness pattern

-- Turbine
GT.turbine = false;

-- Visual
GT.visual.shape = "AMX-30B2";
GT.visual.shape_dstr = "AMX30B2_DESTROYED"; -- 3D model filename for destroyed unit

GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {3.0, 0.3, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.3, 0.7, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}; -- Connector for driver view
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"; -- Cockpit

-- Crew
GT.crew_locale = "ENG"; --Try FRA or RUS and see what happens ?
GT.crew_members = {"commander", "gunner"};

-- Chassis
GT.MaxSpeed = GT.chassis.max_road_velocity * 3.6;
GT.swing_on_run = false;

-- Sensor
GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.27;

-- Weapons system

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000; -- Detection range
GT.WS.smoke = {"SMOKE_01", "SMOKE_02", "SMOKE_03", "SMOKE_04", "SMOKE_05", "SMOKE_06", "SMOKE_07", "SMOKE_08", "SMOKE_09", "SMOKE_10", "SMOKE_11", "SMOKE_12", "SMOKE_13", "SMOKE_14", "SMOKE_15", "SMOKE_16",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-8), math.rad(40)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].pidZ = {p=100, i=0.0, d=14.0, inn = 10};
GT.WS[ws].omegaY = math.rad(40);
GT.WS[ws].omegaZ = math.rad(40);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
-- INSERT VIEW CONNECTOR
GT.WS[ws].pointer = "POINT_SIGHT_04";
--GT.WS[ws].cockpit={"AMX-30/AMX-30B2", {0, 0, 0}, }; -- cockpit has to be added in CA folder

-- CN-105 F1 - OFL (AP)
GT.WS[ws].LN = {{}}
local __LN = GT.WS[ws].LN[1]
__LN.beamWidth = math.rad(1);
__LN.type = 2
--__LN.xc = 1.059
__LN.distanceMin = 10;
__LN.distanceMax = 3500;
__LN.max_trg_alt = 2500;
__LN.reactionTime = 2
__LN.maxShootingSpeed = 1
__LN.sensor = {}
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7])
__LN.PL = {}
__LN.PL[1] = {} -- OFL (AP)
__LN.PL[1].shell_name = {"OFL 105"};
__LN.PL[1].ammo_capacity = 28;
__LN.PL[1].automaticLoader = false;
__LN.PL[1].shot_delay = 6.5;
__LN.PL[1].reload_time = 15 * 28;
__LN.customViewPoint = { "genericTankblue", {0.0, 0.0, 0.0} };
__LN.PL[1].virtualStwID = 1;

__LN.BR = {}
__LN.BR = {
	{connector_name = 'POINT_GUN',recoilArgument = 23,recoilTime = 0.5},
	};
__LN.sightMasterMode = 1;


-- CN-105 F1 OCC (HE)
__LN = add_launcher(GT.WS[ws], __LN); -- make a new launcher copying the previous one
--__LN.type = 6; -- HE
__LN.distanceMin = 20;
__LN.distanceMax = 3000;
__LN.PL[1].shell_name = {"OCC 105"};
__LN.PL[1].ammo_capacity = 19;
__LN.PL[1].reload_time = 15 * 19;
__LN.PL[1].virtualStwID = 1;
__LN.customViewPoint = { "genericTankblueHE", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 2;
__LN = nil;

-- GIAT M693 20mm autocannon
__LN = add_launcher(GT.WS[ws], Def_mg_LN);
__LN.beamWidth = math.rad(1);
__LN.type = 3;
__LN.distanceMin = 10
__LN.distanceMax = 1500
__LN.max_trg_alt = 1000
__LN.reactionTime = 1.8;
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[7])
__LN.PL[1] = {} -- HE
__LN.PL[1].switch_on_delay = 2;
__LN.PL[1].ammo_capacity = 240; --480 total;
__LN.PL[1].portionAmmoCapacity = 240;
__LN.PL[1].reload_time = 1000;
__LN.PL[1].shell_name = {"Rh202_20_HE"};
__LN.PL[1].shot_delay = 60/800; -- 800 rpm
__LN.PL[1].feedSlot = 1;
__LN.PL[2] = {} -- AP
set_recursive_metatable(__LN.PL[2], __LN.PL[1]);
__LN.PL[2].shell_name = {"Rh202_20_AP"};
__LN.customViewPoint = { "Gepard/Gepard", {0.0, 0.0, 0.0}};
__LN.PL[2].feedSlot = 2;
__LN.PL[1].virtualStwID = 1;
__LN.PL[2].virtualStwID = 2;
__LN.BR = {
	{connector_name='POINT_MGUN_01'}
	};
__LN.sightMasterMode = 3;


-- Turret with 7.62 AANF1
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-9), math.rad(60)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].omegaY = math.rad(90);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].stabilizer = false;
GT.WS[ws].pidY = {p=40,i=1,d=7,inn=5,}; --{p=100,i=0.1,d=12,inn=50,};
GT.WS[ws].pidZ = {p=40,i=1,d=7,inn=5,};
GT.WS[ws].pointer = 'POINT_SIGHT_03'
GT.WS[ws].cockpit = {'CWS/CWS', {0.0, 0.0, 0.0 },}

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1);
__LN.type = 10; -- AA machinegun
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.sightMasterMode = 1;
--__LN.fireAnimationArgument = 44; -- animation missing
__LN = nil;

-- Name, category and Mission Editor characteristics

GT.Name = "AMX-30B2";
GT.DisplayName = _("AMX-30B2");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"AN/VSG-2 day","AN/VSG-2 night"}, };

GT.DetectionRange = 0; -- ME detection ring
GT.airWeaponDist = 2500;

GT.ThreatRange = GT.WS[1].LN[1].distanceMax; -- ME threat ring
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};
GT.category = "Armor"; -- ME category

GT.Countries = {
	"France"
}

add_surface_unit(GT); -- Create unit

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

-- TRACMA

GT = {};

set_recursive_metatable(GT, GT_t.generic_wheel_vehicle); -- Vehicle type
set_recursive_metatable(GT.chassis, GT_t.CH_t.TRACMA); -- Chassis

-- Visual
GT.visual.shape = "Tracma"; -- 3D model filename for unit
GT.visual.shape_dstr = "Tracma_EXPLODED"; -- 3D model filename for destroyed unit

GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)

--GT.driverViewPoint = {2.1,2.3,-0.51};
GT.driverViewConnectorName = {"driver_point"}; -- Connector for driver view

-- Chassis
GT.swing_on_run = false;
GT.MaxSpeed = GT.chassis.max_road_velocity * 3.6;

-- Name, category and Mission Editor characteristics

GT.Name = "Tracma"; -- unsure where this is used
GT.DisplayName = _("Tracma TD 1500");
GT.Rate = 5;

GT.DetectionRange = 0; -- ME detection ring
GT.ThreatRange = 0; -- ME threat ring
GT.mapclasskey = "P0091000005"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsType_GenericVehicle,
				"Trucks",
				};
GT.category = "Unarmed"; -- ME category

GT.Countries = {
	"France"
}

add_surface_unit(GT); -- Create unit
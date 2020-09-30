
mount_vfs_texture_path(current_mod_path.."/Textures/AMX10RCR.zip")

-- AMX-10 RCR

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.AMX10RCR);

GT.visual.shape = "AMX10RCR" --Model
GT.visual.shape_dstr = "AMX10RCR_destr" --Destroyed model

--Complex scheme armor parts (collision 3D model is divided in all these parts)
GT.DM = {
   
   
	{ area_name = "AVANT", 	armour = {width=0.013}},
	{ area_name = "AVANTTOIT", 	armour = {width=0.015}},
	{ area_name = "AVANT SURBLINDE", 	armour = {width=0.025}},
	{ area_name = "CONDUCTEUR",  	armour = {width=0.012}},
	{ area_name = "ENGINE",  	armour = {width=0.013}},
	{ area_name = "JUPPES",  	armour = {width=0.020}},
	{ area_name = "FLANCS",  	armour = {width=0.013}},
	{ area_name = "COLL",  	armour = {width=0.013}},
	{ area_name = "TOIT TOURELLE",  	armour = {width=0.013}},
	{ area_name = "FLANCS TOURELLE",  	armour = {width=0.020}},
	{ area_name = "MASQUE",  	armour = {width=0.030}},
	{ area_name = "PANIER FLANCS",  	armour = {width=0.1}},
	{ area_name = "PANIER ARRIERE",  	armour = {width=0.01}},
	{ area_name = "PNEUS",  	armour = {width=0.05}},
	
}



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
GT.driverViewConnectorName = "DRIVER_POINT" --Name of the dummy to be used as driver cockpit
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR" --Set up of thermal imagery

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;


--Turret 1 with main canon, MG

local ws = GT_t.inc_ws(); 
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER'; --Dummy wich is used as reference for the aiming, it must be put in the exact center of rotation axis of the turret
GT.WS[ws].angles = {
                    {math.rad(125), math.rad(-125), math.rad(-8), math.rad(20)}, --Turret limitations, from 125 to -125°, its negative elevation is -8°
                    {math.rad(-125), math.rad(125), math.rad(-2), math.rad(20)}, -- From -125 to 125, its negative elevation is -2° cause the canon would hit the engine
                    };
GT.WS[ws].drawArgument1 = 0; --azimut argument
GT.WS[ws].drawArgument2 = 1; -- elevation argument
GT.WS[ws].omegaY = math.rad(40); --azimut speed
GT.WS[ws].omegaZ = math.rad(30); --elevation speed
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true; --aiming stabilizer
GT.WS[ws].laser = true; --aiming laser
GT.WS[ws].pointer = 'GUN_SIGHT'; --name of the dummy which is to be the camera



__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].connector_name = 'GUN_POINT1' -- name of the dummy for canon muzzle
__LN.BR[1].recoilArgument = 23 --argument number for the recoil animation
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 
__LN.distanceMaxForFCS = 5000; --Max range for stabilizer and "auto setting of the aim"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCRH);-- Second type of shell using the 105RCRH canon, shoots OE105 explosive shells
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].recoilArgument = 23
__LN.BR[1].connector_name = 'GUN_POINT1'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1); --Machin gun 
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'GUN_POINT2'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil; --End of all of this

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._SMOKD); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].recoilArgument = 23 --argument number for the recoil animation
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 


ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_CDB';
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
GT.WS[ws].pointer = 'CDB_SIGHT'



__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1); --Machin gun 
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_AANF1',
			  recoilArgument = 24,
			  recoilTime = 60/1800}
__LN.BR[1].recoilArgument = 24
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil; --End of all of this



ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'DRIVER_POINT';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-85), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 30; --Arguments of the second turret, a second turret must use arguments from 25, don't give it arg 2 arg 3, it won't work, it must be 25-26, then 27-28 etc etc
GT.WS[ws].drawArgument2 = 28;
GT.WS[ws].omegaY = math.rad(10);
GT.WS[ws].omegaZ = math.rad(10);
GT.WS[ws].laser = false;
GT.WS[ws].stabilizer = false;
GT.WS[ws].pointer = 'vsusp'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --The commander optic, it uses the 105RCR canon but note that there is no ammo on it, so you can get a camera without anything to shoot. You need a weapon assigned to a "camera" in order to have it to work
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'vsusp'; --This dummy doesn't even exist in the max file, as it never will shoot with the commander camera we don't care
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} };
__LN.distanceMaxForFCS = 10000; --Max locking range
__LN = nil;

ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'DRIVER_POINT';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-85), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 31; --Arguments of the second turret, a second turret must use arguments from 25, don't give it arg 2 arg 3, it won't work, it must be 25-26, then 27-28 etc etc
GT.WS[ws].drawArgument2 = 27;
GT.WS[ws].omegaY = math.rad(10);
GT.WS[ws].omegaZ = math.rad(10);
GT.WS[ws].laser = false;
GT.WS[ws].stabilizer = false;
GT.WS[ws].pointer = 'vsusp001'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --The commander optic, it uses the 105RCR canon but note that there is no ammo on it, so you can get a camera without anything to shoot. You need a weapon assigned to a "camera" in order to have it to work
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'vsusp'; --This dummy doesn't even exist in the max file, as it never will shoot with the commander camera we don't care
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} };
__LN.distanceMaxForFCS = 10000; --Max locking range
__LN = nil;



GT.Name = "AMX10RCR"
GT.DisplayName = _("AMX-10RCR")
GT.Rate = 20

GT.Sensors = { OPTIC = {"CITV day", "CITV night"} };


GT.ThreatRange = GT.WS[1].LN[1].distanceMax; -- ME threat ring
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};

GT.category = "Armor";

GT.Countries = { "France"}; --Specifies that I only want it to be in France country

add_surface_unit(GT)

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------

-- AMX-10 RCR SEPAR

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_tank);
set_recursive_metatable(GT.chassis, GT_t.CH_t.SEPAR);

GT.visual.shape = "SEPAR"
GT.visual.shape_dstr = "AMX10RCR_destr"




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
GT.driverViewConnectorName = "DRIVER_POINT001"
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems


GT.DM = {
   
    { area_name = "AVANT", 	armour = {width=0.013}},
	{ area_name = "AVANTTOIT", 	armour = {width=0.015}},
	{ area_name = "AVANT SURBLINDE", 	armour = {width=0.025}},
	{ area_name = "CONDUCTEUR",  	armour = {width=0.012}},
	{ area_name = "ENGINE",  	armour = {width=0.013}},
	{ area_name = "JUPPES SEPAR",  	armour = {width=0.025}},
	{ area_name = "FLANCS",  	armour = {width=0.013}},
	{ area_name = "COLL",  	armour = {width=0.013}},
	{ area_name = "TOIT TOURELLE",  	armour = {width=0.013}},
	{ area_name = "FLANCS TOURELLE",  	armour = {width=0.020}},
	{ area_name = "MASQUE",  	armour = {width=0.030}},
	{ area_name = "PANIER FLANCS",  	armour = {width=0.1}},
	{ area_name = "PANIER ARRIERE",  	armour = {width=0.01}},
	{ area_name = "PANIER SEPAR ARRIERE",  	armour = {width=0.02}},
	{ area_name = "PANIER SEPAR FLANCS",  	armour = {width=0.1}},
	{ area_name = "PNEUS",  	armour = {width=0.05}},
	
}



GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;


--Turret 1 with main canon, MG

local ws = GT_t.inc_ws(); 
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER'; --Dummy wich is used as reference for the aiming, it must be put in the exact center of rotation axis of the turret
GT.WS[ws].angles = {
                    {math.rad(125), math.rad(-125), math.rad(-8), math.rad(20)}, --Turret limitations, from 125 to -125°, its negative elevation is -8°
                    {math.rad(-125), math.rad(125), math.rad(-2), math.rad(20)}, -- From -125 to 125, its negative elevation is -2° cause the canon would hit the engine
                    };
GT.WS[ws].drawArgument1 = 0; --azimut argument
GT.WS[ws].drawArgument2 = 1; -- elevation argument
GT.WS[ws].omegaY = math.rad(40); --azimut speed
GT.WS[ws].omegaZ = math.rad(30); --elevation speed
GT.WS[ws].reloadAngleY = math.rad(30);
GT.WS[ws].reloadAngleZ = math.rad(30);
GT.WS[ws].stabilizer = true; --aiming stabilizer
GT.WS[ws].laser = true; --aiming laser
GT.WS[ws].pointer = 'GUN_SIGHT001'; --name of the dummy which is to be the camera



__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser
__LN.BR[1].connector_name = 'GUN_POINT003' -- name of the dummy for canon muzzle
__LN.BR[1].recoilArgument = 23 --argument number for the recoil animation
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 
__LN.distanceMaxForFCS = 5000; --Max range for stabilizer and "auto setting of the aim"

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCRH);-- Second type of shell using the 105RCRH canon, shoots OE105 explosive shells
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].recoilArgument = 23
__LN.BR[1].connector_name = 'GUN_POINT003'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0} };
__LN.sightMasterMode = 1
__LN.distanceMaxForFCS = 5000;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1); --Machin gun 
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'GUN_POINT004'
__LN.customViewPoint = { "HL-60/HL-60", {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil; --End of all of this

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._SMOKD); --First type of shell using the 105RCR canon defined in the common.lua, this canon shoots OFL105F3 AP shells
__LN.fireAnimationArgument = 125 
__LN.beamWidth = math.rad(1); --Has laser

__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} }; --The name of the camera, its coordinates from the GUN_SIGHT dummy
__LN.sightMasterMode = 1 


ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'CENTER_CDB';
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
GT.WS[ws].pointer = 'CDB_SIGHT'


__LN = add_launcher(GT.WS[ws], GT_t.LN_t.AANF1); --Machin gun 
__LN.fireAnimationArgument = 125
__LN.beamWidth = math.rad(1);
__LN.BR[1] = {connector_name = 'POINT_AANF1',
			  recoilArgument = 24,
			  recoilTime = 60/1800}
__LN.BR[1].recoilArgument = 24
__LN.customViewPoint = { 'Challenger2/GPS', {0.0, 0.0, 0.0}};
__LN.sightMasterMode = 1
__LN = nil; --End of all of this


ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'DRIVER_POINT';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-85), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 30; --Arguments of the second turret, a second turret must use arguments from 25, don't give it arg 2 arg 3, it won't work, it must be 25-26, then 27-28 etc etc
GT.WS[ws].drawArgument2 = 28;
GT.WS[ws].omegaY = math.rad(10);
GT.WS[ws].omegaZ = math.rad(10);
GT.WS[ws].laser = false;
GT.WS[ws].stabilizer = false;
GT.WS[ws].pointer = 'vsusp'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --The commander optic, it uses the 105RCR canon but note that there is no ammo on it, so you can get a camera without anything to shoot. You need a weapon assigned to a "camera" in order to have it to work
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'vsusp'; --This dummy doesn't even exist in the max file, as it never will shoot with the commander camera we don't care
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} };
__LN.distanceMaxForFCS = 10000; --Max locking range
__LN = nil;

ws = GT_t.inc_ws(); --Second turret, which contains the commander optic, the 2 rockets smoke
GT.WS[ws] = {};
GT.WS[ws].base = 1;
GT.WS[ws].center = 'DRIVER_POINT';
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-85), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 31; --Arguments of the second turret, a second turret must use arguments from 25, don't give it arg 2 arg 3, it won't work, it must be 25-26, then 27-28 etc etc
GT.WS[ws].drawArgument2 = 27;
GT.WS[ws].omegaY = math.rad(10);
GT.WS[ws].omegaZ = math.rad(10);
GT.WS[ws].laser = false;
GT.WS[ws].stabilizer = false;
GT.WS[ws].pointer = 'vsusp001'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._105RCR); --The commander optic, it uses the 105RCR canon but note that there is no ammo on it, so you can get a camera without anything to shoot. You need a weapon assigned to a "camera" in order to have it to work
__LN.beamWidth = math.rad(1);
__LN.BR[1].connector_name = 'vsusp'; --This dummy doesn't even exist in the max file, as it never will shoot with the commander camera we don't care
__LN.PL[1].ammo_capacity = 0;
__LN.fireAnimationArgument = 45;
__LN.customViewPoint = { "Ironsight/Ironsight", {0.0, 0.0, 0.0} };
__LN.distanceMaxForFCS = 10000; --Max locking range
__LN = nil;



GT.Name = "SEPAR"
GT.DisplayName = _("AMX-10RCR SEPAR")
GT.Rate = 20

GT.Sensors = { OPTIC = {"CITV day", "CITV night"} };


GT.ThreatRange = GT.WS[1].LN[1].distanceMax; -- ME threat ring
GT.mapclasskey = "P0091000001"; -- map symbol
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericTank,
				"Tanks",
				"Old Tanks",
				};

GT.category = "Armor";

GT.Countries = { "France"}; 

add_surface_unit(GT)

-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------




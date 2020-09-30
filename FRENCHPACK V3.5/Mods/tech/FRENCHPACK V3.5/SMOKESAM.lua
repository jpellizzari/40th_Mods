
mount_vfs_texture_path(current_mod_path.."/Textures/SMOKESAM.zip")
------------------------------------------------------------------------------------
-- Units declaration --
------------------------------------------------------------------------------------

GT_t.CH_t.STAT = {
	life = 1,
	mass = 5000,
	length = 5,
	width = 5,
	max_road_velocity = 0,
	max_slope = 0,
	engine_power = 0,
	max_vert_obstacle = 0,
	max_acceleration = 0,
	min_turn_radius = 0,
	X_gear_1 = 0,
	Y_gear_1 = 0,
	Z_gear_1 = 0,
	X_gear_2 = 0,
	Y_gear_2 = 0,
	Z_gear_2 = 0,
	gear_type = GT_t.GEAR_TYPES.STATIONARY,
	r_max = 0,
	r_track = 0,
	armour_thickness = 0.001,
}

-------------------------------------------------------------
-------------------------------------------------------------




--- MISTRAL

local SMOKESAMIR = {
    category        = CAT_MISSILES,
    name            = "SMOKESAMIR",
    user_name       = "SMOKESAMIR",
    model           = 'SMOKEMISSILE',
    mass            = 19.7,
	
    wsTypeOfWeapon  = {4,4,34,WSTYPE_PLACEHOLDER},
  Escort = 0,
  Head_Type = 1,
  sigma = {
    1,
    1,
    1
  },
  M = 19.7,
  H_max = 18000,
  H_min = -1,
  Diam = 90,
  Cx_pil = 1.29,
  D_max = 10000,
  D_min = 500,
  Head_Form = 0,
  Life_Time = 17,
  Nr_max = 0.1,
  v_min = 669.8,
  v_mid = 904.4,
  Mach_max = 2.66,
  t_b = 0,
  t_acc = 5,
  t_marsh = 6.8,
  Range_max = 14000,
  H_min_t = 0,
  Fi_start = 1,
  Fi_rak = 3.14152,
  Fi_excort = 1,
  Fi_search = 99.9,
  OmViz_max = 99.9,
  warhead = {
    mass = 1,
    expl_mass = 0.1,
    other_factors = {
      1,
      1,
      1
    },
    obj_factors = {1, 1},
    concrete_factors = {
      1,
      1,
      1
    },
    cumulative_factor = 0,
    concrete_obj_factor = 0,
    cumulative_thickness = 0,
    piercing_mass = 0.6,
    caliber = 90
  },
  Damage = 25,
  exhaust = {
    1.5,
    1.5,
    1.5,
    1
  },
  X_back = -1,
  Y_back = 0,
  Z_back = 0,
  Reflection = 0.0182,
  KillDistance = 7,
  SeekerSensivityDistance = 80000,
  ccm_k0 = 0.05,
  SeekerCooled = true,
  shape_table_data = {
    {
      name = "SMOKESAMIR",
      file = "SMOKEMISSILE",
      life = 1,
      fire = {0, 1},
      username = "SMOKESAMIR",
      index = WSTYPE_PLACEHOLDER
    }
  },
  ModelData = {
    58,
    0.2,
    0.004,
    0.008,
    0.004,
    0.012,
    0.004,
    1.2,
    1.3,
    1.2,
    1.2,
    0.4,
    0,
    -1,
    -1,
    5,
    6.8,
    0,
    0,
    1000000000,
    0,
    0,
    1.163,
    0,
    0,
    0,
    0,
    0,
    0,
    3100,
    0,
    0,
    0,
    0,
    11.8,
    11.8,
    0,
    0.1,
    1000000000,
    1000000000,
    0,
    30,
    0,
    1.19,
    1,
    2,
    0,
    0,
    0,
    0,
    0,
    11000,
    7000,
    7000,
    0.2,
    1,
    1.4,
    -3,
    0.5
  }
}
declare_weapon(SMOKESAMIR)

GT_t.LN_t._SMOKESAMIR1 = {} 
GT_t.LN_t._SMOKESAMIR1.type = 4;
GT_t.LN_t._SMOKESAMIR1.distanceMin = 200;
GT_t.LN_t._SMOKESAMIR1.distanceMax = 20000;
GT_t.LN_t._SMOKESAMIR1.reactionTime = 2;
GT_t.LN_t._SMOKESAMIR1.launch_delay = 1;
GT_t.LN_t._SMOKESAMIR1.radialDisperse = 0.0;
GT_t.LN_t._SMOKESAMIR1.dispertionReductionFactor = 0.0;
GT_t.LN_t._SMOKESAMIR1.maxShootingSpeed = 1;
GT_t.LN_t._SMOKESAMIR1.reflection_limit = 0.1;
GT_t.LN_t._SMOKESAMIR1.ECM_K = -1
GT_t.LN_t._SMOKESAMIR1.show_external_missile = false
GT_t.LN_t._SMOKESAMIR1.sensor = {};
set_recursive_metatable(GT_t.LN_t._SMOKESAMIR1.sensor, GT_t.WSN_t[0]);
-- GT_t.LN_t._MISTRALSOL.barrels_reload_type = BarrelsReloadTypes.SEQUENTIALY;
GT_t.LN_t._SMOKESAMIR1.PL = {};
GT_t.LN_t._SMOKESAMIR1.PL[1] = {};
GT_t.LN_t._SMOKESAMIR1.PL[1].ammo_capacity = 2;
GT_t.LN_t._SMOKESAMIR1.PL[1].type_ammunition=SMOKESAMIR.wsTypeOfWeapon;
GT_t.LN_t._SMOKESAMIR1.PL[1].name_ammunition= {"SMOKESAMIR"};
GT_t.LN_t._SMOKESAMIR1.PL[1].reload_time = 30;
GT_t.LN_t._SMOKESAMIR1.PL[1].shot_delay = 60;
GT_t.LN_t._SMOKESAMIR1.PL[1].automaticLoader = false;
GT_t.LN_t._SMOKESAMIR1.BR = {
                    {connector_name = "POINT_MISSILE",drawArgument = 4},

                };



GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);

set_recursive_metatable(GT.chassis, GT_t.CH_t.STAT);
GT.chassis.life = 0.1;
GT.visual.shape = "SMOKESAM"
GT.visual.shape_dstr = "SMOKESAM"


--chassis
GT.swing_on_run = true


GT.sensor = {};
GT.sensor.max_range_finding_target = 20000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 20000;
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
GT.WS.maxTargetDetectionRange = 20000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].board = 2
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(2), math.rad(85)},
                    
					};
					
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);	
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;				
GT.WS[ws].pointer = 'POINT_SIGHT'

__LN = add_launcher(GT.WS[ws], GT_t.LN_t._SMOKESAMIR1);
__LN.customViewPoint = { 'Challenger2/GPS', { 0, 0, 0 }, };
__LN = nil;

GT.Name = "SMOKESAM";
GT.DisplayName = _("SMOKE SAM IR");
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

GT.Countries = { "USA"}; 

add_surface_unit(GT)



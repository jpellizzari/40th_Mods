
GT_t.CH_t.JTAC = {
    life = 0.08,
    mass = 90,
    length = 1,
    width = 1,
    max_road_velocity = 4,
    max_slope = 0.87,
    engine_power = 0.5,
	fordingDepth = 1.0,
    max_vert_obstacle = 1,
    max_acceleration = 3.0,
    min_turn_radius = 0.1,
    X_gear_1 = 0.3,
    Y_gear_1 = 0,
    Z_gear_1 = 0.0,
    X_gear_2 = 0.0,
    Y_gear_2 = 0,
    Z_gear_2 = 0.0,
	gear_type = GT_t.GEAR_TYPES.HUMAN,
    r_max = 0.53,
    armour_thickness = 0,
	human_figure = true,
}
-- Human animation params

GT_t.CH_t.JTAC_ANIMATION = {
	walk = {
		argument = 5,
		start_distance = 0.42,
		start_begin = 0.0,
		start_end = 0.050,
		cycle_distance = 1.3,
		cycle_begin = 0.050,
		cycle_end = 0.150,
		stop_distance = 0.38,
		stop_begin = 0.150,
		stop_end = 0.206,
		to_run_distance = 1.8,
		to_run_begin = 0.213,
		to_run_end = 0.286,
	};
	
	run = {
		bot_argument = 6,
		human_argument = 7,
		start_distance = 0.7,
		start_begin = 0.0,
		start_end = 0.043,
		cycle_distance = 2.3,
		cycle_begin = 0.043,
		cycle_end = 0.113,
		stop_distance = 1.1,
		stop_begin = 0.113,
		stop_end = 0.200,
		to_walk_distance = 1.5,
		to_walk_begin = 0.214,
		to_walk_end = 0.285,
	};
	
	dead = {
		argument = 8,
		start_animation = 0.0,
		end_animation = 0.250,
		animation_time = 2.5,
	};
	
	breath = {
		argument = 15,
		start_animation = 0.0,
		end_animation = 1.0,
		animation_time = 10.0,
	};
	
	idle = {
		argument = 16,
		left_right_start = 0.0,
		left_right_end = 0.5,
		to_left_start = 0.5,
		to_left_end = 0.77,
		to_right_start = 0.77,
		to_right_end = 1.0,
	};
}

-- Human animation params

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_human);
set_recursive_metatable(GT.chassis, GT_t.CH_t.JTAC);

GT.visual.shape = "Soldier_M4";
GT.visual.shape_dstr = "Soldier_M4_P_1";
GT.CustomAimPoint = {0,0.7,0};

GT.mobile = true;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 1.8;
GT.sensor.max_range_finding_target = 5000;


GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(45), math.rad(-45), math.rad(-15), math.rad(30)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(100);
GT.WS[ws].omegaZ = math.rad(100);
GT.WS[ws].pidY = {p=100,i=1.5,d=9,inn=10};
GT.WS[ws].pidZ = {p=100,i=1.5,d=9,inn=10,};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.carabine_M4);
__LN.maxShootingSpeed = 0;
__LN.BR[1].connector_name = 'POINT_GUN';
__LN.fireAnimationArgument = 23;
__LN.distanceMin = 0;
for i=2,8 do -- 8 clips, 240 rounds
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end

GT.Name = "JTACFP";
GT.DisplayName = _("Infantry Soldier JTAC");
GT.Rate = 1;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000201";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericInfantry,
        "Infantry",
		"CustomAimPoint",
        };
GT.category = "Infantry";
GT.Transportable = {
	size = 100
}

add_surface_unit(GT)

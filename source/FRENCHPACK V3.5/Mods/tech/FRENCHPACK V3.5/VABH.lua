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

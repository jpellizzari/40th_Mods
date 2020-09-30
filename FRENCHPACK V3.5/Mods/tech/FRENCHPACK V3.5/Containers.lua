mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/Containers")









--Container H
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 10

	CWAY.visual.shape = "Container_H"
	CWAY.visual.shape_dstr = "Container_destr.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 1;
        
	
        CWAY.Name = "Container_H"
	CWAY.DisplayName = _("FARP CONTAINER H")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)
	
--Container VERT
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 10

	CWAY.visual.shape = "Container_Vert"
	CWAY.visual.shape_dstr = "Container_destr.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 1;
        
	
        CWAY.Name = "Container_Vert"
	CWAY.DisplayName = _("FARP CONTAINER GREEN")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)

	--Container H
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 10

	CWAY.visual.shape = "Container_Desert"
	CWAY.visual.shape_dstr = "Container_destr.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 1;
        
	
        CWAY.Name = "Container_Desert"
	CWAY.DisplayName = _("FARP CONTAINER DESERT")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)

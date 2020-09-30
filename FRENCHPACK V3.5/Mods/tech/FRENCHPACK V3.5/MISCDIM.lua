mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/MISCDIM")









--barriere
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "barriere"
	CWAY.visual.shape_dstr = "barriere.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "barriere"
	CWAY.DisplayName = _("Dim' Fence")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)

	--Caisse_AM
	
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "Caisse_AM"
	CWAY.visual.shape_dstr = "Caisse_AM.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "Caisse_AM"
	CWAY.DisplayName = _("Dim' Ammo Crate 1")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)

		--Caisse_AM_compl
	
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "Caisse_AM_compl"
	CWAY.visual.shape_dstr = "Caisse_AM_compl.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "Caisse_AM_compl"
	CWAY.DisplayName = _("Dim' Ammo Crate 2")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)
	
			--chiottes
	
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "chiottes"
	CWAY.visual.shape_dstr = "chiottes.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "chiottes"
	CWAY.DisplayName = _("Dim' WC")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)
	
				--Cone
	
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "Cone"
	CWAY.visual.shape_dstr = "Cone.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "Cone"
	CWAY.DisplayName = _("Dim' Construction Cone")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)
	
					--panneau
	
	CWAY = {};
	set_recursive_metatable(CWAY, GT_t.generic_stationary)
	set_recursive_metatable(CWAY.chassis, GT_t.CH_t.STATIC);
	CWAY.chassis.life = 1

	CWAY.visual.shape = "panneau"
	CWAY.visual.shape_dstr = "panneau.edm"


	CWAY.visual.fire_size = 0 --relative burning size
	CWAY.visual.fire_pos = {0,0,0};
	CWAY.visual.fire_time = 0 --burning time (seconds)
	CWAY.time_agony = 180;
        CWAY.animation_arguments.headlights = 1;
	
        CWAY.Name = "panneau"
	CWAY.DisplayName = _("Dim' Restricted Area Sign")
	CWAY.Rate = 1

	CWAY.DetectionRange  = 0;
	CWAY.ThreatRange = 0;
	CWAY.mapclasskey = "P0091000076";
	CWAY.attribute = {wsType_Ground,wsType_Tank,wsType_NoWeapon,wsTypeVAZ,
					"Fortifications",
					};
	CWAY.category = "Fortification";

	add_surface_unit(CWAY)
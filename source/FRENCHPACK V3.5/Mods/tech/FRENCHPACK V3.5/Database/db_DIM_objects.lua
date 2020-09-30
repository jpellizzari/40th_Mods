mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_texture_path  (current_mod_path.."/Textures/concr_wall")
mount_vfs_texture_path  (current_mod_path.."/Textures/Containers")
mount_vfs_texture_path  (current_mod_path.."/Textures/fuel_infl.zip")
mount_vfs_texture_path  (current_mod_path.."/Textures/Hescos")
mount_vfs_texture_path  (current_mod_path.."/Textures/lampe")
mount_vfs_texture_path  (current_mod_path.."/Textures/MISCDIM")
mount_vfs_texture_path  (current_mod_path.."/Textures/AMX10RCR")
mount_vfs_texture_path  (current_mod_path.."/Textures/tentes")
mount_vfs_texture_path  (current_mod_path.."/Textures/tente_cylindre")
mount_vfs_texture_path  (current_mod_path.."/Textures/Tentes_H")
mount_vfs_texture_path  (current_mod_path.."/Textures/DIMCANOPY")



local function add_structure(f)
	if(f) then
		f.shape_table_data = 
		{
			{
				file  	    = f.ShapeName,
				life		= f.Life,
				username    = f.Name,
				desrt       = f.ShapeNameDestr or "self",
			    classname 	= f.classname   or "lLandVehicle",
				positioning = f.positioning or "BYNORMAL" -- {"BYNORMAL", "ONLYHEIGTH", "BY_XZ", "ADD_HEIGTH"}
			}
		}
		if f.ShapeNameDestr then
			f.shape_table_data[#f.shape_table_data + 1] = 
			{
				name  = f.ShapeNameDestr,
				file  = f.ShapeNameDestr,	
			}
		end
		
		
		f.mapclasskey = "P0091000076";
		f.attribute = {wsType_Static, wsType_Standing}
		
		add_surface_unit(f)
		GT = nil;
	else
		error("Can't add structure")
	end;
end



---------------------CANOPY

add_structure({
Name 		 =  "CANOPY1",
DisplayName  = _("DIM' CANOPY 1"),
ShapeName	 =   "CANOPY1",
ShapeNameDestr = "CANOPY1_destr",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "CANOPY2",
DisplayName  = _("DIM' CANOPY 2"),
ShapeName	 =   "CANOPY2",
ShapeNameDestr = "CANOPY2_destr",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})



---------------------CONTAINERS



add_structure({
Name 		 =  "Container_H",
DisplayName  = _("FARP CONTAINER H"),
ShapeName	 =   "Container_H",
ShapeNameDestr = "Container_destr",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "Container_Vert",
DisplayName  = _("FARP CONTAINER GREEN"),
ShapeName	 =   "Container_Vert",
ShapeNameDestr = "Container_destr",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "Container_Desert",
DisplayName  = _("FARP CONTAINER DESERT"),
ShapeName	 =   "Container_Desert",
ShapeNameDestr = "Container_destr",
Life		 =  10,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


----------------------HESCO10

add_structure({
Name 		 =  "HESCO10",
DisplayName  = _("HESCO x10"),
ShapeName	 =   "HESCO10",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO10double",
DisplayName  = _("HESCO x10 DOUBLE"),
ShapeName	 =   "HESCO10double",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO10double_pile",
DisplayName  = _("HESCO x10 DOUBLE 2 M HEIGHT"),
ShapeName	 =   "HESCO10double_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO10_pile",
DisplayName  = _("HESCO x10 2 M HEIGHT"),
ShapeName	 =   "HESCO10_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

---------------- HESCO30

add_structure({
Name 		 =  "HESCO30",
DisplayName  = _("HESCO x30"),
ShapeName	 =   "HESCO30",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO30double",
DisplayName  = _("HESCO x30 DOUBLE"),
ShapeName	 =   "HESCO30double",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO30double_pile",
DisplayName  = _("HESCO x30 DOUBLE 2 M HEIGHT"),
ShapeName	 =   "HESCO30double_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO30_pile",
DisplayName  = _("HESCO x30 2 M HEIGHT"),
ShapeName	 =   "HESCO30_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

-------------------- HESCO90
add_structure({
Name 		 =  "HESCO90",
DisplayName  = _("HESCO x90"),
ShapeName	 =   "HESCO90",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO90double",
DisplayName  = _("HESCO x90 DOUBLE"),
ShapeName	 =   "HESCO90double",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO90double_pile",
DisplayName  = _("HESCO x90 DOUBLE 2 M HEIGHT"),
ShapeName	 =   "HESCO90double_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "HESCO90_pile",
DisplayName  = _("HESCO x90 2 M HEIGHT"),
ShapeName	 =   "HESCO90_pile",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})


-------------------------- BETON

add_structure({
Name 		 =  "concr_wall1x",
DisplayName  = _("CONCRETE WALL 1X"),
ShapeName	 =   "concr_wall1x",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "concr_wall10x",
DisplayName  = _("CONCRETE WALL 10X"),
ShapeName	 =   "concr_wall10x",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})
	
add_structure({
Name 		 =  "concr_wall30x",
DisplayName  = _("CONCRETE WALL 30X"),
ShapeName	 =   "concr_wall30x",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})

add_structure({
Name 		 =  "concr_wall90x",
DisplayName  = _("CONCRETE WALL 90X"),
ShapeName	 =   "concr_wall90x",
Life		 =  1000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

---------------------- FUEL

add_structure({
Name 		 =  "fuel_straight",
DisplayName  = _("DIM' Fuel Inflatable 1"),
ShapeName	 =   "fuel_straight",
ShapeNameDestr = "fuel_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "fuel_side",
DisplayName  = _("DIM' Fuel Inflatable 2"),
ShapeName	 =   "fuel_side",
ShapeNameDestr = "fuel_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

-------------------- LAMPES
	
add_structure({
Name 		 =  "lampe blanc",
DisplayName  = _("FARP Light dir white"),
ShapeName	 =   "lampe blanc.EDM",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "lampe bleu",
DisplayName  = _("FARP Light dir blue"),
ShapeName	 =   "lampe bleu.EDM",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	


add_structure({
Name 		 =  "lampe vert",
DisplayName  = _("FARP Light dir green"),
ShapeName	 =   "lampe vert.EDM",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	


------------------------------------------------- MISC


add_structure({
Name 		 =  "barriere",
DisplayName  = _("Dim' Fence"),
ShapeName	 =   "barriere",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "caisse_AM",
DisplayName  = _("Dim' Ammo crate 1"),
ShapeName	 =   "caisse_AM",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "Caisse_AM_compl",
DisplayName  = _("Dim' Ammo crate 2"),
ShapeName	 =   "Caisse_AM_compl",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "chiottes",
DisplayName  = _("Dim' WC"),
ShapeName	 =   "chiottes",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "Cone",
DisplayName  = _("Dim' Construction Cone"),
ShapeName	 =   "Cone.EDM",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "panneau",
DisplayName  = _("Dim' Restricted Area Sign"),
ShapeName	 =   "panneau",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

-------------------------- REMBLAIS

add_structure({
Name 		 =  "Remblai1",
DisplayName  = _("DIM' Protection Wall"),
ShapeName	 =   "Remblai1",
Life		 =  1000000000000000000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "Remblai2",
DisplayName  = _("DIM' Protection Wall Long"),
ShapeName	 =   "Remblai2",
Life		 =  1000000000000000000,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

--------------------TENTE SIMPLE



add_structure({
Name 		 =  "tente_desert",
DisplayName  = _("FARP TENT GREEN"),
ShapeName	 =   "tente_desert",
ShapeNameDestr = "tente_desert_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "tente_verte",
DisplayName  = _("FARP TENT DESERT"),
ShapeName	 =   "tente_verte",
ShapeNameDestr = "tente_verte_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "tente_camo",
DisplayName  = _("FARP TENT CAMO"),
ShapeName	 =   "tente_camo",
ShapeNameDestr = "tente_camo_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

------------------------TENTE CYLINDRIQUE


add_structure({
Name 		 =  "tentepetite_vert",
DisplayName  = _("FARP CYLINDRICAL TENT GREEN"),
ShapeName	 =   "tentepetite_vert",
ShapeNameDestr = "tentepetite_vert_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "tentepetite_desert",
DisplayName  = _("FARP CYLINDRICAL TENT DESERT"),
ShapeName	 =   "tentepetite_desert",
ShapeNameDestr = "tentepetite_desert_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	


---------------------------TENTE HEIGHT

add_structure({
Name 		 =  "Tente H",
DisplayName  = _("FARP TENT H"),
ShapeName	 =   "Tente H",
ShapeNameDestr = "Tente H_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "Tente H_desert",
DisplayName  = _("FARP TENT H DESERT"),
ShapeName	 =   "Tente H_desert",
ShapeNameDestr = "Tente H_desert_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	

add_structure({
Name 		 =  "Tente H_verte",
DisplayName  = _("FARP TENT H GREEN"),
ShapeName	 =   "Tente H_verte",
ShapeNameDestr = "Tente H_verte_destr",
Life		 =  1,
Rate		 =  10,
category     =  'Fortification',
SeaObject    = 	false,
isPutToWater =  false,
numParking   =  1,
})	


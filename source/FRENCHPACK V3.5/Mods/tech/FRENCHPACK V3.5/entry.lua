declare_plugin("FRENCHPACK",

{
image     	 = "SOO.bmp",
installed 	 = true, 
dirName	  	 = current_mod_path,


fileMenuName = _("SOO"),
version		 = "2.5",		 
state		 = "installed",
info		 = _("VPC Object"),

	

})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_sound_path	(current_mod_path.."/Sounds")
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
dofile(current_mod_path.."/Database/db_FARP_objects.lua")
dofile(current_mod_path.."/Database/db_DIM_objects.lua")


dofile(current_mod_path..'/MD-3.lua')
dofile(current_mod_path..'/MD-3 Air.lua')

dofile(current_mod_path..'/MarstonMat.lua')
dofile(current_mod_path..'/MarstonMat_X4.lua')
dofile(current_mod_path..'/MarstonMat_X14.lua')
dofile(current_mod_path..'/MarstonMat_X28.lua')
dofile(current_mod_path..'/Field_Hide Large.lua')
dofile(current_mod_path..'/Field_Hide_Small.lua')
dofile(current_mod_path..'/Tower.lua')



dofile(current_mod_path..'/Saab_Safari.lua')
dofile(current_mod_path..'/AT802U.lua')
dofile(current_mod_path..'/SMOKESAM.lua')
---- frenchpack
dofile(current_mod_path..'/fumis.lua')
dofile(current_mod_path..'/common.lua')

dofile(current_mod_path..'/Frenchpack_AMX10RC.lua')
dofile(current_mod_path..'/Frenchpack_ERC90.lua')
dofile(current_mod_path..'/Frenchpack_STATICS.lua')
dofile(current_mod_path..'/Frenchpack_TRM2000.lua')
dofile(current_mod_path..'/Frenchpack_VAB.lua')
dofile(current_mod_path..'/Frenchpack_VBL.lua')
dofile(current_mod_path..'/Frenchpack_VBAE.lua')
dofile(current_mod_path..'/Frenchpack_AMX30.lua')
dofile(current_mod_path..'/Frenchpack_Infanterie.lua')
dofile(current_mod_path..'/OPFORPACK.lua')
dofile(current_mod_path..'/BLUFORPACK.lua')
dofile(current_mod_path..'/Frenchpack_LeclercXXI.lua')
----frenchpack


dofile(current_mod_path..'/Toyota.lua')
dofile(current_mod_path..'/VABH.lua')




plugin_done()
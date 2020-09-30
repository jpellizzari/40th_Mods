self_ID = "CivilAircraftMod"
declare_plugin(self_ID,
{
image     	 = "FC3.bmp",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("CivilAircraftMod"),
developerName = _("CivilAircraftMod"),

fileMenuName = _("CivilAircraftMod"),
update_id        = "CivilAircraftMod",
version		 = "2.5.0",
state		 = "installed",
info		 = _("Civil Aircraft Mod - Freie Modelle, die fuer DCS konvertiert worden sind(cadnav.com) A-380 ist ein vierstrahliges Grossraumflugzeug des europaeischen Flugzeugherstellers Airbus S. A. S. mit zwei durchgehenden Passagierdecks. B-737 des US-amerikanischen Flugzeugherstellers Boeing ist die weltweit meistgebaute Familie strahlgetriebener Verkehrsflugzeuge. B-747 ,auch Jumbo-Jet in Anlehnung an den Elefanten Jumbo, ist ein vierstrahliges Grossraumflugzeug des US-amerikanischen Flugzeugherstellers Boeing. B-757 ist ein zweistrahliges Verkehrsflugzeug des US-amerikanischen Flugzeugherstellers Boeing, das fuer den Einsatz auf Strecken mittlerer Laenge konzipiert wurde"),

encyclopedia_path 	= current_mod_path..'/Encyclopedia',

Skins	=
	{
		{
		    name	= _("CAM"),
			dir		= "Theme"
		},
	},	
Missions =
	{
		{
			name	= _("Civil Aircraft Mod"),
			dir		= "Missions",
  		},
	},	
--[[	
LogBook =
	{
		{
			name		= _("Cessna_210N"),
			type		= "Cessna_210N",
		},
	},	
InputProfiles =
	{
		["Cessna_210N"] = current_mod_path .. '/Entries/Aircrafts/Input/Cessna_210N',
	},
--]]
})
----------------------------------------------------------------------------------------
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path  (current_mod_path.."/Textures/CivilAircraftMod")
mount_vfs_sound_path	(current_mod_path.."/Sounds")
-------------------------------------------------------------------------------------
--Boeing - Airbus - Cessna
-------------------------------------------------------------------------------------
dofile(current_mod_path..'/A_320.lua')
dofile(current_mod_path..'/A_380.lua')
dofile(current_mod_path..'/B_727.lua')
dofile(current_mod_path..'/B_737.lua')
dofile(current_mod_path..'/B_747.lua')
dofile(current_mod_path..'/B_757.lua')
dofile(current_mod_path..'/Cessna_210N.lua')
-------------------------------------------------------------------------------------
plugin_done()

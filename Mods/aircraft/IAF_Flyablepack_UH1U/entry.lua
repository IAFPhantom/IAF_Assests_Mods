local self_ID = "IAF_AB_212 by Israeli Mod Team"
declare_plugin(self_ID,
{
image     	 = current_mod_path.."/Theme/icon.png",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,

displayName		= _("IAF_AB_212"),
shortName = 'IAF_Anafa',
fileMenuName = _("IAF_AB_212"), 
version		 = "0.8.0.alpha",
state		 = "installed",
info		 = _("Israeli IAF_Anafa mod of UH-1U by IAF Mod Team from Preflight at http://www.preflight.us/"),
infoWaitScreen = "Bell, UH-1H Huey, emblems, logos, and body designs are trademarks of Textron Innovations Inc.\nand are used under license by Sky Jet International LLC. ",
binaries 	 =
{
'Uh1H',
'CockpitUH1H',
},

InputProfiles =
{
    ["IAF_AB_212"]      = current_mod_path .. '/input/UH-1H',
	["IAF_AB_212_easy"] = current_mod_path .. '/input/UH-1H_easy',  
	["IAF_AB_212_Gunner"] = current_mod_path .. '/input/UH-1H_Gunner',
	["IAF_AB_212_TrackIR_Gunner"] = current_mod_path .. '/input/UH-1H_TrackIR_Gunner',  	
},


Skins	=
	{
		{
			name	= _("IAF_AB_212"),
			dir		= "Skins/1"
		},
	},

Missions =
	{
		{
			name		= _("IAF_AB_212"),
			dir			= "Missions",
--            training_ids    = {EN = 'UH-1H_video_EN',},
		},
	},	

LogBook =
	{
		{
			name		= _("IAF_AB_212"),
			type		= "IAF_Anafa",
		},
	},	

Options =
	{
		{
			name		= _("IAF_AB_212"),
			nameId		= "IAF_AB_212",
			dir			= "Options",
		},
	},
	
preload_resources = {
	textures   = 
		{
		},
	models     = {},
	fonts      = {},
	explosions = {},
	},
})

mount_vfs_texture_path("Mods/aircraft/UH-1H/Cockpit/Textures/UH-1H-CPT-TEXTURES")
mount_vfs_texture_path(current_mod_path ..  "/Skins/1/ME")--for simulator loading window 
mount_vfs_liveries_path("Mods/aircraft/UH-1H/Liveries")

dofile(current_mod_path.."/Views.lua")

make_view_settings('IAF_AB_212', ViewSettings, SnapViews)


----------------------------------------------------------------------------------------
make_flyable('IAF_AB_212',current_mod_path .. '/Cockpit/Scripts/',{self_ID,'Uh1H'}, current_mod_path..'/comm.lua')--make_flyable(obj_name,optional_cockpit path,optional_fm = {mod_of_fm_origin,dll_with_fm})
set_manual_path('IAF_AB_212', 'Mods/aircraft/UH-1H/Doc/manual')
----------------------------------------------------------------------------------------
plugin_done()

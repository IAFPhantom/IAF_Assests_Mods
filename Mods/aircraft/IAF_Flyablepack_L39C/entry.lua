self_ID = "IAF F-15I_Dual; by Israeli Mod Team"
declare_plugin(self_ID,
{
image     	 = current_mod_path.."/Theme/icon.png",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("IAF_F-15I_Dual"),
developerName   =   "Preflight Mod Team - IAF.101~Schnix and IAF.101~Phantom",

fileMenuName = _("IAF_F-15I"),
update_id        = "IAF_F_15I",
version		 = "0.8.0.alpha",
state		 = "installed",
info		 = _("Israeli F-15I dual seat with CFT with Phyton-3/4/5 and derby missiles and A/G weapons by IAF Mod Team from Preflight at http://www.preflight.us/"),
encyclopedia_path = current_mod_path..'/Encyclopedia',

InputProfiles =
{
    ["IAF_F_15I"] = current_mod_path .. '/Input/IAF_F_15I',
},

Skins	=
	{
		{
			name	= _("IAF F-15I Baz"),
			dir		= "Theme"
		},
	},
	
Missions =
	{
		{
			name		= _("IAF F-15I Baz"),
			dir			= "Missions",
		},
	},		

LogBook =
	{
		{
			name		= _("IAF F-15I Raam"),
			type		= "IAF_F_15I",
		},
	},		

	binaries 	 =
	{
	'L39C',
	'F15',
	},
}
)
----------------------------------------------------------------------------------------
--mounting 3d model paths and texture paths 
mount_vfs_model_path    ("Bazar/World/Shapes")
--mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window

--dofile(current_mod_path..'/IAF_F_15I.lua')-- Dual / Strike Eagle ; Cockpit+ FM: F-15C
--local cfg_path = current_mod_path ..  "/FM/F15/config.lua"
local cfg_path = "Mods/aircraft/Flaming Cliffs/FM/F15/config.lua"
dofile(cfg_path)
F15FM[1] 				= self_ID
F15FM[2] 				= 'F15'
F15FM.config_path 		= cfg_path
F15FM.old 				= 6


------ F-15_I
F15FM_I = F15FM
dofile(current_mod_path.."/ViewsDual.lua")
make_view_settings('IAF_F_15I', ViewSettings, SnapViews)
-- F-15 cockpit
make_flyable('IAF_F_15I',current_mod_path..'/Cockpit/KneeboardRight/',F15FM_I, current_mod_path..'/comm.lua')--AFM


plugin_done()-- finish declaration , clear temporal data

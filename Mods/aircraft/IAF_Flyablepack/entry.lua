self_ID = "IAF_F-4E by Israeli Mod Team"
declare_plugin(self_ID,
{
image     	 = current_mod_path.."/Theme/icon.png",
installed 	 = true, -- if false that will be place holder , or advertising
dirName	  	 = current_mod_path,
displayName  = _("IAF_F-4E"),
developerName   =   "Preflight Mod Team - IAF.101~Schnix and IAF.101~Phantom",

version		 = "2.5.0 beta",
state		 = "installed",
info		 = _("Israeli F-4E with Phyton-3/4/5 and derby missiles and A/G weapons by IAF Mod Team from Preflight at http://www.preflight.us/"),
encyclopedia_path = current_mod_path..'/Encyclopedia',

InputProfiles =
{
    ["IAF_F_4E"] = current_mod_path .. '/Input/IAF_F_4E',
    ["IAF_F_4E_2000"] = current_mod_path .. '/Input/IAF_F_4E_2000',
    ["IAF_F_16C"] = current_mod_path .. '/Input/IAF_F_16C',
},

	binaries 	 =
	{

	},
})
----------------------------------------------------------------------------------------
--mounting 3d model paths and texture paths 
mount_vfs_model_path    ("Bazar/World/Shapes")
--mount_vfs_texture_path  (current_mod_path.."/Textures")
mount_vfs_model_path	(current_mod_path.."/Shapes")
mount_vfs_liveries_path (current_mod_path.."/Liveries")
mount_vfs_texture_path(current_mod_path ..  "/Theme/ME")--for simulator loading window
mount_vfs_texture_path  ("Mods/aircraft/su-25T/Cockpit/Textures/SU-25T-CPT-TEXTURES")

dofile(current_mod_path.."/Views.lua")

-- SU-25T cockpit
-- F-4E
make_view_settings('IAF_F_4E', ViewSettings, SnapViews)
make_flyable('IAF_F_4E',current_mod_path..'/Cockpit/',nil, current_mod_path..'/comm.lua')
--
-- IAF_F_4E_2000
make_view_settings('IAF_F_4E_2000', ViewSettings, SnapViews)
make_flyable('IAF_F_4E_2000',current_mod_path..'/Cockpit/',nil, current_mod_path..'/comm.lua')
--
-- F-16C
make_view_settings('IAF_F_16C', ViewSettings, SnapViews)
make_flyable('IAF_F_16C',current_mod_path..'/Cockpit/',nil, current_mod_path..'/comm.lua')
--
--
--
--
plugin_done()-- finish declaration , clear temporal data

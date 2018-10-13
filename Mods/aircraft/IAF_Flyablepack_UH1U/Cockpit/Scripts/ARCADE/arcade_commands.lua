dofile(LockOn_Options.script_path.."command_defs.lua")

Events = {"WeaponRearmFirstStep", "WeaponRearmComplete"}
			 
need_to_be_closed = true -- close lua state after initialization 
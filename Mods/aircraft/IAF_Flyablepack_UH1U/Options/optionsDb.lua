local DbOption = require('Options.DbOption')
local oms       = require('optionsModsScripts')
local Range = DbOption.Range

-- find the relative location of optionsDb.lua
function script_path() 
    -- remember to strip off the starting @ 
	local luafileloc = debug.getinfo(2, "S").source:sub(2)
	local ti, tj = string.find(luafileloc, "Options")
	local temploc = string.sub(luafileloc, 1, ti-1)
    return temploc
end 

-- find module path
local relativeloc = script_path()
modulelocation = lfs.currentdir().."\\"..relativeloc

local tblCPLocalList = oms.getTblCPLocalList(modulelocation)

return {
	weapTooltips 		= DbOption.new():setValue(true):checkbox(),
	autoPilot			= DbOption.new():setValue(true):checkbox(),
	UHTrimmingMethod	= DbOption.new():setValue(0):combo({DbOption.Item(_('DEFAULT')):Value(0),
															DbOption.Item(_('CENTRAL POSITION TRIMMER MODE')):Value(1),
															DbOption.Item(_('JOYSTICK WITHOUT SPRINGS AND FFB')):Value(2),}),
	UHRudderTrimmer		= DbOption.new():setValue(false):checkbox(),
	UH1HCockpitShake 	= DbOption.new():setValue(50):slider(Range(0, 100)),
    CPLocalList         = tblCPLocalList["Cockpit_UH-1H"],
}
 
dofile(LockOn_Options.common_script_path.."Fonts/symbols_locale.lua")

local IndicationTexturesPath = LockOn_Options.script_path.."../IndicationTextures/"

fontdescription = {}

general_xsize = 48 * 2
general_ysize = 72.0 * 2 --73.143 * 2
fontdescription["font_general"] = {
	texture    = IndicationTexturesPath.."font_general.tga",
	size      = {7, 7},
	resolution = {1024, 1024},
	default    = {general_xsize, general_ysize},
	chars	    = {
		 [1]   = {32, general_xsize, general_ysize}, -- [space]
		 [2]   = {42, general_xsize, general_ysize}, -- *
		 [3]   = {43, general_xsize, general_ysize}, -- +
		 [4]   = {45, general_xsize, general_ysize}, -- -
		 [5]   = {46, general_xsize, general_ysize}, -- .
		 [6]   = {47, general_xsize, general_ysize}, -- /
		 [7]   = {48, general_xsize, general_ysize}, -- 0
		 [8]   = {49, general_xsize, general_ysize}, -- 1
		 [9]   = {50, general_xsize, general_ysize}, -- 2
		 [10]  = {51, general_xsize, general_ysize}, -- 3
		 [11]  = {52, general_xsize, general_ysize}, -- 4
		 [12]  = {53, general_xsize, general_ysize}, -- 5
		 [13]  = {54, general_xsize, general_ysize}, -- 6
		 [14]  = {55, general_xsize, general_ysize}, -- 7
		 [15]  = {56, general_xsize, general_ysize}, -- 8
		 [16]  = {57, general_xsize, general_ysize}, -- 9
		 [17]  = {58, general_xsize, general_ysize}, -- :
		 [18]  = {65, general_xsize, general_ysize}, -- A
		 [19]  = {66, general_xsize, general_ysize}, -- B
		 [20]  = {67, general_xsize, general_ysize}, -- C
		 [21]  = {68, general_xsize, general_ysize}, -- D
		 [22]  = {69, general_xsize, general_ysize}, -- E
		 [23]  = {70, general_xsize, general_ysize}, -- F
		 [24]  = {71, general_xsize, general_ysize}, -- G
		 [25]  = {72, general_xsize, general_ysize}, -- H
		 [26]  = {73, general_xsize, general_ysize}, -- I
		 [27]  = {74, general_xsize, general_ysize}, -- J
		 [28]  = {75, general_xsize, general_ysize}, -- K
		 [29]  = {76, general_xsize, general_ysize}, -- L
		 [30]  = {77, general_xsize, general_ysize}, -- M
		 [31]  = {78, general_xsize, general_ysize}, -- N
		 [32]  = {79, general_xsize, general_ysize}, -- O
		 [33]  = {80, general_xsize, general_ysize}, -- P
		 [34]  = {81, general_xsize, general_ysize}, -- Q
		 [35]  = {82, general_xsize, general_ysize}, -- R
		 [36]  = {83, general_xsize, general_ysize}, -- S
		 [37]  = {84, general_xsize, general_ysize}, -- T
		 [38]  = {85, general_xsize, general_ysize}, -- U
		 [39]  = {86, general_xsize, general_ysize}, -- V
		 [40]  = {87, general_xsize, general_ysize}, -- W
		 [41]  = {88, general_xsize, general_ysize}, -- X
		 [42]  = {89, general_xsize, general_ysize}, -- Y
		 [43]  = {90, general_xsize, general_ysize}, -- Z
		 [44]  = {91, general_xsize, general_ysize}, -- [
		 [45]  = {93, general_xsize, general_ysize}, -- ]
		 [46]  = {62, general_xsize, general_ysize}, -- >
		 [47]  = {111, general_xsize, general_ysize}, -- o
		 [48]  = {94, general_xsize, general_ysize}, -- ^
		 [49]  = {37, general_xsize, general_ysize}} -- %
}

Sheet_xsize = 44 * 2
Sheet_ysize = 72.0 * 2 --73.143 * 2
fontdescription["font_Sheet"] = {
	texture    = IndicationTexturesPath.."font_sheet_UH1H.tga",
	size      = {7, 7},
	resolution = {1024, 1024},
	default    = {Sheet_xsize, Sheet_ysize},
	chars	    = {
		 [1]   = {32, Sheet_xsize, Sheet_ysize}, -- [space]
		 [2]   = {42, Sheet_xsize, Sheet_ysize}, -- *
		 [3]   = {43, Sheet_xsize, Sheet_ysize}, -- +
		 [4]   = {45, Sheet_xsize, Sheet_ysize}, -- -
		 [5]   = {46, Sheet_xsize, Sheet_ysize}, -- .
		 [6]   = {47, Sheet_xsize, Sheet_ysize}, -- /
		 [7]   = {48, Sheet_xsize, Sheet_ysize}, -- 0
		 [8]   = {49, Sheet_xsize, Sheet_ysize}, -- 1
		 [9]   = {50, Sheet_xsize, Sheet_ysize}, -- 2
		 [10]  = {51, Sheet_xsize, Sheet_ysize}, -- 3
		 [11]  = {52, Sheet_xsize, Sheet_ysize}, -- 4
		 [12]  = {53, Sheet_xsize, Sheet_ysize}, -- 5
		 [13]  = {54, Sheet_xsize, Sheet_ysize}, -- 6
		 [14]  = {55, Sheet_xsize, Sheet_ysize}, -- 7
		 [15]  = {56, Sheet_xsize, Sheet_ysize}, -- 8
		 [16]  = {57, Sheet_xsize, Sheet_ysize}, -- 9
		 [17]  = {58, Sheet_xsize, Sheet_ysize}, -- :
		 [18]  = {65, Sheet_xsize, Sheet_ysize}, -- A
		 [19]  = {66, Sheet_xsize, Sheet_ysize}, -- B
		 [20]  = {67, Sheet_xsize, Sheet_ysize}, -- C
		 [21]  = {68, Sheet_xsize, Sheet_ysize}, -- D
		 [22]  = {69, Sheet_xsize, Sheet_ysize}, -- E
		 [23]  = {70, Sheet_xsize, Sheet_ysize}, -- F
		 [24]  = {71, Sheet_xsize, Sheet_ysize}, -- G
		 [25]  = {72, Sheet_xsize, Sheet_ysize}, -- H
		 [26]  = {73, Sheet_xsize, Sheet_ysize}, -- I
		 [27]  = {74, Sheet_xsize, Sheet_ysize}, -- J
		 [28]  = {75, Sheet_xsize, Sheet_ysize}, -- K
		 [29]  = {76, Sheet_xsize, Sheet_ysize}, -- L
		 [30]  = {77, Sheet_xsize, Sheet_ysize}, -- M
		 [31]  = {78, Sheet_xsize, Sheet_ysize}, -- N
		 [32]  = {79, Sheet_xsize, Sheet_ysize}, -- O
		 [33]  = {80, Sheet_xsize, Sheet_ysize}, -- P
		 [34]  = {81, Sheet_xsize, Sheet_ysize}, -- Q
		 [35]  = {82, Sheet_xsize, Sheet_ysize}, -- R
		 [36]  = {83, Sheet_xsize, Sheet_ysize}, -- S
		 [37]  = {84, Sheet_xsize, Sheet_ysize}, -- T
		 [38]  = {85, Sheet_xsize, Sheet_ysize}, -- U
		 [39]  = {86, Sheet_xsize, Sheet_ysize}, -- V
		 [40]  = {87, Sheet_xsize, Sheet_ysize}, -- W
		 [41]  = {88, Sheet_xsize, Sheet_ysize}, -- X
		 [42]  = {89, Sheet_xsize, Sheet_ysize}, -- Y
		 [43]  = {90, Sheet_xsize, Sheet_ysize}, -- Z
		 [44]  = {91, Sheet_xsize, Sheet_ysize}, -- [
		 [45]  = {93, Sheet_xsize, Sheet_ysize}, -- ]
		 [46]  = {62, Sheet_xsize, Sheet_ysize}, -- >
		 [47]  = {111, Sheet_xsize, Sheet_ysize}, -- o
		 [48]  = {94, Sheet_xsize, Sheet_ysize}} -- ^
}
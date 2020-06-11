AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "P Con Traf Bar"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "AMBER",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	basic = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		WMult = 1,
		Sprite = "sprites/emv/tdm_grille_leds",
		Scale = .8,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -16.2, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[2] = { Vector( -11.6, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[3] = { Vector( -7, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[4] = { Vector( -2.4, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[5] = { Vector( 2.2, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[6] = { Vector( 6.8, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[7] = { Vector( 11.5, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },
	[8] = { Vector( 16.1, -175.9, 66.85 ),Angle( 0, 180, 0 ), "basic" },

}

COMPONENT.Sections = {
	["warn"] = {
		[1] = { {1,"_1"}, {2,"_1"}, {3,"_1"},{6,"_1"}, {7,"_1"}, {8,"_1"}, },
		[2] = { {4,"_1"}, {5,"_1"}, },
		[3] = { {1,"_1"}, {2,"_1"}, },
		[4] = { {2,"_1"}, {3,"_1"}, },
		[5] = { {3,"_1"}, {4,"_1"}, },
		[6] = { {4,"_1"}, {5,"_1"}, },
		[7] = { {5,"_1"}, {6,"_1"}, },
		[8] = { {6,"_1"}, {7,"_1"}, },
		[9] = { {7,"_1"}, {8,"_1"}, },
	},
	["div"] = {
		[1] = { {4, "_1"}, {5, "_1"} },
		[2] = { {3, "_1"}, {6, "_1"} },
		[3] = { {2, "_1"}, {7, "_1"} },
		[4] = { {1, "_1"}, {8, "_1"} },
	}
}

COMPONENT.Patterns = {
	["warn"] = {
		["cat"] = { 1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,
		3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0,
		8,0,8,0,7,0,7,0,6,0,6,0,5,0,5,0,4,0,4,0,3,0,3,0,
		3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0,
		8,0,8,0,7,0,7,0,6,0,6,0,5,0,5,0,4,0,4,0,3,0,3,0,

	},
	["left"] = {3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9},
	["right"] = {9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,3,3,3},
	
	["off"] = {},
	},
	["div"] = {
		["split"] = {1,1,1,2,2,2,3,3,3,4,4,4}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["basic"] = "code1", ["warn"] = "off"},
		M2 = { ["basic"] = "code2", ["warn"] = "off"},
		M3 = { ["basic"] = "code3", ["warn"] = "off" }
	},
	Auxiliary = {
		C = { ["warn"] = "cat" },
		L = { ["warn"] = "right"},
		R = { ["warn"] = "left"},
		D = { ["div"] = "split"}
	},
}

EMVU:AddAutoComponent( COMPONENT, name )
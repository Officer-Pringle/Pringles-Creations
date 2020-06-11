--[[ THIS FILE AND PHOTON ELS ON THIS ITEM WAS MADE BY PRINGLE PLEASE USE THE INCUDED FILE TO MAKE YOUR OWN BUT LEAVE CREDITS TO ME ]]

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

local name = "Westin LED Pushbar"

local COMPONENT = {}

COMPONENT.Model = "models/pringle/props/westin_pushbar/westin_explorer_wrap_ion.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	pb_ion = {
		AngleOffset = -90,
		W = 4.5,
		H = 4,
		WMult = 1,
		Sprite = "sprites/emv/whelen_ion",
		Scale = 1,
		EmitArray = {
			Vector( 0, 0, 0 ),
			Vector( 0, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -11.46, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10},
	[2] = { Vector( 12.7, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10},
	[3] = { Vector( -7.1, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10},
	[4] = { Vector( 8.04, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10},

}

COMPONENT.Sections = {
	["auto_pb"] = {
		[1] = { {1, "_1"}, {4, "_1"},},
		[2] = { {3, "_2"}, {2, "_2"} },
		[3] = { {1, "_1"}, {3, "_1"} },
		[4] = { {2, "_2"}, {4, "_2"} },

		[5] = { {1, "_1"}, {2, "_1"},},
		[6] = { {3, "_2"}, {4, "_2"} },
		
		[7] = { {3, "_1"},},
		[8] = { {4, "_2"} }

	},
	["cruise"] = {
		[1] = { {1, CW }, {2, CW },},
	}
}

COMPONENT.Patterns = {
	["auto_pb"] = {
		["code1"] = {3,3,3,0,3,3,3,0,4,4,4,0,4,4,4,0 },
		["code2"] = {1,1,0,1,1,0,2,2,0,2,2,0},
		["code3"] = {
			5,0,5,0,6,0,6,0,5,0,5,0,6,0,6,0,5,0,5,0,6,0,6,0,
			3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,
		},
		["cruise_fl"] = {8,8,8,8,8,8,7,7,7,7,7,7}
	},
	["cruise"] = {
		["cruise_st"] = {1},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_pb"] = "code1" },
		M2 = { ["auto_pb"] = "code2" },
		M3 = { ["auto_pb"] = "code3" }
	},
	Auxiliary = {
		C = { ["cruise"] = "cruise_st", ["auto_pb"] = "cruise_fl"}
	},
}

EMVU:AddAutoComponent( COMPONENT, name )
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


local name = "2010 ZL1 Tail Lights"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
}

COMPONENT.Meta = {
	left_left = {
		AngleOffset = -90,
		W = 10,
		H = 14,
		Sprite = "sprites/emv/left-left_light",
		Scale = 1.5,
		WMult = 1.25
	},
	left_right = {
		AngleOffset = -90,
		W = 8,
		H = 10,
		Sprite = "sprites/emv/left-right_light",
		Scale = 1.5,
		WMult = 1.25
	},
	right_left = {
		AngleOffset = -90,
		W = 8,
		H = 10,
		Sprite = "sprites/emv/right-left_light",
		Scale = 1.5,
		WMult = 1.25
	},
	right_right = {
		AngleOffset = -90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/right-right_light",
		Scale = 1.5,
		WMult = 1.25
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -34, -102, 44.5), 
		Angle( 0 , 160, 0), 
		"left_left" 
	},
	[2] = { 
		Vector( -23, -106, 43.5 ), 
		Angle( 0, 160, 0 ), 
		"left_right"  
	},
	

	[3] = { 
		Vector( 23, -105, 43 ), 
		Angle( 0, 195, 0), 
		"right_left" 
	},
	[4] = { 
		Vector( 33, -103, 44 ), 
		Angle( 1, 202, 0 ), 
		"right_right"
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" }, { 2, "_1" } },
		[2] = { { 3, "_2" }, { 4, "_2"} },
		[3] = { { 2, "_1"}, { 4, "_2"} },
		[4] = { { 1, "_1"}, {3, "_2"} }, 
		--
		[5] = { { 2, "_1"}, { 3, "_2" } },
		[6] = { { 1, "_1"}, { 4, "_2" } } 
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = { 1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,2,2,2,2,2,0,2,2,2,2,2,2,2,2,2,2,0},
		["code2"] = { 1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
		["code3"] = { 
		1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,
		3,3,0,3,3,0,4,4,0,4,4,0,3,3,0,3,3,0,4,4,0,4,4,0,3,3,0,3,3,0,4,4,0,4,4,0,
		6,6,0,6,6,0,5,5,0,5,5,0,6,6,0,6,6,0,5,5,0,5,5,0,6,6,0,6,6,0,5,5,0,5,5,0,


		},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_rear_taillights"] = "code1", },
		M2 = { ["auto_rear_taillights"] = "code2", },
		M3 = { ["auto_rear_taillights"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
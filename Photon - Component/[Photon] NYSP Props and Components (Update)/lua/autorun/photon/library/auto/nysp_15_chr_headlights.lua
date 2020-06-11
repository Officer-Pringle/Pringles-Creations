
-- Code By Officer Pringle
-- Sprites and Idea by Officer Storm
--
--
-- [ 3 Phases ]
--
--
--
--
--
--
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

local name = "NYSP 15 Charger Headlight"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	charger2016_headlight_left = {
		AngleOffset = -90,
		W = 30,
		H = 25,
		Sprite = "sprites/emv/16_chgr_left",
		WMult = 10,
		Scale = 1,
		SourceOnly = true
	},
	chrg16_hl_left_corner = {
		AngleOffset = -90,
		W = 33,
		H = 25,
		Sprite = "sprites/emv/2018_dodge_charger_headlight_left_cor",
		Scale = 1,
		WMult = 10,
		SourceOnly = true
	},
	chrg16_hl_right = {
		AngleOffset = -90,
		W = 30,
		H = 25.1,
		Sprite = "sprites/emv/2018_dodge_charger_headlight_right",
		Scale = 1,
		WMult = 10,
		SourceOnly = true
	},
	chrg16_hl_right_corner = {
		AngleOffset = -90,
		W = 33,
		H = 25.1,
		Sprite = "sprites/emv/2018_dodge_charger_headlight_right_cor",
		Scale = 1,
		WMult = 10,
		SourceOnly = true
	},
	chrg16_hl_left_cur = {
		AngleOffset = -90,
		W = 39,
		H = 26,
		Sprite = "sprites/emv/2018_dodge_charger_headlight_left_curve",
		WMult = 10,
		SourceOnly = true
	},
	chrg16_hl_right_cur = {
		AngleOffset = -90,
		W = 39,
		H = 25,
		Sprite = "sprites/emv/2018_dodge_charger_headlight_right_curve",
		WMult = 10,
		SourceOnly = true
	},
}

COMPONENT.Positions = {
	
	[1] = {
		Vector( 34, 106.5, 35.2 ), Angle( -04, -35, 0 ),
		"charger2016_headlight_left" 
	},
	[2] = { Vector( 34, 107.5, 35.2 ), Angle( -04, -48, 0 ), "chrg16_hl_left_corner" },
	[3] = { Vector( -34, 106.5, 37.3 ), Angle( 05, 32, 0 ), "chrg16_hl_right" },
	[4] = { Vector( -34, 107.55, 37.32 ), Angle( 03, 50, 0 ), "chrg16_hl_right_corner" },
	[5] = { Vector( 39.5, 101, 35.75 ), Angle( -04, -60, 0 ), "chrg16_hl_left_cur" },
	[6] = { Vector( -40.15, 99.78, 36.85 ), Angle( 04, 60, 0 ), "chrg16_hl_right_cur" },

	

}

COMPONENT.Sections = {
	["charger2016_wigwags"] = {
		[1] = { {1 , SW}, {2 , SW} , {5 , SW} },
		[2] = { {4 , CW}, {3 , CW} , {6 , CW} },
		[3] = { { 1, CW }, {2 , CW}, {3 , CW} },
		[4] = { {4 , CW}, {5 , CW} , {6 , CW} }
	},
}

COMPONENT.Patterns = {
	["charger2016_wigwags"] = {
		-- MAIN PHASE
		["code1"] = { 1,1,1,1,0,2,2,2,2,0},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2},
		["code3"] = { 1,1,1,1,0,2,2,2,2,0,
		1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,
		1,1,0,2,2,0,1,1,0,2,2,0,
		1,0,2,0,1,0,2,0,1,0,2,
		1,2,1,2,1,2,1,2,1,2,1},

		["pull"] = { 1,1,1,1,1,1,1,2,2,2,2,2,2,2},
		
		
		-- PHASE A
		["code1A"] = { 3,3,0,3,3,0,4,4,0,4,4 },
		["code2A"] = { 3,3,0,3,3,0,4,4,0,4,4,0,3,3,0,3,3,0,4,4,0,4,4,0,3,3,0,3,3,0,4,4,0,4,4,0,1,1,1,1,2,2,2,2,1,1,1,1,2,2,2,2,0,1,1,1,1,2,2,2,2,1,1,1,1,2,2,2,2,0,1,1,1,1,2,2,2,2,1,1,1,1,2,2,2,2,0,1,1,1,1,2,2,2,2,1,1,1,1,2,2,2,2,0},
		["code3A"] = { 3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,},

		-- PHASE B
		["code1B"] = {1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},
		["code2B"] = {1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0},
		["code3B"] = {
		1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,
		1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2,1,0,1,0,2,0,2}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["charger2016_wigwags"] = "code1" },
		M2 = { ["charger2016_wigwags"] = "code2" },
		M3 = { ["charger2016_wigwags"] = "code3" },
		P = { ["charger2016_wigwags"] = "pull" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
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


local name = "NYSP Inner Tail 15 Charger"
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
	rear_left = {
		AngleOffset = -90,
		W = 16,
		H = 6.5,
		Sprite = "sprites/emv/dod_in_left",
		Scale = 1.5,
		WMult = 1.25,
	},
	rear_right = {
		AngleOffset = -90,
		W = 13,
		H = 6.5,
		Sprite = "sprites/emv/dod_in_right_rear",
		Scale = 1.5,
		WMult = 1.25,
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -33, -117, 46.5), 
		Angle( 1, 150, 5.5), 
		"rear_left", 0 , 2
	},
	[2] = { 
		Vector( 33, -117, 46.5 ), 
		Angle( 0, 210, 0 ), 
		"rear_right", 0, 2 
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" },},
		[2] = { { 2,"_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
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
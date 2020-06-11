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

local name = "12 ZL1 Fog Lights"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	fogflash = {
		AngleOffset = -90,
		W = 4.5,
		H = 4.5,
		WMult = .9,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = {
		Vector( -37.5, 102.3, 22.6),
		Angle( 0, 3, -5 ), 
		"fogflash" 
	},
	[2] = 
		{ 
		Vector( 37.5, 102.3, 22.6 ), 
		Angle( 0, 3, -5 ), 
		"fogflash" 
	},

}

COMPONENT.Sections = {
	["auto_fogflash"] = {
		[1] = {{1,"_1"},},
		[2] = {{2,"_2"},},
		[3] = {{1,"_1"},{2,"_2"},},
	},
}

COMPONENT.Patterns = {
	["auto_fogflash"] = {
		["code1"] = { 3 },
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2 },
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fogflash"] = "code1" },
		M2 = { ["auto_fogflash"] = "code2" },
		M3 = { ["auto_fogflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
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

local name = "NYSP Mirror Light"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_linz6.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 5.1,
		H = 5.5,
		WMult = 1.5,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1.2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	
}

COMPONENT.Positions = {

	[1] = { Vector( -.9, 0, 0 ), Angle( 0, 90, 0 ), "auto_ion_left", 0, 5 },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1" }, }
	},
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code1A"] = {1,1,1,1,0,0,0,0},
		["code1B"] = {0,0,0,0,1,1,1,1,},
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code3A"] = { 1, 0, 1, 0, 0, 0 },
		["code3B"] = { 0, 0, 0, 1, 0, 1 },

	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_ion"] = "code1", },
		M2 = { ["auto_ion"] = "code2", },
		M3 = { ["auto_ion"] = "code3", },
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
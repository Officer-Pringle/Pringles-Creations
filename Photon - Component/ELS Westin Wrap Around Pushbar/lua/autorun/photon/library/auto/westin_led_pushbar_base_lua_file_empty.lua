--[[ Please Feel Free to Edit this file, and reupload this one for your own patterns

--- Base File Created by Pringle
--- Edited by :______________

]]

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

local name = "" -- Unique Name

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
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -11.46, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10 },
	[2] = { Vector( 12.7, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion",1, 10 },
	[3] = { Vector( -7.1, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion", 1, 10 },
	[4] = { Vector( 8.04, -7.42, 6.2 ),Angle( 0, 0, 0 ), "pb_ion" ,1 , 10},

}

COMPONENT.Sections = {
	["auto_pb"] = {
		[1] = { {1, "_1"},},
	},
}

COMPONENT.Patterns = {
	["auto_pb"] = {
		["code1"] = { 1 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_pb"] = "code1" },
		M2 = { ["auto_pb"] = "code2" },
		M3 = { ["auto_pb"] = "code3" }
	},
	Auxiliary = {
		C = {},
	},
}

EMVU:AddAutoComponent( COMPONENT, name )
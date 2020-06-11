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

local name = "Contender Lightbar"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE"
}

COMPONENT.Meta = {
	lightbar_main = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		WMult = 1,
		Sprite = "sprites/emv/freedom_main_dual_ft",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -3, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[2] = { Vector( 3, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[3] = { Vector( -8.9, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[4] = { Vector( 8.9, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[5] = { Vector( -14.8, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[6] = { Vector( 14.8, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[7] = { Vector( -20.7, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[8] = { Vector( 20.7, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[9] = { Vector( -26.5, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[10] = { Vector( 26.5, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[11] = { Vector( -32.2, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[12] = { Vector( 32.2, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[13] = { Vector( -38.5, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },
	[14] = { Vector( 38.5, 181, 112.7 ),Angle( 0, 0, 0 ), "lightbar_main" },

}

COMPONENT.Sections = {
	["basic"] = {
		[1] = { {1,"_1"},{2,"_1"}, {3,"_1"}, {4,"_1"},{5,"_1"},{6,"_1"},{7,"_1"},{8,"_1"},{9,"_1"},{10,"_1"},{11,"_1"},{12,"_1"},{13,"_1"},{14,"_1"},},
		[2] = {{1,"_1"}, {4,"_1"},{6,"_1"}, {11,"_1"},{14,"_1"},},
		[3] = {{2,"_1"},{3,"_1"},{5,"_1"},{6,"_1"},{8,"_1"},{12,"_1"},{13,"_1"},},
		[4] = {{1,"_1"}, {3,"_1"},{5,"_1"}, {7,"_1"},{9,"_1"},{11,"_1"},{13,"_1"},},
		[5] = {{2,"_1"}, {4,"_1"},{6,"_1"}, {8,"_1"},{10,"_1"},{12,"_1"},{14,"_1"},},
		[6] = { { 14,"_1"},{10 ,"_1"}, { 6,"_1"}, {2 ,"_1"},{3 ,"_1"},{ 7,"_1"},{ 11,"_1"},},
		[7] = { {12 ,"_1"},{ 8,"_1"},{4 ,"_1"},{ 1,"_1"},{ 5,"_1"},{ 9,"_1"},{ 13,"_1"},}
		
	},
}

COMPONENT.Patterns = {
	["basic"] = {
		["code1"] = { 1 },
		["code2"] = {2,2,3,3,5,5,4,4,2,2,3,3,6,6,5,5,7,4,5,7,5,2,3,5,2,3,5,4,7,5,6,3,2,5,6,7,4,5,2,3,6,5,2,5,4,7,5,2,3,5,7,4,5,2,3,5}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["basic"] = "code2" },
		M2 = { ["basic"] = "code2" },
		M3 = { ["basic"] = "code2" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
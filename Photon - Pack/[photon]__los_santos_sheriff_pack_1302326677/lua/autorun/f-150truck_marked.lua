AddCSLuaFile()

local VehicleName = "F-150"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 3
EMV.Color = Color(255,255,255)
  ---CUSTOM COLORS---
local B = "BLUE"
local R = "RED"
local A = "AMBER"
local W = "WHITE"
local G = "GREEN"
local DR = "D_RED"
local CW = "C_WHITE"
local SW = "S_WHITE"
--------------------
local PA = "A"
local PB = "B"
local PCA = "CA"
local PTT = "TT"


EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- Extra Equipment
	{ 2, 1 }, -- Lightbar
	{ 3, 0 }, -- Religious Extra
	{ 4, 0 }, -- clamped1
	{ 5, 0 }, -- clamped2
	{ 6, 0 }, -- clamped3
	{ 7, 0 }, -- clamped4
	{ 8, 0 }, -- clamped5
	{ 9, 0 }, -- clamped6
	{ 10, 0 }, -- clamped7
}

EMV.Props = {
	{
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 4.7,
		Pos = Vector(-3, -28, 38),
		Ang = Angle( 0, 195, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/afgn_props/rambar_4/afgn_props_rambar_4.mdl",
		Scale = 7,
		Pos = Vector(-20, 105, 22),
		Ang = Angle( 0, 14, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-35, 43, 70),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = 1,
		Pos = Vector( 0, 0, 90 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( -30, 105, 44 ),
		Ang = Angle( -5, 35, 280),
		Phase = PA
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( 30, 105, 44 ),
		Ang = Angle( -5, -35, 280),
		Phase = PB
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -34, -38, 70 ),
		Ang = Angle( 90, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 34, -38, 70 ),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion",
		Scale = 1.2,
		Pos = Vector( -33, -133.4, 28),
		Ang = Angle( 90, 0, 180),
		Color1 = R, 
		Phase = PA,
	},
	{
		ID = "Whelen Ion",
		Scale = 1.2,
		Pos = Vector( 33, -133.4, 28),
		Ang = Angle( 90, 0, 180),
		Color1 = B, 
		Phase = PB,
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(6, -1.6, 5),
		Ang = Angle(0, 0,0),
	},
	
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CAUTION", Stage = "CAT", Components = {}, Disconnect = {} },
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "SPOT",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 65 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["alley"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 500,
	},
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 135,
		Distance = 800,
	},
	["flood"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 135,
		Distance = 1400,
	},
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/perrynsvehicles/ford_f150/ford_f150.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/perryn/ford_f150.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

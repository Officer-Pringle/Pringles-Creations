AddCSLuaFile()

local VehicleName = "2015 Tahoe Marked"

local EMV = {}

EMV.Siren = 35
EMV.Skin = 2
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
	{ 1, 0 }, -- Windows
	{ 2, 0 }, -- Roofrack
	{ 3, 1 }, -- Plate
	{ 4, 0 }, -- clamped1
	{ 5, 0 }, -- clamped2
	{ 6, 0 }, -- clamped3
	{ 7, 0 }, -- clamped4
	{ 8, 0 }, -- clamped5
	{ 9, 0 }, -- clamped6
}

EMV.Props = {
	{	
		Model = "models/afgn_props/rambar_4/afgn_props_rambar_4.mdl",
		Scale = 7.5,
		Pos = Vector(-20, 110, 23),
		Ang = Angle( 0, 14, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color = Color(150,150,150)
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-39, 40, 73),
		Ang = Angle( 5, 115, -15),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
    },
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = 1.1,
		Pos = Vector( 0, -10, 93),
		Ang = Angle( 2, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1.2,
		Pos = Vector( 9, -120, 68.5 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1.2,
		Pos = Vector( -9, -120, 68.5 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -37, -97, 67.5 ),
		Ang = Angle( 180, 0, 0)
	},
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 37, -97, 67.5 ),
		Ang = Angle( 180, 180, 0)
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 10, 121, 47.2 ),
		Ang = Angle( -2, -5.1, 0),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -10, 121, 47.2 ),
		Ang = Angle( 2, 6.1, 0),
		Color1 = R,
		Color2 = B
	},

	--
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(-4.2, -6.4, 12.5),
		Ang = Angle(0, -5, 0),
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
			Name = "TKDN",
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
		{
			Name = "FULL",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Lights = {
				{ Vector( 0, 25, 80 ), Angle( 10, 90, 0 ), "flood" },
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
	Model = "models/smcars/2015_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/smtahoe_15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
AddCSLuaFile()

local VehicleName = "2017 Fire Chief Explorer (Hub)"

local EMV = {}

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

EMV.Siren = 27

EMV.Skin = "pringles/skins/fire"
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Fog Lights
	{ 2, 0 }, -- clamped1
	{ 3, 0 }, -- clamped2
	{ 4, 0 }, -- clamped3
	{ 5, 0 }, -- clamped4
	{ 6, 0 }, -- clamped5
	{ 7, 0 }, -- clamped6
	{ 8, 0 }, -- clamped7
	{ 9, 0 }, -- clamped8
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.5,
		Pos = Vector(0, 116, 20),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(34, 105, 37.5),
		Ang = Angle( 0, 90, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[3] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(-36, 104, 36.5),
		Ang = Angle( 0, 180, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[4] = {
		Model = "models/supermighty/photon/chp_spotlight_left_up.mdl",
		Scale = .9,
		Pos = Vector( -42, 44, 66.4 ),
		Ang = Angle( 0, -90, 0),
	},
	[5] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 40.7, 41.2, 64 ),
		Ang = Angle( 0, -90, 0),
	},
	[6] = {
		Model = "models/tdmcars/emergency/equipment/dynamax_siren.mdl",
		Scale = 1.7,
		Pos = Vector(0, 118, 39.6),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Code 3 RX2700 Red",
		Scale = 1.02,
		Pos = Vector( 0, -15, 89.5 ),
		Ang = Angle( 2, 90, 0 )
	},
	[2] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.1,
		Pos = Vector( 35, -90, 67 ),
		Ang = Angle( 180, 180, 0),
		Color1 = R,
		Color2 = R
	},
	[3] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.1,
		Pos = Vector( -35, -90, 67 ),
		Ang = Angle( 180, 0, 0),
		Color1 = R,
		Color2 = R
	},
	[4] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -15, -116, 68 ),
		Ang = Angle( 180, 85, 0),
		Color1 = R,
		Color2 = R
	},
	[5] = {
		ID = "Pringles Traffic Bar",
		Scale = .70,
		Pos = Vector( 0, -105, 78 ),
		Ang = Angle( 0, 270, 0),

	},
	[6] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 0, 35, 61 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[7] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 20, 20, 74 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[8] = {
		ID = "FPIU17 Front Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R
	},
	[9] = {
		ID = "FPIU17 Reverse Hideaways",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R
	},
	[10] = {
		ID = "FPIU17 Fog Lamps",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
	},
	[11] = {
		ID = "FPIU17 Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
	},
	[12] = {
		ID = "FPIU17 Mirror Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R
	},
	[13] = {
		ID = "Spotlight Round",
		Scale = .95,
		Pos = Vector( -8.5, 7.5, 9.5),
		Ang = Angle( 0, -5, 0 )
	},
}

EMV.Selections = {

	{
		Name = "Preset Configs",
		Options = {
			{ Name = "Marked", Auto = {1,2,3,5,8,9,10,11,12,13}, Props = {2,3,4,5} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "On", Auto = {}, Props = {6,1} },
		}
	}
}

EMV.Sequences = {
	Sequences = {
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
			Stage = "S",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "alley-left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( -10, -10, 70 ), Angle( 20, 180, 0 ), "alley" },
			},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Icon = "alley-right",
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 10, -10, 70 ), Angle( 20, 0, 0 ), "alley" },
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
			Lights = {
				{ Vector( 0, 25, 90 ), Angle( 10, 90, 0 ), "flood" },
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
	Category = "Fire Chief Vehicles",
	Author = "Officer Pringle",
	Model = "models/smcars/2017_ford_explorer_utility_hubcaps.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/smc_fordexplorer16.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

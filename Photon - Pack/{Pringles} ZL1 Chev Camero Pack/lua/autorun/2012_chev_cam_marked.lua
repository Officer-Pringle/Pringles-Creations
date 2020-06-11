AddCSLuaFile()

local VehicleName = "Marked Chev Camero ZL1"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 15
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
	{ 0, 0 }, -- Chevrolet
	{ 1, 0 }, -- Camaro
	{ 2, 0 }, -- ZL1
	{ 3, 0 }, -- 
	{ 4, 0 }, -- front bumper
	{ 5, 0 }, -- front lights
	{ 6, 0 }, -- wing
	{ 7, 0 }, -- wheel
}

EMV.Props = {
	[1] = {
		Model = "models/supermighty/chp/chp_spotlight_left_down.mdl",
		Scale = .8,
		Pos = Vector(-36, 34, 52),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/supermighty/chp/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector(36, 34, 52),
		Ang = Angle( 0, -80, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.02,
		Pos = Vector( 0, -15, 71 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = B
	},
	[2] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.02,
		Pos = Vector( 0, -15, 71 ),
		Ang = Angle( 0, 90, 0 ),
	},

	[3] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -35, -38, 52.5 ),
		Ang = Angle( 15, 95, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 35, -38, 52.5 ),
		Ang = Angle( -15, -95, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-----
	[5] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -35, -38, 52.5 ),
		Ang = Angle( 15, 95, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[6] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 35, -38, 52.5 ),
		Ang = Angle( -15, -95, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},


	[7] = {
		ID = "12 ZL1 Fog Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[8] = {
		ID = "2010 ZL1 Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[9] = {
		ID = "12 ZL1 Fog Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
}

EMV.Selections = {

	{
		Name = "Color Options",
		Options = {
			{ Name = "Red/Blue", Auto = {1,3,4,7,8}, Props = {1,2} },
			{ Name = "Blue", Auto = {2,5,6,8,9}, Props = {1,2} },
		}
	},
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
	Category = "Pringles - Emergency",
	Author = "Officer Pringle",
	Model = "models/tdmcars/chev_camzl1.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/che_camarozl1.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
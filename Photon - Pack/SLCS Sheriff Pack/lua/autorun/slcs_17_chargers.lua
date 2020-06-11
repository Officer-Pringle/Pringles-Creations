AddCSLuaFile()

local VehicleName = "SLCS 2017 Dodge Charger (Hubs)"

local EMV = {}

EMV.Siren = "STLAWRENCE"
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
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
	{ 5, 0 }, -- clamped5
	{ 6, 0 }, -- clamped6
}
EMV.Props = {
	[1] = {
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector( .8, .9, .8 ),
		Pos = Vector(0, 121, 26),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(31, 112, 30),
		Ang = Angle( 2, 90, 0),
		Material = "models/fullwhite",
		Color = Color(255,255,255),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[3] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(-35, 110, 30),
		Ang = Angle( -2, 178, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[4] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector( 36.5, 35, 59 ),
		Ang = Angle( 50, -90, -60),
	},
	[5] = {
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = .55,
		Pos = Vector(0, -25, 44),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
	},
	[6] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .35,
		Pos = Vector(5, 15, 35),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(2, 10, 43),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 54),
		Ang = Angle( 5, -5, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}
EMV.Auto = {
	[1] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .89,
		Pos = Vector( 0, -15, 75.74 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -10, 122.5, 33.2),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	[3] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 10, 122.5, 33.2),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	[4] = {
		ID = "DOJ Interior Lightbar 4",
		Scale = 1.05,
		Pos = Vector( 0, -86, 56.5 ),
		Ang = Angle( -2.5, 270, 0),
		Color1 = R,
		Color2 = B
	},
	[5] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( -37, -55, 56 ),
        Ang = Angle( 0, -90, 70 )
    },
    [6] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( 37, -55, 56 ),
        Ang = Angle( 0, 90, 70 )
    },
   	[7] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -43, 44, 12),
		Ang = Angle( 0, 93, -15 ),
		Color1 = R,
		Color2 = B
	},
	[8] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -43.5, -48, 13),
		Ang = Angle( 0, 87, -15 ),
		Color1 = B,
		Color2 = R
	},
	[9] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 43, 44, 12),
		Ang = Angle( 0, -93, -10 ),
		Color1 = R,
		Color2 = B
	},
	[10] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 43.5, -48, 13),
		Ang = Angle( 0, -87, -10 ),
		Color1 = B,
		Color2 = R
	},
	[11] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 0, 45, 54.5),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[12] = {
		ID = "Whelen Legacy",
		Scale = .98,
		Pos = Vector( 0, -17, 74.5),
		Ang = Angle( 0, 90, 0 )
	},
	[13] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( 18, 114, 34.5),
		Ang = Angle( -10, -105, 0 ),
		Color1 = B,
		Phase  = PA
	},
	[14] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( -18, 114, 34.5),
		Ang = Angle( -10, -75, 0 ),
		Color1 = R,
		Phase = PB
	},
	[15] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( 12, 115.5, 34.5),
		Ang = Angle( -10, -100, 0 ),
		Color1 = R,
	},
	[16] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( -12, 115.5, 34.5),
		Ang = Angle( -10, -80, 0 ),
		Color1 = B,
	},
	--------------------
	[17] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.8, 37, 11),
		Ang = Angle( 0, 1, -1 ),
		Color1 = R,
		Color2 = B
	},
	[18] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.5, 9.2, 11.4),
		Ang = Angle( 0, 0, -1 ),
		Color1 = R,
		Color2 = B
	},
	[19] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.5, -18.5, 11.75),
		Ang = Angle( -1, -.5, -.5 ),
		Color1 = R,
		Color2 = B
	},
	[20] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.9, -40, 11.9),
		Ang = Angle( -2, -3.5, 0 ),
		Color1 = R,
		Color2 = B
	},
	--------------------
	[21] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.8, 37, 11),
		Ang = Angle( 0, -181, 1 ),
		Color1 = R,
		Color2 = B
	},
	[22] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.5, 9.2, 11.4),
		Ang = Angle( 0, -180, 1 ),
		Color1 = R,
		Color2 = B
	},
	[23] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.5, -18.5, 11.75),
		Ang = Angle( -1, 180.5, .5 ),
		Color1 = R,
		Color2 = B
	},
	[24] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.9, -40, 11.9),
		Ang = Angle( -2, 183.5, 0 ),
		Color1 = R,
		Color2 = B
	},
	[25] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -18, -59, 67.4),
		Ang = Angle( 0, -90, 0 )
	},
	[26] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 18, -59, 67.4),
		Ang = Angle( 0, -90, 0 )
	},
	[27] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 17.5, 66),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
	},
	[28] = {
		ID = "18 Charger Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Phase = PA
	},
	[29] = {
		ID = "NYSP 15 Charger Headlight",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	[30] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 14.7, 30.8),
		Ang = Angle( 0, 0, 0 )
	},
	[31] = {
		ID = "Spotlight Round Prop",
		Scale = .8,
		Pos = Vector( -37.5, 33, 60),
		Ang = Angle( 0, -100, 0 )
	},
}

EMV.Selections = {
	
	{
		Name = "Lightbar",
		Options = {
			{ Name = "Valor", Auto = {1}, Props = {} },
			{ Name = "Legacy", Auto = {12}, Props = {} },
			{ Name = "None", Auto = {25,26,27}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "ON", Auto = {2,3}, Props = {1,2,3} },
			{ Name = "None", Auto = {13,14,15,16}, Props = {}},
		}
	},

	{
		Name = "Skirt Lighting",
		Options = {
			{ Name = "None"},
			{ Name = "Strips", Auto = {17,18,19,20,21,22,23,24}, Props = {} },
			{ Name = "Ions", Auto = {7,8,9,10}, Props = {} },
		}
	},

	{
		Name = "CRPG",
		Options = {
			{ Name = "on", Auto = {4,5,6,11,28,29,30,31}, Props = {4,5,6,7,8} },
			{ Name = "None", Auto = {4,5,6,11,28,29,30,31}, Props = {4,5,6,7,8}  }
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
		{ Name = "Cruise", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( -50, 25, 70 ), Angle( 20, 80, 0 ), "spotlight" },
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
	["spotlight"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 70,
		Distance = 900,
	},
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
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/smcars/2015_dodge_charger_pursuit3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/dodge_charger15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end


--[[-------------------------------------------------------------------------
START VEHICLE
---------------------------------------------------------------------------]]

AddCSLuaFile()

local VehicleName = "SLCS 2017 Dodge Charger (Steelies)"

local EMV = {}

EMV.Siren = "STLAWRENCE"
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
	{ 1, 0 }, -- Wheels
	{ 2, 0 }, -- clamped1
	{ 3, 0 }, -- clamped2
	{ 4, 0 }, -- clamped3
	{ 5, 0 }, -- clamped4
	{ 6, 0 }, -- clamped5
}
EMV.Props = {
	[1] = {
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector( .8, .9, .8 ),
		Pos = Vector(0, 121, 26),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(31, 112, 30),
		Ang = Angle( 2, 90, 0),
		Material = "models/fullwhite",
		Color = Color(255,255,255),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[3] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(-35, 110, 30),
		Ang = Angle( -2, 178, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[4] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector( 36.5, 35, 59 ),
		Ang = Angle( 50, -90, -60),
	},
	[5] = {
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = .55,
		Pos = Vector(0, -25, 44),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
	},
	[6] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .35,
		Pos = Vector(5, 15, 35),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(2, 10, 43),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 54),
		Ang = Angle( 5, -5, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}
EMV.Auto = {
	[1] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .89,
		Pos = Vector( 0, -15, 75.74 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -10, 122.5, 33.2),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	[3] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 10, 122.5, 33.2),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	[4] = {
		ID = "DOJ Interior Lightbar 4",
		Scale = 1.05,
		Pos = Vector( 0, -86, 56.5 ),
		Ang = Angle( -2.5, 270, 0),
		Color1 = R,
		Color2 = B
	},
	[5] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( -37, -55, 56 ),
        Ang = Angle( 0, -90, 70 )
    },
    [6] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( 37, -55, 56 ),
        Ang = Angle( 0, 90, 70 )
    },
   	[7] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -43, 44, 12),
		Ang = Angle( 0, 93, -15 ),
		Color1 = R,
		Color2 = B
	},
	[8] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -43.5, -48, 13),
		Ang = Angle( 0, 87, -15 ),
		Color1 = B,
		Color2 = R
	},
	[9] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 43, 44, 12),
		Ang = Angle( 0, -93, -10 ),
		Color1 = R,
		Color2 = B
	},
	[10] =  {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 43.5, -48, 13),
		Ang = Angle( 0, -87, -10 ),
		Color1 = B,
		Color2 = R
	},
	[11] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 0, 45, 54.5),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[12] = {
		ID = "Whelen Legacy",
		Scale = .98,
		Pos = Vector( 0, -17, 74.5),
		Ang = Angle( 0, 90, 0 )
	},
	[13] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( 18, 114, 34.5),
		Ang = Angle( -10, -105, 0 ),
		Color1 = B,
		Phase  = PA
	},
	[14] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( -18, 114, 34.5),
		Ang = Angle( -10, -75, 0 ),
		Color1 = R,
		Phase = PB
	},
	[15] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( 12, 115.5, 34.5),
		Ang = Angle( -10, -100, 0 ),
		Color1 = R,
	},
	[16] = {
		ID = "Whelen Tir3",
		Scale = .5,
		Pos = Vector( -12, 115.5, 34.5),
		Ang = Angle( -10, -80, 0 ),
		Color1 = B,
	},
	--------------------
	[17] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.8, 37, 11),
		Ang = Angle( 0, 1, -1 ),
		Color1 = R,
		Color2 = B
	},
	[18] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.5, 9.2, 11.4),
		Ang = Angle( 0, 0, -1 ),
		Color1 = R,
		Color2 = B
	},
	[19] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.5, -18.5, 11.75),
		Ang = Angle( -1, -.5, -.5 ),
		Color1 = R,
		Color2 = B
	},
	[20] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( -41.9, -40, 11.9),
		Ang = Angle( -2, -3.5, 0 ),
		Color1 = R,
		Color2 = B
	},
	--------------------
	[21] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.8, 37, 11),
		Ang = Angle( 0, -181, 1 ),
		Color1 = R,
		Color2 = B
	},
	[22] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.5, 9.2, 11.4),
		Ang = Angle( 0, -180, 1 ),
		Color1 = R,
		Color2 = B
	},
	[23] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.5, -18.5, 11.75),
		Ang = Angle( -1, 180.5, .5 ),
		Color1 = R,
		Color2 = B
	},
	[24] = {
		ID = "Pringles Skirt Lights Red",
		Scale = 1.5,
		Pos = Vector( 41.9, -40, 11.9),
		Ang = Angle( -2, 183.5, 0 ),
		Color1 = R,
		Color2 = B
	},
	[25] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -18, -59, 67.4),
		Ang = Angle( 0, -90, 0 )
	},
	[26] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 18, -59, 67.4),
		Ang = Angle( 0, -90, 0 )
	},
	[27] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 17.5, 66),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
	},
	[28] = {
		ID = "18 Charger Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Phase = PA
	},
	[29] = {
		ID = "NYSP 15 Charger Headlight",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	[30] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 14.7, 30.8),
		Ang = Angle( 0, 0, 0 )
	},
	[31] = {
		ID = "Spotlight Round Prop",
		Scale = .8,
		Pos = Vector( -37.5, 33, 60),
		Ang = Angle( 0, -100, 0 )
	},
}

EMV.Selections = {
	
	{
		Name = "Lightbar",
		Options = {
			{ Name = "Valor", Auto = {1}, Props = {} },
			{ Name = "Legacy", Auto = {12}, Props = {} },
			{ Name = "None", Auto = {25,26,27}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "ON", Auto = {2,3}, Props = {1,2,3} },
			{ Name = "None", Auto = {13,14,15,16}, Props = {}},
		}
	},

	{
		Name = "Skirt Lighting",
		Options = {
			{ Name = "None"},
			{ Name = "Strips", Auto = {17,18,19,20,21,22,23,24}, Props = {} },
			{ Name = "Ions", Auto = {7,8,9,10}, Props = {} },
		}
	},

	{
		Name = "CRPG",
		Options = {
			{ Name = "on", Auto = {4,5,6,11,28,29,30,31}, Props = {4,5,6,7,8} },
			{ Name = "None", Auto = {4,5,6,11,28,29,30,31}, Props = {4,5,6,7,8}  }
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
		{ Name = "Cruise", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( -50, 25, 70 ), Angle( 20, 80, 0 ), "spotlight" },
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
	["spotlight"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 70,
		Distance = 900,
	},
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
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/smcars/2015_dodge_charger_pursuit.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/dodge_charger15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

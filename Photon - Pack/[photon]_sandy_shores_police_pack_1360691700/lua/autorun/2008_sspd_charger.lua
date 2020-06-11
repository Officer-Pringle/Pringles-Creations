AddCSLuaFile()

local VehicleName = "2008 SSPD Dodge Charger"
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
local EMV = {}

EMV.Siren = 45
EMV.Skin = 6
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2006
	{ 3, 0 }, -- Police Package
	{ 4, 0 }, -- front bumper
	{ 5, 0 }, -- rear bumper
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- hood
	{ 8, 0 }, -- wing
	{ 9, 1 }, -- wheels
	{ 10, 4 }, -- [EM] Push bar
	{ 11, 2 }, -- [EM] Grille
	{ 12, 1 }, -- [EM] Spotlight
	{ 13, 1 }, -- [EM] Mirrors
	{ 14, 1 }, -- [EM] Windshield lower
	{ 15, 2 }, -- [EM] Windshield upper
	{ 16, 1 }, -- [EM] Sides
	{ 17, 7 }, -- [EM] Roof light bars
	{ 18, 1 }, -- [EM] Rear side windows
	{ 19, 0 }, -- [EM] Rear window upper lights
	{ 20, 0 }, -- [EM] Rear window lower lights
	{ 21, 3 }, -- [EM] Antennas
	{ 22, 2 }, -- [EM] Rear plate leds
	{ 23, 3 }, -- [EM] Console Unit
	{ 24, 0 }, -- [EM] Prisoner Cage
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/rambar_3/afgn_props_rambar_3.mdl",
		Scale = 9.5,
		Pos = Vector(-22, 56, 10),
		Ang = Angle( 0, 17, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.3,
		Pos = Vector(0, 122, 14),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-35, 33, 58),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[4] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .65,
		Pos = Vector(-22, -103, 56.7),
		Ang = Angle( 7, 230, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[5] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .65,
		Pos = Vector(22, -103, 56.7),
		Ang = Angle( 6, -40, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
}

EMV.Auto = {
 	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.02,
		Pos = Vector( 0, -10, 75 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 125, 29 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 125, 29 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	[4] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 123, 32 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[5] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 123, 32 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	[6] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -43, 54.5 ),
		Ang = Angle( 20, 99, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -43, 54.5 ),
		Ang = Angle( 25, 99, 180),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 10, -78, 58.5 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[9] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -78, 58.5 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[10] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .85,
		Pos = Vector( 0, -49.5, 66 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[11] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 25, 64.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B
	},
	[12] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 50, 52 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},



	[13] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.1,
		Pos = Vector(14, -14, -5.5),
		Ang = Angle( -5, 0, 0),
	},
	[14] = {
		ID = "08 Charger Fog-Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = CW,
		Color2 = CW
	},
	[15] = {
		ID = "08 Charger Tail-Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},

}

EMV.Selections = {

	{
		Name = "Preset Configs.",
		Options = {
			{ Name = "Marked", Auto = {1,6,7,8,9,14,15}, Props = {} },
			{ Name = "Slicktop", Auto = {6,7,8,9,10,11,12,14,15}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap-Around", Auto = {2,3}, Props = {1} },
			{ Name = "Sentina", Auto = {4,5}, Props = {2} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "on", Auto = {13}, Props = {3} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "ON", Auto = {}, Props = {4,5} },
			{ Name = "None", Auto = {}, Props = {} },
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
	Category = "Sandy Shores Police",
	Author = "Officer Pringle",
	Model = "models/tdmcars/emergency/chargersrt8.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/chargersrt8.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

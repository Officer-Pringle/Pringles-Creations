AddCSLuaFile()

local VehicleName = "2012 SSPD Charger"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 13
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
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2012
	{ 3, 0 }, -- 
	{ 4, 0 }, -- 
	{ 5, 0 }, -- 
	{ 6, 0 }, -- 
	{ 7, 2 }, -- push bar
	{ 8, 1 }, -- grille leds
	{ 9, 1 }, -- front bumper leds
	{ 10, 3 }, -- front interior lightbar
	{ 11, 4 }, -- lightbar
	{ 12, 2 }, -- rear interior lightbar
	{ 13, 1 }, -- rear passenger leds
	{ 14, 0 }, -- antennas
	{ 15, 2 }, -- spotlights
	{ 16, 0 }, -- wing
	{ 17, 0 }, -- wheel
	{ 18, 0 }, -- cage
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.4,
		Pos = Vector(0, 121, 14),
		Ang = Angle( -10, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/afgn_props/rambar_3/afgn_props_rambar_3.mdl",
		Scale = 9.5,
		Pos = Vector(-21, 54, 11),
		Ang = Angle( -0, 17, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-36, 32, 58),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[4] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 56),
		Ang = Angle( 0, -16, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(-25, -110, 58.5),
		Ang = Angle( 7, 230, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[6] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(25, -110, 58.5),
		Ang = Angle( 6, -40, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 85.5),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 85.),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -35, 74.8),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 69 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 69 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(-5, -30.5, 85),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.06,
		Pos = Vector( 0, -15, 78 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 08, 116.45, 32 ),
		Ang = Angle( 0, -9, 0),
		Color1 = B,
		Phase = PA
	},
	[3] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -08, 116.45, 32 ),
		Ang = Angle( 0, 9, 0),
		Color1 = B,
		Phase = PB,
	},
	[4] = {--BLUE
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 18, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B
	},
	[5] = {-- BLUE
		ID = "Federal Signal Viper Dual",
		Scale = 1.2,
		Pos = Vector( 0, 40, 56 ),
		Ang = Angle( 180, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[6] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -55, 56.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B ,
		Color2 = B ,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -55, 56.9 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B ,
		Color2 = B ,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .8,
		Pos = Vector( 0, -60, 66.58 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[9] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -15, -83, 60 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[10] = {
		ID = "Federal Signal Viper Dual",
		Scale = 1.3,
		Pos = Vector( 15, -83, 60 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[11] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 125, 30.6),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PA
	},
	[12] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 125, 30.6 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PB
	},
	[13] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 125, 33),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PA
	},
	[14] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 125, 33 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PB
	},
	[15] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 17, 34.4 ),
		Ang = Angle( 0, 0, 0 )
	},



	[16] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(1, -12.5, -9),
		Ang = Angle(3, 0, 0),
	},
	[17] = {
		ID = "Pringles Charger12 Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[18] = {
		ID = "12Charger Rear Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
}

EMV.Selections = {
	{
		Name = "Preset Configs",
		Options = {
			{ Name = "Marked", Auto = {1,6,7,9,10,17,18}, Props = {} },
			{ Name = "Slicktop", Auto = {4,5,6,7,8,9,10,17,18}, Props = {} }
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap Around", Auto = {11,12}, Props = {2} },
			{ Name = "Sentina", Auto = {13,14}, Props = {1} },
			{ Name = "None", Auto = {2,3}, Props = {} },
			
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "ON", Auto = {16}, Props = {3} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "on", Auto = {15}, Props = {4} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "ON", Auto = {}, Props = {5,6} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Antennas",
		Options = {
			{ Name = "ON", Auto = {}, Props = {7,8,9,10,11,12} },
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
	Model = "models/tdmcars/emergency/dod_charger12.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/charger2012.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

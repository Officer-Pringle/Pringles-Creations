AddCSLuaFile()

local VehicleName = "2016 SSPD Explorer"

local EMV = {}

EMV.Siren = 23
EMV.Skin = "fpiu16_liveries/sandy_shores_pd"
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
	{ 1, 0 }, -- badge
	{ 2, 0 }, -- dashtext
	{ 3, 0 }, -- dashglass
	{ 4, 0 }, -- chrome
	{ 5, 0 }, -- Rims
	{ 6, 0 }, -- Rear Layout
	{ 7, 0 }, -- Fog Lamps
	{ 8, 0 }, -- clamped1
	{ 9, 0 }, -- clamped2
	{ 10, 0 }, -- clamped3
	{ 11, 0 }, -- clamped4
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/rambar_4/afgn_props_rambar_4.mdl",
		Scale = 7.3,
		Pos = Vector(-22, 100, 17),
		Ang = Angle( 0, 15, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.4,
		Pos = Vector(0, 118, 19),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[13] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(-0, 52, 54.5),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( 22, -80, 82 ),
		Ang = Angle( 0, -50, 3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/alpr_camera_minimal.mdl",
		Scale = .66,
		Pos = Vector( -22, -80, 82 ),
		Ang = Angle( 0, 230, -3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 91.2),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 91.5),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 80.7),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -72, 92.8 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -72, 92.8 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -40, 91),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -49.7, 91),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -49, 80.5),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Pos = Vector(.35, 21.5, 36.4),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Skin = 1,
		Pos = Vector(.35, 26, 36.8),
		Ang = Angle( 0, 180, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[16] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .5,
		Pos = Vector(10, 33, 32),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[17] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(5, 24, 43),
		Ang = Angle( 0, 130, 0)
	},
	[18] = {
		Model = "models/schmal/watchguard_screen.mdl",
		Scale = .75,
		Pos = Vector(5, 22, 74),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[19] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .75,
		Pos = Vector(.35, 40, 65),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[20] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-39, 43, 62),
		Ang = Angle( 15, 120, -10),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.06,
		Pos = Vector( 0, -10, 84.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -10, 110, 37.5 ),
		Ang = Angle( 0, 0, 270),
		Color1 = B,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 10, 110, 37.5),
		Ang = Angle( 0, 0, 270),
		Color1 = B,
		Phase = PB
	},
	[4] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 120, 36.2 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = SW,
		Phase = PA
	},
	[5] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 120, 36.2 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = SW,
		Phase = PB
	},
	[6] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 120, 38.3 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = SW,
		Phase = PA
	},
	[7] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 120, 38.3 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = SW,
		Phase = PB
	},
	[8] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( -33, -80, 62 ),
		Ang = Angle( 180, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[9] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 33, -80, 62 ),
		Ang = Angle( 180, 180, 0),
		Color1 = B,
		Color2 = B
	},
	[10] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 20, -101.5, 63 ),
		Ang = Angle( 180, 96, 0),
		Color1 = B,
		Color2 = B,
	},
	[11] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( -20, -101.5, 63 ),
		Ang = Angle( 180, 80, 0),
		Color1 = B,
		Color2 = B,
	},
	[12] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.2,
		Pos = Vector( 0, 28, 71 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B
	},
	[13] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -91, 72 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},

	[14] = {
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(0, 0, 0),
		Ang = Angle(0, 0, 0),
	},
	[15] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector(.35, 30.98, 37.5),
		Ang = Angle(0, 0, 5),
	},
	[16] = {
		ID = "FPIU16 Front Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[17] = {
		ID = "FPIU16 Turn Signal Hideaways",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[18] = {
		ID = "FPIU16 Reverse Hideaways",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
}

EMV.Selections = {

	{
		Name = "Preset Configs",
		Options = {
			{ Name = "Marked", Auto = {1,8,9,10,11,16,17,18}, Props = {} },
			{ Name = "Slicktop", Auto = {8,9,10,11,12,13,16,17,18}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap Around", Auto = {4,5}, Props = {1} },
			{ Name = "Sentina", Auto = {6,7}, Props = {2} },
			{ Name = "None", Auto = {2,3}, Props = {} },
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "On", Auto = {14}, Props = {20} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "on", Auto = {}, Props = {3,4} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "on", Auto = {15}, Props = {13,14,15,16,17,18,19} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Antenna",
		Options = {
			{ Name = "on", Auto = {}, Props = {5,6,7,8,9,10,11,12} },
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
	Model = "models/schmal/fpiu/ford_utility.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/schmal/ford_pol_int_2016.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

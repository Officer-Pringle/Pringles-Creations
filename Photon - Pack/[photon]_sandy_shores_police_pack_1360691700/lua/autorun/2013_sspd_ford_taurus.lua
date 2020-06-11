AddCSLuaFile()

local VehicleName = "2013 SSPD Ford Taurus"

local EMV = {}

EMV.Siren = 45
EMV.Skin = 9
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
	{ 0, 0 }, -- Ford
	{ 1, 0 }, -- Taurus
	{ 2, 0 }, -- 2013
	{ 3, 0 }, -- wing
	{ 4, 0 }, -- pushbar
	{ 5, 0 }, -- grille lights
	{ 6, 0 }, -- side led
	{ 7, 0 }, -- mirror bottom led
	{ 8, 0 }, -- rear windows led
	{ 9, 0 }, -- front interior lights
	{ 10, 5 }, -- roof light bar
	{ 11, 0 }, -- rear interior leds
	{ 12, 0 }, -- rear interior lightbar
	{ 13, 0 }, -- rear lower interior lightbar
	{ 14, 3 }, -- console unit
	{ 15, 0 }, -- front badge
	{ 16, 0 }, -- skirts
	{ 17, 0 }, -- led message board
	{ 18, 0 }, -- misc equipment
	{ 19, 1 }, -- spotlights
	{ 20, 0 }, -- cage wall
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.3,
		Pos = Vector(0, 123, 14),
		Ang = Angle( -10, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/afgn_props/rambar_3/afgn_props_rambar_3.mdl",
		Scale = 9.5,
		Pos = Vector(-21, 59, 11),
		Ang = Angle( -0, 17, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-37, 42, 60),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[4] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 45, 55),
		Ang = Angle( 0, -16, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(-25, -105, 61.95),
		Ang = Angle( 3, 225, 3),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[6] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(25, -105, 61.98),
		Ang = Angle( 4, -40, -4),
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
		Scale = 1.04,
		Pos = Vector( 0, -5, 79.6 ),
		Ang = Angle( 2, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 130, 30.6),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 130, 30.6 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PB
	},
	[4] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 128, 31.5),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PA
	},
	[5] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 128, 31.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PB
	},
	[6] = {--BLUE
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 28.5, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B
	},
	[7] = {-- BLUE
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 0, 50, 56 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[8] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -80, 63.5 ),
		Ang = Angle( 180, 85, 0),
		Color1 = B,
		Color2 = B
	},
	[9] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 10, -81.8, 63.5 ),
		Ang = Angle( 180, 95, 0),
		Color1 = B,
		Color2 = B
	},
	[10] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .8,
		Pos = Vector( 0, -64.5, 67.8 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[11] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 29, -119.9, 32.5),
		Ang = Angle( 0, 30, 95),
		Phase = PA,
	},
	[12] = {
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -29, -119.9, 32.5),
		Ang = Angle( 0, -30, 95),
		Phase = PB,
	},
	[13] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -44.7, 56.2, 40.5 ),
		Ang = Angle( 0, 93.5, 1.2),
		Color1 = B,
		Color2 = B,
	},
	[14] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 44.7, 56.2, 40.5 ),
		Ang = Angle( 0, -93.5, 1.2),
		Color1 = B,
		Color2 = B,
	},
	[15] = {
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 10, 117, 35 ),
		Ang = Angle( 0, 0, 270),
		Color1 = B,
		Phase = PA
	},
	[16] = {
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -10, 117, 35 ),
		Ang = Angle( 0, 0, 270),
		Color1 = B,
		Phase = PB
	},
	[17] = {
		ID = "Whelen 700",
		Scale = 1.3,
		Pos = Vector( -37, -45, 57.9 ),
		Ang = Angle( 0, 90, 270)
	},
	[18] = {
		ID = "Whelen 700",
		Scale = 1.3,
		Pos = Vector( 37, -45, 58.2 ),
		Ang = Angle( 5, 90, 90)
	},



	[19] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(9.5, -1, 0),
		Ang = Angle(-5, 0, 0),
	},
	[20] = {
		ID = "Taurus13 FrontFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[21] = {
		ID = "Taurus13 FlashSignal",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[22] = {
		ID = "Pringles Taurus13 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},



	
}

EMV.Selections = {

	{
		Name = "Preset Configs.",
		Options = {
			{ Name = "Marked", Auto = {1,7,8,9,11,12,13,14,17,18,20,21,22}, Props = {} },
			{ Name = "Slicktop", Auto = {6,7,8,9,10,11,12,13,14,17,18,20,21,22}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap-Around", Auto = {2,3}, Props = {2} },
			{ Name = "Sentina", Auto = {4,5}, Props = {1} },
			{ Name = "None", Auto = {15,16}, Props = {} },
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "on", Auto = {19}, Props = {3} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "ON", Auto = {}, Props = {4} },
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
			{ Name = "On", Auto = {}, Props = {} },
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
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

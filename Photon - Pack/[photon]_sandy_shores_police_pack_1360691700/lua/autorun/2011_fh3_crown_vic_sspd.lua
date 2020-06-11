AddCSLuaFile()

local VehicleName = "2011 SSPD FH3 Crown Victoria"

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

EMV.Siren = 23
EMV.Skin = 13
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- 
	{ 1, 0 }, -- [EM] Spot Lights
	{ 2, 0 }, -- [EM] Dash
	{ 3, 0 }, -- Ford
	{ 4, 0 }, -- Crown
	{ 5, 0 }, -- Victoria
	{ 6, 0 }, -- P71
	{ 7, 0 }, -- 
	{ 8, 0 }, -- 
	{ 9, 0 }, -- 
	{ 10, 0 }, -- 
	{ 11, 0 }, -- [EM] Front Window Lights
	{ 12, 3 }, -- [EM] Push Bar
	{ 13, 1 }, -- [EM] Grille
	{ 14, 1 }, -- [EM] Mirrors
	{ 15, 0 }, -- [EM] Light Bars
	{ 16, 0 }, -- [EM] Interior Equipment
	{ 17, 3 }, -- [EM] Interior Consoles Slot 1
	{ 18, 0 }, -- [EM] Interior Consoles Slot 2
	{ 19, 0 }, -- [EM] Cage
	{ 20, 0 }, -- [EM] Rear Door Window Lights
	{ 21, 0 }, -- [EM] Rear Window Lights
	{ 22, 0 }, -- [EM] Rear Window Lower Lights
	{ 23, 0 }, -- [EM] Headlight Ions
	{ 24, 0 }, -- Front Door Panels
	{ 25, 0 }, -- Rear Door Panels
	{ 26, 0 }, -- Trunk Panel
	{ 27, 0 }, -- Trunk Badge
	{ 28, 0 }, -- Door Handles
	{ 29, 0 }, -- Rear Windows
	{ 30, 0 }, -- Radio Antennas
	{ 31, 0 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.3,
		Pos = Vector(0, 122.5, 17),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.3,
		Pos = Vector(0, 104, 17),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[3] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-36, 25, 58),
		Ang = Angle( 0, 115, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[4] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(27, -115, 55.94),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[5] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-27, -115, 55.88),
		Ang = Angle( 6, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[6] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[7] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[8] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(9, 18, 30),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[9] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 10, 43),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[10] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 55),
		Ang = Angle( 0, -16, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[11] = {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -19, 45),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.01,
		Pos = Vector( 0, -20, 78.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 8, 122, 34.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA

	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -8, 122, 34.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	[4] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 8, 112, 37 ),
		Ang = Angle( 0, 0, 290),
		Color1 = B,
		Phase = PA,

	},
	[5] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -8, 112, 37 ),
		Ang = Angle( 0, 0, 290),
		Color1 = B,
		Phase = PB
	},
	[6] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 12, -80, 58.5 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[7] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -12, -80, 58.5 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[8] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -39, -50, 53.7 ),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = W
	},
	[9] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 39, -50, 53.7 ),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = W
	},
	[10] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -64.5, 68 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[11] = {
		ID = "TDMP Feniex Apollo",
		Scale = .6,
		Pos = Vector( 16, 11, 68 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[12] = {
		ID = "TDMP Feniex Apollo",
		Scale = .6,
		Pos = Vector( -16, 11, 68 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[17] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 19.4, 34.7 ),
		Ang = Angle( 0, 0, 0)
	},
	[18] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(2.3, -17.5, -9),
		Ang = Angle(0, -5, 5),
	},
	[13] = {
		ID = "Pringles FH3 CVPI Outer-Flashers Blue",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[14] = {
		ID = "FH3 CVPI Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[15] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[16] = {
		ID = "CVPIFH3 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
}	

EMV.Selections = {
	{
		Name = "Preset Configs.",
		Options = {
			{ Name = "Marked", Auto = {1,6,7,8,9,13,14,15,16,17}, Props = {} },
			{ Name = "Slicktop", Auto = {6,7,8,9,10,11,12,13,14,15,16} }
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap Around", Auto = {2,3},  Props = {2} },
			{ Name = "Sentina", Auto = {2,3},  Props = {1} },
			{ Name = "None", Auto = {4,5} }
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "On", Auto = {18}, Props = {3} },
			{ Name = "None"}
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "On", Auto = {}, Props = {4,5,6,7} },
			{ Name = "Antenne Only", Props = {6,7}},
			{ Name = "None" }
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "On", Props = {8,9,10,11} },
			{ Name = "None"}
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
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

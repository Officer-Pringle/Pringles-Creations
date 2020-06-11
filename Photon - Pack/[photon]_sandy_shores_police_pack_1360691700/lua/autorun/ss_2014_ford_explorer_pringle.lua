AddCSLuaFile()

local VehicleName = "2014 SS Ford Explorer"

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
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/rambar_4/afgn_props_rambar_4.mdl",
		Scale = 7.5,
		Pos = Vector(-22, 105, 18),
		Ang = Angle( 0, 14, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.7,
		Pos = Vector(0, 121, 15),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 5.5,
		Pos = Vector(-4, -38, 31),
		Ang = Angle( 0, 200, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-40, 40, 65),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[5] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(10, 24, 33.6),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(6, 16, 46.5),
		Ang = Angle( 0, 130, 0)
	},
	[7] = {
		Model = "models/schmal/watchguard_screen.mdl",
		Scale = .75,
		Pos = Vector(9, 20, 75.4),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .75,
		Pos = Vector(.35, 28, 75),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .30,
		Pos = Vector(-5, 50, 60),
		Ang = Angle( 0, -10, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.17,
		Pos = Vector( 0, -15, 90 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 124, 38 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = W,
		Color2 = B,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 124, 38 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = W,
		Color2 = B,
		Phase = PB
	},
	[4] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 12, 117.25, 49.3),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W
	},
	[5] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -12, 117.25, 49.3),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Color2 = B
	},
	[6] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 12, 117.25, 49.3),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPA"
		
	},
	[7] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -12, 117.25, 49.3),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPB"
	},
	-- Wrap Around Pushbar Lights
	[8] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 12, 122, 50),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W
	},
	[9] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -12, 122, 50),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Color2 = B
	},
	--
	[10] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 12, 122, 50),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPA"
	},
	[11] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -12, 122, 50),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPB"
	},
	[12] = {
		ID = "Whelen 700",
		Scale = 1.5,
		Pos = Vector( 13, 113.6, 42.4 ),
		Ang = Angle( 0, -9, 287),
		Color1 = B,
		Phase = PB
	},
	[13] = {
		ID = "Whelen 700",
		Scale = 1.5,
		Pos = Vector( -13, 113.6, 42.4 ),
		Ang = Angle( 0, 9, 287),
		Color1 = B,
		Phase = PA
	},
	[14] = {
		ID = "DOJ Code 3 Wingman",
		Scale = .95,
		Pos = Vector( 0, -113, 78.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = W,
		Color3 = A
	},
	[15] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( -38.7, -92, 65.5 ),
		Ang = Angle( 0, 185, 180),
		Color1 = B,
		Color2 = B
	},
	[16] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 37.7, -92, 65.5 ),
		Ang = Angle( 0, -5, -180),
		Color1 = B,
		Color2 = B
	},
	[17] = {
		ID = "DOJ Interior Lightbar 3",
		Scale = 1.15,
		Pos = Vector( 0, 24.7, 76.2 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[18] = {
		ID = "FPIU14 Fogflash",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[19] = {
		ID = "FPIU14 FlashTails",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[20] = {
		ID = "FPIU14 FrontFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Color2 = B
	},
	[21] = {
		ID = "FPIU14 RearFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[22] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(10.5, -4, 8.0),
		Ang = Angle(-9, 0, 0),
	},
}




EMV.Selections = {
	{
		Name = "Preset Configs.",
		Options = {
			{ Name = "Marked", Auto = {1,14,15,16,18,19,20,21}, Props = {} },
			{ Name = "Slicktop", Auto = {14,15,16,17,18,19,20,21}, Props = {} }
		}
	},
	{
		Name = "Pushbars",
		Options = {
			{ Category = "Sentina Pushbar", Name = "Whelen 400", Auto = {2,3}, Props = {2} },
			{ Category = "Sentina Pushbar", Name = "Ion Split", Auto = {4,5}, Props = {2} },
			{ Category = "Sentina Pushbar", Name = "Whelen Ion", Auto = {6,7}, Props = {2} },
			-- 
			{ Category = "Wrap Around", Name = "Whelen 400", Auto = {2,3}, Props = {1} },
			{ Category = "Wrap Around", Name = "Ion Split", Auto = {8,9}, Props = {1} },
			{ Category = "Wrap Around", Name = "Ion Split", Auto = {10,11}, Props = {1} },
			{ Name = "None"}

		}
	},
	{
		Name = "Grill Lighting",
		Options = {
			{ Name = "None" },
			{ Name = "On", Auto = {12,13}}
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "On", Auto = {22}, Props = {4} },
			{ Name = "None" }
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "ON", Props = {5,6,7,8,9} },
			{ Name = "None" }
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
	Model = "models/smcars/2014_ford_explorer_utility.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/14_explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

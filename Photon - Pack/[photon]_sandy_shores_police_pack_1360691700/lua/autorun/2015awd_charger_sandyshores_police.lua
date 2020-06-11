AddCSLuaFile()

local VehicleName = "2015 SSPD AWD Charger"

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
EMV.Skin = 8
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Rims
	{ 2, 0 }, -- Badges
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
}

EMV.Props = {
	[1] = {
		Model = "models/schmal/whelen_cencom_panel.mdl",
		Scale = 1,
		Pos = Vector(.35, 10.7, 37.5),
		Ang = Angle( 0, 180, 85),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Pos = Vector(.35, 10.5, 24.2),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Skin = 1,
		Pos = Vector(.35, 07, 24.2),
		Ang = Angle( 0, 180, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .5,
		Pos = Vector(10, 24, 32),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(6, 16, 43),
		Ang = Angle( 0, 130, 0)
	},
	[6] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(-10, 50, 51.9),
		Ang = Angle( 0, 10, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/watchguard_screen.mdl",
		Scale = .75,
		Pos = Vector(9, 22, 63.6),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .75,
		Pos = Vector(.35, 31, 60),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-35, 34, 58),
		Ang = Angle( 15, 120, -10),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(06, -38, 80.8),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(-06, -38, 80.6),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -30, 72),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = Vector( 1.2, 1.2, 1.4 ),
		Pos = Vector( 0, 124.5, 11 ),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_TRANSLUCENT,
		RenderMode = RENDERMODE_TRANSALPHA
	},
	[14] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -100, 65),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -100, 65.6),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[16] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -100, 56),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[17] = {
        Model = "models/afgn_props/rambar_3/afgn_props_rambar_3.mdl",
        Pos = Vector( -23, 56, 8.4 ),
        Ang = Angle( 0, 16, 0 ),
        Scale = 9.5,
        Skin = 0,
        Bodygroups = {
            { 1, 1 }
        }
    },
    [18] = {
        Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
        Pos = Vector( -3, -31, 26.5 ),
        Ang = Angle( 3.1, 199, -7 ),
        Scale = 4.4,
    },
    [19] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(-25, -105, 56.15),
		Ang = Angle( 7, 230, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[20] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(25, -105, 56.15),
		Ang = Angle( 6, -40, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1,
		Pos = Vector( 0, -12, 76 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 127, 27.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 127, 27.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	[4] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 127, 30.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[5] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 127, 30.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	[6] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 10, 118.5, 34),
		Ang = Angle( 0, -6, 270),
		Color1 = B,
		Phase = PA
	},
	[7] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -10, 118.5, 34 ),
		Ang = Angle( 0, 6, 270),
		Color1 = B,
		Phase = PB
	},
	[8] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -35.6, -49, 54 ),
		Ang = Angle( 2, 90, -90 ),
		Color1 = B,
	},
	[9] = {
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 35.6, -49, 54 ),
		Ang = Angle( 2, 90, 90 ),
		Color1 = B,
	},
	[10] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 10, -78.5, 58 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[11] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -10, -78.5, 58 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[12] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .85,
		Pos = Vector( 0, -52.8, 65 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[13] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.05,
		Pos = Vector( 0, 25, 64 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = B
	},

	[14] = {
		ID = "15AWD Charger Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[15] = {
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(4, -9, -4),
		Ang = Angle(0, 0, 0),
	}
}

EMV.Selections = {

	{
		Name = "Preset Configs.",
		Options = {
			{ Name = "Marked", Auto = {1,8,9,10,11,14}, Props = {18} },
			{ Name = "Slicktop", Auto = {8,9,10,11,12,13,14}, Props = {18} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap-Around", Auto = {2,3}, Props = {17} },
			{ Name = "Sentina", Auto = {4,5}, Props = {13} },
			{ Name = "None", Auto = {6,7}, Props = {} },
		}
	},
	{
		Name = "Spotlight",
		Options = {
			{ Name = "on", Auto = {15}, Props = {9} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "ON", Auto = {}, Props = {2,3,4,5,6,7,8} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "ON", Auto = {}, Props = {19,20} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Antennas",
		Options = {
			{ Name = "On", Auto = {}, Props = {10,11,12,14,15,16} },
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
	Model = "models/smcars/2015_charger.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/dodge_charger15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

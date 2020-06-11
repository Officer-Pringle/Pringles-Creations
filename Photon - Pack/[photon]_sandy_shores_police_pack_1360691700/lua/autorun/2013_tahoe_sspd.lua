AddCSLuaFile()

local VehicleName = "2013 LW Tahoe"

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
EMV.Skin = 11
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- ALPR
	{ 2, 0 }, -- Antenne
	{ 3, 2 }, -- Sidepanels
	{ 4, 0 }, -- Bullbar
	{ 5, 0 }, -- Lightbar
	{ 6, 1 }, -- Equiptment
	{ 7, 1 }, -- Grill
	{ 8, 1 }, -- Lamp
	{ 9, 0 }, -- Lights_frontwindow
	{ 10, 0 }, -- Lights_grill
	{ 11, 0 }, -- Lights_rearbumper
	{ 12, 0 }, -- Lights_rearwindow
	{ 13, 1 }, -- Partition
	{ 14, 0 }, -- Roofrack
	{ 15, 0 }, -- Runningboards
	{ 16, 0 }, -- Snorkle
	{ 17, 1 }, -- Wheels
	{ 18, 1 }, -- Windows
	{ 19, 0 }, -- clamped1
	{ 20, 0 }, -- clamped2
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/rambar_4/afgn_props_rambar_4.mdl",
		Scale = 7.5,
		Pos = Vector(-20, 103, 18),
		Ang = Angle( 0, 12, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/lonewolfie/alpr_camera.mdl",
		Scale = 1,
		Pos = Vector(-23, -96.5, 87),
		Ang = Angle( 7, 240, .5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/lonewolfie/alpr_camera.mdl",
		Scale = 1,
		Pos = Vector(23, -96.5, 87),
		Ang = Angle( 8, -70, -1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		Model = "models/lonewolfie/alpr_brain.mdl",
		Scale = 1,
		Pos = Vector(20, -85, 88.5),
		Ang = Angle( 3, 270, -3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(15, -70, 108.65),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[6] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-15, -70, 108.65),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

}

EMV.Auto = {
	[1] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.15,
		Pos = Vector( 0, -10, 90.2),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( -10, 123, 37.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PA
	},
	[3] = {
		ID = "Whelen 400 Series",
		Scale = 1,
		Pos = Vector( 10, 123, 37.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = W,
		Phase = PB
	},
	[4] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 50, 35.75, 62.5),
		Ang = Angle( 0, -20, 0),
		Color1 = B,
		Phase = PA
	},
	[5] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -50, 35.75, 62.5),
		Ang = Angle( 0, 20, 0),
		Color1 = B,
		Phase = PB
	},
	[6] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -35.5, -80, 66 ),
		Ang = Angle( 180, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[7] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 35.5, -80, 66 ),
		Ang = Angle( 180, 180, 0),
		Color1 = B,
		Color2 = B
	},
	[8] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 12, -106.5, 65 ),
		Ang = Angle( 180, 95, 0),
		Color1 = B,
		Color2 = B
	},
	[9] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -12, -106.5, 65 ),
		Ang = Angle( 180, 85, 0),
		Color1 = B,
		Color2 = B
	},
	[10] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.2,
		Pos = Vector( -0, 30, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Color3 = SW
	},
	[11] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .85,
		Pos = Vector( 0, -101, 76.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[12] = {
		ID = "13Tahoe Fog Flashers",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[13] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.07,
		Pos = Vector(3.5, -9.5, 3.5),
		Ang = Angle(-0, 0, 0),
	},


}

EMV.Selections = {
	{
		Name = "Preset Configs",
		Options = {
			{ Name = "Marked", Auto = {1,6,7,8,9,12,13}, Props = {} },
			{ Name = "Slicktop", Auto = {6,7,8,9,10,11,12,13}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Wrap Around", Auto = {2,3}, Props = {1},},
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "On", Auto = {}, Props = {2,3,4,5,6} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Mirror Lights",
		Options = {
			{ Name = "On", Auto = {4,5}, Props = {} },
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
	Model = "models/lonewolfie/chev_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_tahoe.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

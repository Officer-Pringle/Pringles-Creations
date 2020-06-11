AddCSLuaFile()

local VehicleName = "2020 SLCS Ford Explorer"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = "pringle/skins/2020explorer/20exstlaw"
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
	{ 0, 0 }, -- car
	{ 1, 1 }, -- pushbar
	{ 2, 1 }, -- grille_lights
	{ 3, 0 }, -- mirror_lights
	{ 4, 1 }, -- visor_lights
	{ 5, 1 }, -- lightbar
	{ 6, 1 }, -- spotlight_l
	{ 7, 0 }, -- spotlight_r
	{ 8, 1 }, -- headlight_flashers
	{ 9, 1 }, -- fog_lights
	{ 10, 1 }, -- spoiler_lights
	{ 11, 1 }, -- trunk_lights
	{ 12, 1 }, -- rear_window_lights
	{ 13, 0 }, -- console
	{ 14, 0 }, -- pi_badge
	{ 15, 0 }, -- ecoboost_badge
	{ 16, 0 }, -- clamped1
	{ 17, 0 }, -- clamped2
	{ 18, 0 }, -- clamped3
	{ 19, 0 }, -- clamped4
	{ 20, 0 }, -- clamped5
	{ 21, 0 }, -- clamped6
	{ 22, 0 }, -- clamped7
}

EMV.Props = {
	[1] = {
		Model = "models/supermighty/photon/suv_pushbar.mdl",
		Scale = Vector( 1, 1, .8 ),
		Pos = Vector(0, 128, 37),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(34, 118, 36),
		Ang = Angle( 0, 90, 0),
		Material = "models/supermighty/chp/wrap_black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[3] = {
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(-38, 114, 36),
		Ang = Angle( 0, 182, 0),
		Material = "models/supermighty/chp/wrap_black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[4] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 37, 50.5, 65 ),
		Ang = Angle( 10, -70, 0),
	},
	[5] = {
		Model = "models/supermighty/photon/dashcam.mdl",
		Scale = 1,
		Pos = Vector(10, 32, 74),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	--
	[6] = {
		Model = "models/sentry/antenna.mdl",
		Scale = 1,
		Pos = Vector(-20, -80, 84.4),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/sentry/antenna.mdl",
		Scale = 1,
		Pos = Vector(20, -80, 84.4),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -75, 84.8),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = 1,
		Pos = Vector(5, -81, 89.6),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(-5, -81, 89.6),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/sentry/antenna4.mdl",
		Scale = 1,
		Pos = Vector(0, -48, 86),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = Vector( .6, .59, .6 ),
		Pos = Vector(0, -11, 55),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/noble/prisoner_cage_rear.mdl",
		Scale = Vector(1.15, 1, 1.2),
		Pos = Vector(0, -1.5, -14),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_TRANSPARENT,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/pringle/props/stalkerdsr2x.mdl",
		Scale = .3,
		Pos = Vector(0, 49, 61.5),
		Ang = Angle( 0, -20, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/pringle/props/laptopstands/laptopstand2.mdl",
		Scale = .4,
		Pos = Vector(3, 29.5, 57.5),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[16] = {
		Model = "models/pringle/props/panasonic_toughbook/panasonic_toughbook.mdl",
		Scale = .1,
		Pos = Vector(5, 31, 59),
		Ang = Angle( 0, -45, 18),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[17] = {
		Model = "models/pringle/props/gunmount/gunmount.mdl",
		Scale = Vector(.5,.4,.5),
		Pos = Vector(0, -5, 45),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[18] = {
		Model = "models/pringle/props/m16_rifle/m16.mdl",
		Scale = .5,
		Pos = Vector(1.8, -6, 58),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	[1] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .95,
		Pos = Vector( 0, -5, 88.3 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -40, 50.5, 66.4 ),
		Ang = Angle( 0, -90, 0),
	},
	[3] = {
		ID = "Whelen Ion Extra",
		Scale = .7,
		Pos = Vector( -8, -116.5, 55.52 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Phase = PA
	},
	[4] = {
		ID = "Whelen Ion Extra",
		Scale = .7,
		Pos = Vector( 8, -116.5, 55.52 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Phase = PB
	},
	[5] = {
		ID = "P Whelen Avenger",
		Scale = 1.1,
		Pos = Vector( 0, 55.5, 64.1),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[6] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -36, -82, 66.5),
		Ang = Angle( 0, 185, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 36, -82, 66.5),
		Ang = Angle( 0, -6, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( -12, 129, 41),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	[9] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( 12, 129, 41),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	[10] = {
		ID = "Whelen Ion Rear Right",
		Scale = .8,
		Pos = Vector( 22.5, -98, 77.8),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
	},
	[11] = {
		ID = "Whelen Ion Rear Left",
		Scale = .8,
		Pos = Vector( -22.5, -98, 77.8),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = R
	},
	[12] = {
		ID = "Whelen Legacy",
		Scale = 1.11,
		Pos = Vector( 0, -5, 87.3 ),
		Ang = Angle( 0, 90, 0 )
	},
	[13] = {
		ID = "P Code 3 x21 TR Extra",
		Scale = 1.08,
		Pos = Vector( 0, -5, 88.8),
		Ang = Angle( -1, -90, 0 )
	},
	[14] = {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.8 , 47, 20),
		Ang = Angle( 0, 90, -20 ),
		Color1 = R,
		Color2 = B
	},
	[15] = {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -46.5, -30, 20),
		Ang = Angle( 0, 90, -20 ),
		Color1 = B,
		Color2 = R
	},
	[16] = {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.8 , 47, 20),
		Ang = Angle( 0, -89.5, -20 ),
		Color1 = R,
		Color2 = B
	},
	[17] = {
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 46.5, -30, 20),
		Ang = Angle( 0, -90, -20 ),
		Color1 = B,
		Color2 = R
	},
	[18] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( -45, 42.5, 19),
		Ang = Angle( -2, -1, 0 )
	},
	[19] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( -45.4, 24, 19),
		Ang = Angle( -2, -1, 0 )
	},
	[20] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( -45.6, 5.48, 19),
		Ang = Angle( -3, 0, 0 )
	},
	[21] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( -45.7, -13, 19),
		Ang = Angle( -3, 0, 0 )
	},
	[22] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( -45.7, -27.8, 19),
		Ang = Angle( -3, 1, 0 )
	},
	-------------
	[23] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( 45, 42.5, 19),
		Ang = Angle( -2, 181.5, 0 )
	},
	[24] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( 45.4, 24, 19),
		Ang = Angle( -2, 181, 0 )
	},
	[25] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( 45.6, 5.48, 19),
		Ang = Angle( -3, 180, 0 )
	},
	[26] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( 45.7, -13, 19),
		Ang = Angle( -3, 180, 0 )
	},
	[27] = {
		ID = "Pringles Skirt Lighting Awake",
		Scale = 1,
		Pos = Vector( 45.7, -27.8, 19),
		Ang = Angle( -3, 180, 0 )
	},

}

EMV.Selections = {
	{
		Name = "Base Components",
		Options = {
			{ Name = "Base Components", Auto = {2,3,4,5,6,7,8,9,10,11}, Props = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18} },
			{ Name = "None", Auto = {}, Props = {} },
			

		}
	},
	{
		Name = "Lightbar",
		Options = {
			{ Name = "Valor", Auto = {1}, Props = {} },
			{ Name = "Legacy", Auto = {12}, Props = {} },
			{ Name = "C3 X21", Auto = {13}, Props = {} },
			{ Name = "None"},
		}
	},
	{
		Name = "Skirt Lighting",
		Options = {
			{ Name = "None"},
			{ Name = "Ions", Auto = {14,15,16,17}, Props = {} },
			{ Name = "Strip", Auto = {18,19,20,21,22,23,24,25,26,27}, Props = {} },
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
		{ Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( -44, 54, 70 ), Angle( 5, 80, 0 ), "spot" },
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
	["spot"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 170,
		FOV = 90,
		Distance = 800,
	},
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "St. Lawrence County Sheriff",
	Author = "Officer Pringle",
	Model = "models/sentry/20explorer.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/20explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

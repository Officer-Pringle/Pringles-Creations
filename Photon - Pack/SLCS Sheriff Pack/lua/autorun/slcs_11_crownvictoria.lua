AddCSLuaFile()

local VehicleName = "SLCS 2011 Crown Victoria"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = "skins/pringle/SLC_Sheriff"
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
	{ 19, 1 }, -- [EM] Cage
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
	{ 30, 2 }, -- Radio Antennas
	{ 31, 0 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_center_only/afgn_props_cvpi_gorhino_bar_center_only.mdl",
		Scale = 1,
		Pos = Vector(0, -7, 35),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_full_wrap/afgn_props_cvpi_gorhino_bar_full_wrap.mdl",
		Scale = 1,
		Pos = Vector(0, -7, 34.6),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	--
	[3] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 34),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 37),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 40),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/craphead_scripts/ocrp2/props_meow/weapons/c_extinguisher.mdl",
		Scale = 1,
		Pos = Vector(5, -110, 57),
		Ang = Angle( 0, 90, 90),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/weapons/w_medkit.mdl",
		Scale = 1,
		Pos = Vector(5, -84, 42),
		Ang = Angle( -3, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/props_lab/filecabinet02.mdl",
		Scale = .6,
		Pos = Vector(-18, -95, 30),
		Ang = Angle( -3, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/props_lab/filecabinet02.mdl",
		Scale = .6,
		Pos = Vector(-5, -95, 30),
		Ang = Angle( -3, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	-- ANTENNAS
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(5, -40, 80.6),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(-5, -40, 80.6),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = Vector( 1.1, 0.80, 3 ),
		Pos = Vector(0, -50, 75),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -35, 76),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -42, 75.8),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = .9,
		Pos = Vector(36, 30, 58),
		Ang = Angle( 0, -75, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[16] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(24, -55, 74.95),
		Ang = Angle( 10, -70, -6),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[17] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-24, -55, 74.95),
		Ang = Angle( 11, -135, 1),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[18] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(9, 18, 30),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[19] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 10, 43),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[20] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 55),
		Ang = Angle( 0, -16, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[21] = {
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
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -20, 76.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	[2] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -20, 77.5),
		Ang = Angle( 0, 90, 0 )
	},
	[4] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -10, 122.5, 36),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	[3] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 10, 122.5, 36),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	[5] = {
		ID = "DOJ Interior Lightbar 4",
		Scale = 1.15,
		Pos = Vector( 0, -82, 56.5 ),
		Ang = Angle( -2.5, 270, 0),
		Color1 = R,
		Color2 = B
	},
	[6] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 0, 36, 56.4),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( -39, -50, 54.2 ),
        Ang = Angle( -2, -90, 75 )
    },
    [8] = {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( 39, -50, 54.2 ),
        Ang = Angle( 2, 90, 75 )
    },
    [9] = {
        ID = "W700SLED Clear",
        Scale = .7,
        Pos = Vector( -10, 112.2, 37),
        Ang = Angle( 0, 0, -75 ),
        Color1 = R,
        Phase  = PA
    },
    [10] = {
        ID = "W700SLED Clear",
        Scale = .7,
        Pos = Vector( 10, 112.2, 37 ),
        Ang = Angle( 0, 0, -75 ),
        Color1 = B,
        Phase = PB
    },
   	[11] = {
		ID = "Pringles FH3 CVPI Outer-Flashers White",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[12] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = CW,
		Color2 = CW
	},
	[13] = {
		ID = "CVPIFH3 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[14] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 20, 15, 67.5),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[15] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -20, 15, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Phase = PA,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[16] = {
		ID = "Federal Signal Signalmaster",
		Scale = .7,
		Pos = Vector( 0, -90, 52.5),
		Ang = Angle( 180, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	[17] = {
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector(-39, 30, 60),
		Ang = Angle( 0, -95, 0),
	},

}

EMV.Selections = {
	{
		Name = "Lightbar",
		Options = {
			{ Name = "Legacy", Auto = {1}, Props = {} },
			{ Name = "Valor", Auto = {2}, Props = {} },
			{ Name = "None", Auto = {14,15} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "Go-Rhino", Auto = {3,4}, Props = {1} },
			{ Name = "Wrap", Auto = {3,4}, Props = {2} },
			{ Name = "None", Auto = {9,10} },
		}
	},
	{
		Name = "CRPG",
		Options = {
			{ Name = "ON", Auto = {5,6,7,8,11,12,13,16,17}, Props = {10,11,12,13,14,15,16,17,18,19,20,21} },
			{ Name = "None"},
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
				{ Vector( -50, 25, 70 ), Angle( 5, 80, 0 ), "spotlight" },
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
		Distance = 1500,
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
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

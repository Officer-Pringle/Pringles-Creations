AddCSLuaFile()

local VehicleName = "2018 SLCS Dodge Durango"

local EMV = {}

EMV.Siren = 67
EMV.Skin = "skins/pringle/slcs_sheriff_dur"
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
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
	{ 5, 0 }, -- clamped5
	{ 6, 0 }, -- clamped6
	{ 7, 0 }, -- clamped7
	{ 8, 0 }, -- clamped8
}

EMV.Props = {
	[1] = {
		Model = "models/afgn_props/westin_15_tahoe_full_wrap/afgn_props_westin_15_tahoe_full_wrap.mdl",
		Scale = Vector(1,.94,.85),
		Pos = Vector(0, -7, 20),
		Ang = Angle( 0, -90, 0),
		Material = "models/pringle/shared/black",
		Color = Color(50,50,50),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
    [1] = {
		ID = "Whelen Legacy",
		Scale = 1.04,
		Pos = Vector( 0, -20, 85),
		Ang = Angle( 2, 90, 0 )
    },
    [2] = {
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -39, 40, 66.4 ),
		Ang = Angle( 0, -95, 0),
    },
    [3] = {
		ID = "Federal Signal MicroPulse",
		Scale = .7,
		Pos = Vector( -12, -128.45, 53 ),
		Ang = Angle( 0, -185, 5),
		Color1 = R,
		Phase = PA
    },
    [4] = {
		ID = "Federal Signal MicroPulse",
		Scale = .7,
		Pos = Vector( 12, -128.45, 53 ),
		Ang = Angle( 0, -175, 5),
		Color1 = B,
		Phase = PB
    },
    [5] = {
		ID = "P Whelen Avenger",
		Scale = 1.1,
		Pos = Vector( 0, 49, 61.8),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    [6] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -35, -90, 64.9),
		Ang = Angle( 0, 185, 2 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    [7] = {
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 35, -90, 64.9),
		Ang = Angle( -8, -4, 2 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    [8] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -12, 125, 33),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
    },
    [9] = {
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 12, 125, 33),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
    },
    [10] = {
		ID = "Whelen Ion Rear Right",
		Scale = 1,
		Pos = Vector( 18, -115, 79),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
    },
    [11] = {
		ID = "Whelen Ion Rear Left",
		Scale = 1,
		Pos = Vector( -18, -115, 79),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = R
	},
	[12] = {
		ID = "5 LED Siderunner",
		Scale = 1,
		Pos = Vector( 0, 119.5, 47.4),
		Ang = Angle( 0, 0, 0 )
	},
	[13] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .94,
		Pos = Vector( 0, -20, 85),
		Ang = Angle( 0, 90, 0 )
	},
	---------------------------------
	[14] = {
		ID = "5 LED Siderunner",
		Scale = 2.2,
		Pos = Vector( -42.5, 0, 13),
		Ang = Angle( 0, 90, 0 ), 
	},
	[15] = {
		ID = "5 LED Siderunner",
		Scale = 2.2,
		Pos = Vector( 42.5, 0, 13),
		Ang = Angle( 0, -90, 0 ), 
	},
	
}

EMV.Selections = {
	{
		Name = "Lighbar",
		Options = {
			{ Name = "Legacy", Auto = {1}, Props = {} },
			{ Name = "Valor", Auto = {13}, Props = {} },
			{ Name = "None", Auto = {}, Props = {}  }
		}
	},
	{
		Name = "Skirt",
		Options = {
			--{ Name = "None"},
			{ Name = "Strip", Auto = {14,15}, Props = {} },
		}
	},
	{
		Name = "Forced",
		Options = {
			{Name = "", Auto = {2,3,4,5,6,7,8,9,10,11,12}, Props = {1} },
			{Name = "None", Auto = {2,3,4,5,6,7,8,9,10,11,12}, Props = {1}}
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
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/sentry/durango.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/durango.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

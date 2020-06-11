AddCSLuaFile()

local VehicleName = "2013 BCSO Taurus Slicktop"
---CUSTOM COLORS---
local B = "BLUE"
local R = "RED"
local A = "AMBER"
local W = "WHITE"
local G = "GREEN"
local DR = "D_RED"
local CW = "C_WHITE"
local SW = "S_WHITE"
-------------------

local EMV = {}

EMV.Siren = 23
EMV.Skin = 7
EMV.Color = Color(255,255,255)

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
	{
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.3,
		Pos = Vector(0, 110, 17),
		Ang = Angle( -5, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .5,
		Pos = Vector(0, 124.7, 36),
		Ang = Angle( 270, 180, 90 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-38, 42, 56),
		Ang = Angle( 0, 108, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
    },
    --
    {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 87.2),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 87),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 76),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -28, 88),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -49.7, 86),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -49, 76),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	--
}
EMV.Auto = {
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1.2,
		Pos = Vector( 0, 28, 67 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( -23, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( -18.5, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = A,
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( -14, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Phase = "A"
	},{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( 23, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( 18.5, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = A,
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.1,
		Pos = Vector( 14, -60, 68 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Phase = "A"
	},
	
	{
		ID = "Whelen 700",
		Scale = 1.4,
		Pos = Vector( -26, -114.3, 48.6 ),
		Ang = Angle( 0, -20, 85 ),
		Color1 = B,
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.4,
		Pos = Vector( -28, -111.8, 52.5 ),
		Ang = Angle( 0, -26, 80 ),
		Color1 = CW,
		Phase = "A"
	},
	--
	{
		ID = "Whelen 700",
		Scale = 1.4,
		Pos = Vector( 26, -114.3, 48.6 ),
		Ang = Angle( 0, 20, 85 ),
		Color1 = CW,
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1.4,
		Pos = Vector( 28, -111.8, 52.5 ),
		Ang = Angle( 0, 26, 80 ),
		Color1 = B,
		Phase = "B"
	},
	--
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 40, 104.9, 21 ),
		Ang = Angle( 90, 0, w15 ),
		Color1 = B,
		Color2 = A
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.1,
		Pos = Vector( -40, 104.9, 21 ),
		Ang = Angle( 270, 0, -15 ),
		Color1 = B,
		Color2 = A
	},
	{
		ID = "Whelen Ion",
		Scale = 1.3,
		Pos = Vector( 18.23, 127, 36 ),
		Ang = Angle( 270, 0, 270 ),
		Color1 = B,
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.3,
		Pos = Vector( -18.23, 127, 36 ),
		Ang = Angle( 270, 0, 90 ),
		Color1 = B,
		Phase = "B"
	},
	{
		ID = "Whelen M9",
		Scale = .9,
		Pos = Vector( 21.5, 109, 37 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = CW,
		Color2 = CW,
		Phase = "TT"
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -46, 109, 37 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = CW,
		Color2 = CW,
		Phase = "TT"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 10, 130, 32 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = A
		
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -10, 130, 32 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = A
		
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -45, 56.5, 40.5 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = SW
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 45, 56.5, 40.5 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = A,
		Color2 = SW
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.5,
		Pos = Vector( -10, -83, 62.8 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Color2 = A
	},
		{
		ID = "Whelen Ion Split",
		Scale = 1.5,
		Pos = Vector( 10, -83, 62.8 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Color2 = A
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(-1, -5.60, -4),
		Ang = Angle(0, -5, 0),
	},
}

EMV.Patterns = {
	["headlights"] = {
		["wig-wag"] = {
			1
		}
	},

	["reverse_lights"] = {
		["code1"] = {
			2, 0, 2, 0, 1, 0, 1, 0
		},		
		["code3"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0 
		},
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
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} },
		{ Name = "STEADY", Stage = "C", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 65 ), Angle( 20, 90, 0 ), "takedown" },
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
				{ Vector( -10, -10, 65 ), Angle( 20, 180, 0 ), "alley" },
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
				{ Vector( 10, -10, 65 ), Angle( 20, 0, 0 ), "alley" },
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
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Lights = {
				{ Vector( 0, 25, 80 ), Angle( 10, 90, 0 ), "flood" },
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
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

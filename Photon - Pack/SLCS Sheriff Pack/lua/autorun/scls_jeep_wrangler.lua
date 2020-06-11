AddCSLuaFile()

local VehicleName = "SLCS Jeep Wrangler"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = "skins/pringle/slcs_sheriff_wrangler"
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
	{ 1, 1 }, -- bumperf
	{ 2, 1 }, -- bumperr
	{ 3, 0 }, -- hood
	{ 4, 1 }, -- wheel
	{ 5, 0 }, -- cockpit
}
EMV.Props = {
	{
		Model = "models/sprops/misc/sq_holes/hsqhole_d3_30.mdl",
		Scale = Vector( 1.9, 3.8, .3 ),
		Pos = Vector(0, -10, 86),
		Ang = Angle( 0, 0, 0),
		Material = "sprops/textures/sprops_metal4",
		Color = Color(0,0,0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Offroad LED Roof Lightbar",
		Scale = 1,
		Pos = Vector( 0, 8, 84),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Whelen Legacy",
		Scale = 1,
		Pos = Vector( 0, -10, 91),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -25, 86, 37.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 25, 86, 37.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},

	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -32.5, 20, 26),
		Ang = Angle( 0, -5, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -33.2, 1.5, 25.8),
		Ang = Angle( 0, 0, 1 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -33.2, -17, 25.5),
		Ang = Angle( 0, 0, 1 ),
		Color1 = R,
		Color2 = B
	},

	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 32.5, 20, 26),
		Ang = Angle( 0, 182, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 33.2, 1.5, 25.8),
		Ang = Angle( 0, 180, -1 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 33.2, -17, 25.5),
		Ang = Angle( 0, 180, -1),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -30, -50, 77),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 30, -50, 77),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -17.5, -86, 32),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 17.5, -86, 32),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Phase = PB
	},




	{
		ID = "Jeep Headlight Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2= B
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
			Name = "SPOT",
			Icon = "takedown",
			Stage = "S",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
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
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/tdmcars/wrangler.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/wrangler.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

AddCSLuaFile()

local VehicleName = "SLCS 2015 Tahoe Legacy"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = "skins/pringle/slcs_sheriff_tahoe_15"
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
	{ 1, 0 }, -- Windows
	{ 2, 0 }, -- Roofrack
	{ 3, 0 }, -- Plate
	{ 4, 0 }, -- clamped1
	{ 5, 0 }, -- clamped2
	{ 6, 0 }, -- clamped3
	{ 7, 0 }, -- clamped4
	{ 8, 0 }, -- clamped5
	{ 9, 0 }, -- clamped6
}
EMV.Props = {
	{
		Model = "models/supermighty/photon/suv_pushbar.mdl",
		Scale = Vector( 1, 1.12, 1 ),
		Pos = Vector(0, 130, 36.5),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 38, 48.5, 71 ),
		Ang = Angle( 20, -80, -20),
	},
	{
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = .60,
		Pos = Vector(0, -13, 55),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
	},
	{
		Model = "models/supermighty/photon/partition4.mdl",
		Scale = .56,
		Pos = Vector(0, -60, 61),
		Ang = Angle( 10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .4,
		Pos = Vector(5, 22, 52),
		Ang = Angle( 0, 140, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 16, 60),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 45, 66.8),
		Ang = Angle( 1, -10, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Whelen Legacy",
		Scale = 1.08,
		Pos = Vector( 0, -12, 92.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( -15, 130, 41),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( 15, 130, 41),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Whelen Ion Rear Right",
		Scale = 1,
		Pos = Vector( 22, -117.5, 84.5),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion Rear Left",
		Scale = 1,
		Pos = Vector( -23, -117.5, 84.5),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, 30, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, 11.5, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, -7, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, -25.4, 17.7),
		Ang = Angle( 0, 0, -1 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, 30, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, 11.5, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, -7, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, -25.4, 17.7),
		Ang = Angle( 0, -180, -1 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1.1,
		Pos = Vector( 0, 49, 70),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -37, -95, 67.5),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 37, -95, 67.5),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 35, -130, 30),
		Ang = Angle( 0, 5, 85 ),
		Phase = PA
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -35, -130, 30),
		Ang = Angle( 0, -5, 95 ),
		Phase = PB
	},
	{
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -41, 45, 74),
		Ang = Angle( 0, -95, 0 )
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
	Model = "models/smcars/2015_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/smtahoe_15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

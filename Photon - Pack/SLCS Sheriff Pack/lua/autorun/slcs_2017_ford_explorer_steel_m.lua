AddCSLuaFile()

local VehicleName = "SLCS 2017 Ford Explorer Steelies M"

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
EMV.Siren = "STLAWRENCE"
EMV.Skin = 8
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Fog Lights
	{ 2, 0 }, -- clamped1
	{ 3, 0 }, -- clamped2
	{ 4, 0 }, -- clamped3
	{ 5, 0 }, -- clamped4
	{ 6, 0 }, -- clamped5
	{ 7, 0 }, -- clamped6
	{ 8, 0 }, -- clamped7
	{ 9, 0 }, -- clamped8
}

EMV.Props = {
	{
		Model = "models/supermighty/photon/fpiu_pushbar.mdl",
		Scale = Vector( 1, 1.5, 1.2 ),
		Pos = Vector(0, 112, 38),
		Ang = Angle( 5, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(34, 105, 37.5),
		Ang = Angle( 0, 90, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = 1,
		Pos = Vector(-36, 104, 36.5),
		Ang = Angle( 0, 180, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 40.7, 41.2, 64 ),
		Ang = Angle( 0, -90, 0),
	},
	{
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(10, 24, 33.6),
		Ang = Angle( 0, 150, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(6, 16, 46.5),
		Ang = Angle( 0, 130, 0)
	},
	{
		Model = "models/schmal/watchguard_screen.mdl",
		Scale = .75,
		Pos = Vector(9, 20, 75.4),
		Ang = Angle( 0, -100, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .75,
		Pos = Vector(.35, 28, 75),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .30,
		Pos = Vector(-5, 50, 60),
		Ang = Angle( 0, -10, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/partition5.mdl",
		Scale = Vector(.6, .57, .61),
		Pos = Vector(0, -19.2, 40),
		Ang = Angle( 5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/partition4.mdl",
		Scale = .58,
		Pos = Vector(0, -68, 55),
		Ang = Angle( 10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {
	{
		ID = "Whelen Legacy",
		Scale = 1.07,
		Pos = Vector( 0, -15, 88.4 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -42, 44, 66.4 ),
		Ang = Angle( 0, -90, 0),
	},
	{
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -8, -125, 56.6 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 8, -125, 56.6 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Phase = PB
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1.1,
		Pos = Vector( 0, 49, 64),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -37, -90, 67.5),
		Ang = Angle( 0, 185, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 37, -90, 67.5),
		Ang = Angle( 0, -6, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( -10, 118, 40),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( 10, 118, 40),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Whelen Ion Rear Right",
		Scale = 1,
		Pos = Vector( 15, -108, 80.5),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion Rear Left",
		Scale = 1,
		Pos = Vector( -15, -108, 80.5),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.0, 32, 18),
		Ang = Angle( 0, 90, -20 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -44, -43, 18),
		Ang = Angle( 0, 90, -20 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.0, 32, 18),
		Ang = Angle( 0, -90, -20 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 44, -43, 18),
		Ang = Angle( 0, -90, -20 ),
		Color1 = B,
		Color2 = R
	},




	------
	{
		ID = "SSM 17 Explorer Tail",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = SW
	},
	{
		ID = "FPIU17 Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = B
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
	Model = "models/smcars/2017_ford_explorer_utility_steelies.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/smc_fordexplorer16.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

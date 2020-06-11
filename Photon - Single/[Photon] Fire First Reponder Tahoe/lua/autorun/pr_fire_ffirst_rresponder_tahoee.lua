AddCSLuaFile()

local VehicleName = "Fire First Responder 13 Tahoe"

local EMV = {}

EMV.Siren = 28
EMV.Skin = 12
EMV.Color = Color(0,0,0)
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
	{ 1, 0 }, -- ALPR
	{ 2, 1 }, -- Antenne
	{ 3, 2 }, -- Sidepanels
	{ 4, 0 }, -- Bullbar
	{ 5, 0 }, -- Lightbar
	{ 6, 1 }, -- Equiptment
	{ 7, 1 }, -- Grill
	{ 8, 0 }, -- Lamp
	{ 9, 0 }, -- Lights_frontwindow
	{ 10, 0 }, -- Lights_grill
	{ 11, 0 }, -- Lights_rearbumper
	{ 12, 0 }, -- Lights_rearwindow
	{ 13, 0 }, -- Partition
	{ 14, 0 }, -- Roofrack
	{ 15, 0 }, -- Runningboards
	{ 16, 0 }, -- Snorkle
	{ 17, 1 }, -- Wheels
	{ 18, 1 }, -- Windows
	{ 19, 0 }, -- clamped1
	{ 20, 0 }, -- clamped2
}

EMV.Auto = {
	{
		ID = "Feniex Fusion",
		Scale = 1.1,
		Pos = Vector( 0, 28, 78),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = DR
	},
	{
		ID = "Feniex Cobra 2X Dual",
		Scale = 1.2,
		Pos = Vector( 30, 47.5, 64),
		Ang = Angle( 0, -105, 0 ),
		Phase = PA,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = DR
	},
	{
		ID = "Feniex Cobra 2X Dual",
		Scale = 1.2,
		Pos = Vector( 0, 52.3, 64),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = DR
	},
	{
		ID = "Feniex Cobra 2X Dual",
		Scale = 1.2,
		Pos = Vector( -30, 48, 62),
		Ang = Angle( 0, -80, 0 ),
		Phase = PB,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = DR
	},
	{
		ID = "P Whelen Ion V Series",
		Scale = .7,
		Pos = Vector( 51, 36, 62),
		Ang = Angle( 0,  -110, 0 ),
		Color1 = R,
		Color2 = DR,
		Color3 = W,
		Phase = PA
	},
	{
		ID = "P Whelen Ion V Series",
		Scale = .7,
		Pos = Vector( -52, 35.5, 62),
		Ang = Angle( 0,  -65, 0 ),
		Color1 = R,
		Color2 = DR,
		Color3 = W,
		Phase = PB
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -21, 110, 47.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = DR,
		Phase = PA
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 21, 110, 47.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = DR,
		Phase = PB
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 20, 110.8, 39.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = DR,
		Phase = PA
	},
	{
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -20, 110.8, 39.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = DR,
		Phase = PB
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, 30, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, 11.5, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, -7, 17.5),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( -39, -25.4, 17.7),
		Ang = Angle( 0, 0, -1 ),
		Color1 = R,
		Color2 = DR
	},
	------------------------------
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, 30, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, 11.5, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, -7, 17.5),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Color2 = DR
	},
	{
		ID = "Pringles Skirt Lights Red",
		Scale = 1,
		Pos = Vector( 39, -25.4, 17.7),
		Ang = Angle( 0, -180, -1 ),
		Color1 = R,
		Color2 = DR
	},

	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 39, -75, 66),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = R
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( -39, -75, 66),
		Ang = Angle( 0, -180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = DR,
		Color2 = R
	},
	{
		ID = "DOJ Tomar 200S Rear",
		Scale = .6,
		Pos = Vector( 0, -100, 77),
		Ang = Angle( 0, -90, 0 ),
		Color1 = DR,
		Color2 = DR
	},
	{
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 10, -112.1, 50),
		Ang = Angle( 0, -182, 0 ),
		Color1 = DR,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 10, -112.7, 45),
		Ang = Angle( 0, -181.5	, 0 ),
		Color1 = DR,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -10, -112.1, 50),
		Ang = Angle( 0, -178, 0 ),
		Color1 = DR,
		Phase = PB
	},
	{
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -10, -112.7, 45),
		Ang = Angle( 0, -179.1	, 0 ),
		Color1 = DR,
		Phase = PB
	},
	{
		ID = "Spotlight Round Prop",
		Scale = 1,
		Pos = Vector( -41, 44, 68 ),
		Ang = Angle( 0, -100, 0),
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
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
	}
}

EMV.Lamps = {
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 135,
		Distance = 800,
	},
	
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles - Emergency",
	Author = "[CRPG] Officer Pringle",
	Model = "models/lonewolfie/chev_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_tahoe.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

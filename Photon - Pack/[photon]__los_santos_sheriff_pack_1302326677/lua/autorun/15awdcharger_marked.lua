AddCSLuaFile()

local VehicleName = "15 AWD Charger"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 2
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
	{ 1, 0 }, -- Rims
	{ 2, 0 }, -- Badges
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
}

EMV.Props = {
	{
		Model = "models/afgn_props/rambar_3/afgn_props_rambar_3.mdl",
		Scale = 9,
		Pos = Vector(-21, 60, 12),
		Ang = Angle( 0, 15, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-36, 35, 58),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(23, -108, 55.6),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-23, -108, 55.6),
		Ang = Angle( 6, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(25, -90, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-25, -90, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -15, 45),
		Ang = Angle( -2, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 37, 53),
		Ang = Angle( 0, -16, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 4,
		Pos = Vector(0, -6.5, 28),
		Ang = Angle( 0, 20, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/c3/console/pconsole.mdl",
		Scale = 1,
		Pos = Vector(0, 6, 15),
		Ang = Angle( 1, 175, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(10, 16, 38),
		Ang = Angle( 0, 135, -7),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = .96,
		Pos = Vector( 0, -10, 74.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( -10, -80, 57.4 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( 10, -80, 57.4 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( -2, 23, 32.4 ),
		Ang = Angle( 1, -2, 27)
	},
	{			
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -29, 110, 35 ),
		Ang = Angle( 3, 40, 0),
		Color1 = CW,
		Phase = PA
	},
	{			
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 29, 110, 35 ),
		Ang = Angle( -3, -40, 0),
		Color1 = CW,
		Phase = PB
	},
	




	{
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(1, -9.5, -9),
		Ang = Angle(3, 0, 0),
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CAUTION", Stage = "CAT", Components = {}, Disconnect = {} },
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
	Category = "Los Santos Sheriff",
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

AddCSLuaFile()

local VehicleName = "2009 Charger"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 4
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
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2006
	{ 3, 0 }, -- Police Package
	{ 4, 1 }, -- front bumper
	{ 5, 0 }, -- rear bumper
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- hood
	{ 8, 0 }, -- wing
	{ 9, 1 }, -- wheels
	{ 10, 4 }, -- [EM] Push bar
	{ 11, 2 }, -- [EM] Grille
	{ 12, 1 }, -- [EM] Spotlight
	{ 13, 1 }, -- [EM] Mirrors
	{ 14, 1 }, -- [EM] Windshield lower
	{ 15, 2 }, -- [EM] Windshield upper
	{ 16, 1 }, -- [EM] Sides
	{ 17, 7 }, -- [EM] Roof light bars
	{ 18, 1 }, -- [EM] Rear side windows
	{ 19, 0 }, -- [EM] Rear window upper lights
	{ 20, 0 }, -- [EM] Rear window lower lights
	{ 21, 3 }, -- [EM] Antennas
	{ 22, 2 }, -- [EM] Rear plate leds
	{ 23, 3 }, -- [EM] Console Unit
	{ 24, 0 }, -- [EM] Prisoner Cage
}
EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.3,
		Pos = Vector(0, 120, 13),
		Ang = Angle( -5, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},	
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-37, 38, 55),
		Ang = Angle( 5, 115, -15),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
    },
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = .95,
		Pos = Vector( 0, -8, 74 ),
		Ang = Angle( .5, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( 10, -78.5, 58 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( -10, -78.5, 58 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( 32, -108, 48 ),
		Ang = Angle( 0, 10, 90),
		Color1 = DR,
		Phase = PA
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( -32, -108, 48 ),
		Ang = Angle( 0, -10, 90),
		Color1 = DR,
		Phase = PB
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 119.5, 39.5),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 119.5, 39.5),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 21.6, 34),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(-2, -8.4, -5),
		Ang = Angle(0, -5, 0),
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
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/tdmcars/emergency/chargersrt8.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/chargersrt8.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

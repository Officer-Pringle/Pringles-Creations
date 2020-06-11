AddCSLuaFile()

local VehicleName = "Chevy Impala"

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
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Taxi_Sign
	{ 2, 0 }, -- Equiptment
	{ 3, 1 }, -- Taxi_Badges
	{ 4, 0 }, -- Fbumper
	{ 5, 0 }, -- Rbumper
	{ 6, 0 }, -- Front_window_lights
	{ 7, 0 }, -- Rear_window_lights
	{ 8, 0 }, -- Bullbar
	{ 9, 0 }, -- Laptop
	{ 10, 0 }, -- Lamp
	{ 11, 0 }, -- Lightbar
	{ 12, 1 }, -- Numberplate
	{ 13, 1 }, -- Antenne
	{ 14, 1 }, -- ALPR
	{ 15, 1 }, -- Wheels
	{ 16, 0 }, -- clamped1
}
EMV.Props = {
	{
		Model = "models/lonewolfie/setina_2_impalasize.mdl",
		Scale = 1,
		Pos = Vector(0,120,25),
		Ang = Angle( 5, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 5,
		Pos = Vector(-4, -30, 20),
		Ang = Angle( 0, 200, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = .90,
		Pos = Vector( 0, -10, 72.2),
		Ang = Angle( 3, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( 10, -85, 55.5 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( -10, -85, 55.5 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -60, 53 ),
		Ang = Angle( 0, 90, 27),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -60, 53 ),
		Ang = Angle( 0, -90, 27),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 114.5, 29 ),
		Ang = Angle( 0, -10, 16),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 114.6, 29 ),
		Ang = Angle( 0, 10, 16),
		Color1 = B,
		Phase = PB
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
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/lonewolfie/chev_impala_09.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_impala_09.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

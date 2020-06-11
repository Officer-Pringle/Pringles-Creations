AddCSLuaFile()

local VehicleName = "Halloween 2017 Explorer"

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
EMV.Siren = 2
EMV.Skin = 6
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
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector(  1, 1, .85),
		Pos = Vector(0, 118, 32.6),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 40, 46, 64 ),
		Ang = Angle( 20, -84, -20),
	},
	{
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = .58,
		Pos = Vector(0, -19.5, 55),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE
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
		ID = "Code 3 x21 TR Clear",
		Scale = 1.05,
		Pos = Vector( 0, -15, 90.5 ),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = R
	},
	{
		ID = "Code 3 x21 TR Clear",
		Scale = 1.05,
		Pos = Vector( 0, -15, 90.5 ),
		Ang = Angle( 0, -90, 0 ),
		Color1 = A,
		Color2 = A
	},
	{
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 8, -124.9, 56.6),
		Ang = Angle( 0, 182.5, 0 ),
		Color1 = R,
		Color2 = W
	},
	{
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -8, -124.9, 56.6),
		Ang = Angle( 0, 176, 0 ),
		Color1 = W,
		Color2 = R
	},
	{
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 8, -124.9, 56.6),
		Ang = Angle( 0, 182.5, 0 ),
		Color1 = A,
		Color2 = W
	},
	{
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -8, -124.9, 56.6),
		Ang = Angle( 0, 176, 0 ),
		Color1 = W,
		Color2 = A
	},

	{
		ID = "FPIU17 Fog Lamps",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = A,
		Color2 = A
	},
	{
		ID = "FPIU17 Fog Lamps",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = R
	},
	--
	{
		ID = "FPIU17 Mirror Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = A,
		Color2 = A
	},
	{
		ID = "FPIU17 Mirror Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = R
	},
	{
		ID = "FPIU17 Front Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = SW,
		Color2 = SW
	},
	--
	{
		ID = "SSM 17 Explorer Tail",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = A,
		Color2 = A
	},
	{
		ID = "SSM 17 Explorer Tail",
		Scale = 1,
		Pos = Vector( 0, 0, 00),
		Ang = Angle( 0, 0, 0 ),
		Color1 = R,
		Color2 = R
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
	Category = "Pringles - Emergency",
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

AddCSLuaFile()

local VehicleName = "[Photon] Pierce Quantum Pumper"

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

EMV.Siren = 43
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- watermark
	{ 2, 0 }, -- clamped1
	{ 3, 0 }, -- clamped2
	{ 4, 0 }, -- clamped3
}

EMV.Auto = {
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( 47., 196, 31),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( -47., 196, 31),
		Ang = Angle( 0, 180, 0 ),
		Phase = "FDNY"
	},
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( -48.8, 66.5, 52.5),
		Ang = Angle( 0, 180, 0 ),
		Phase = "A"
	},
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( -48.5, -104.7, 52.8),
		Ang = Angle( 0, 180, 0 ),
	},
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( 48.8, 66.5, 52.5),
		Ang = Angle( 0, 0, 0 ),
		Phase = "A"
	},
	{
		ID = "Whelen 600 Red",
		Scale = 1,
		Pos = Vector( 48.5, -104.7, 52.8),
		Ang = Angle( 0, 0, 0 ),
	},

	{
		ID = "P Whelen 600 White",
		Scale = 1,
		Pos = Vector( -48.8, 66.5, 110),
		Ang = Angle( 0, 180, 0 ),
		Phase = "B"
	},
	{
		ID = "P Whelen 600 White",
		Scale = 1,
		Pos = Vector( 48.8, 66.5, 110),
		Ang = Angle( 0, 0, 0 ),
		Phase = "B"
	},
	
	{
		ID = "P Whelen 600 White",
		Scale = .95,
		Pos = Vector( 41.5, -190.55, 32),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "P Whelen 600 White",
		Scale = .95,
		Pos = Vector( -41.5, -190.55, 32),
		Ang = Angle( 0, -90, 0 ),
		
	},
	{
		ID = "Dome Light Red",
		Scale = 1.4,
		Pos = Vector( -43, -184, 93.5),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen 600 Red",
		Scale = .8,
		Pos = Vector( -35, 198, 61.5),
		Ang = Angle( 0, 90, 0 ),
	},
	{
		ID = "Whelen 600 Red",
		Scale = .8,
		Pos = Vector( 35, 198, 61.5),
		Ang = Angle( 0, 90, 0 ),
		Phase = PA
	},





	{
		ID = "Contender Lightbar",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "P Con Traf Bar",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "CAT", Stage = "C", Components = {}, Disconnect = {} },
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
	Model = "models/sentry/fireengine.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/fireengine.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

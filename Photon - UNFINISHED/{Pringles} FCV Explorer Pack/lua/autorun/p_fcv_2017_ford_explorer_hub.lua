AddCSLuaFile()

local VehicleName = "2017 FCV Ford Explorer (Hub)"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 0
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

EMV.Auto = {
	{
		ID = "FPIU17 Mirror Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
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
	Category = "Pringles: Customizable Photon",
	Author = "Officer Pringle",
	Model = "models/smcars/2017_ford_explorer_utility_hubcaps.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/smc_fordexplorer16.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

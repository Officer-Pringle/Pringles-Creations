AddCSLuaFile()

local VehicleName = "Civillian Explorer"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- badge
	{ 2, 0 }, -- dashtext
	{ 3, 0 }, -- dashglass
	{ 4, 0 }, -- chrome
	{ 5, 0 }, -- Rims
	{ 6, 2 }, -- Rear Layout
	{ 7, 1 }, -- Fog Lamps
	{ 8, 0 }, -- clamped1
	{ 9, 0 }, -- clamped2
	{ 10, 0 }, -- clamped3
	{ 11, 0 }, -- clamped4
}

EMV.Auto = {}

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
	Category = "Pringles Citizen Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/schmal/fpiu/ford_utility.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/schmal/ford_pol_int_2016.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

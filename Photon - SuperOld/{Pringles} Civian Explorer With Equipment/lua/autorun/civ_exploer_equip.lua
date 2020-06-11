AddCSLuaFile()

local VehicleName = "Civillian Explorer with Equipment"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- badge
	{ 2, 0 }, -- dashtext
	{ 3, 0 }, -- dashglass
	{ 4, 0 }, -- chrome
	{ 5, 0 }, -- Rims
	{ 6, 0 }, -- Rear Layout
	{ 7, 0 }, -- Fog Lamps
	{ 8, 0 }, -- clamped1
	{ 9, 0 }, -- clamped2
	{ 10, 0 }, -- clamped3
	{ 11, 0 }, -- clamped4
}
EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.4,
		Pos = Vector(0, 115.5, 20),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-38, 45, 60),
		Ang = Angle( 0, 120, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/c3/console/pconsole.mdl",
		Scale = 1,
		Pos = Vector(1.5, 15, 25),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
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

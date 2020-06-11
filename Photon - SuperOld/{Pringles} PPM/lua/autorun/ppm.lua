AddCSLuaFile()

local VehicleName = "Pringles Police Bike"

local EMV = {}

EMV.Siren = 25
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
}

EMV.Auto = {
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector( 1.5, 29.1, 36 ),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector( -1.5, 29.1, 35.8 ),
		Ang = Angle( 90, 0, 0 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = .55,
		Pos = Vector(-8.8, 27.02, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .55,
		Pos = Vector(-8.8, 27.02, 31.9 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .55,
		Pos = Vector(8.8, 27.02, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .55,
		Pos = Vector(8.8, 27.02, 31.9 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1.5,
		Pos = Vector( 6.02, -40.5, 29.6 ),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "BLUE",
		Color2 = "AMBER",
		Color3 = "WHITE"
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1.5,
		Pos = Vector( -6.02, -40.5, 29.6 ),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "RED",
		Color2 = "AMBER",
		Color3 = "WHITE"
	},
	{
		ID = "Whelen Vertex",
		Scale = 1.2,
		Pos = Vector( -6.99, -46.05, 22.5),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 1.2,
		Pos = Vector( 6.99, -46.05, 22.5 ),
		Ang = Angle( 0, 0, 90),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = .75,
		Pos = Vector( -11.39, -44.45, 18 ),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = .75,
		Pos = Vector( -11.39, -44.45, 16.5 ),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = .75,
		Pos = Vector( 11.39, -44.45, 18 ),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = .75,
		Pos = Vector( 11.39, -44.45, 16.5 ),
		Ang = Angle( 0, 0, 90 ),
		Color1 = "RED",
		Phase = "A"
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
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/sentry/polbike.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/polbike.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

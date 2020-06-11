AddCSLuaFile()

local VehicleName = "2015 AWD Charger Undercover"

local EMV = {}

EMV.Siren = 43
EMV.Skin = 0
EMV.Color = Color(0,0,30)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Rims
	{ 2, 0 }, -- Badges
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
}

EMV.Props = {}

EMV.Auto = {
	{
		ID = "Tomar 200S Rear",
		Scale = .90,
		Pos = Vector( 0, -76.2, 55.6 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -52, 66),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 25, -110.5, 46.7 ),
		Ang = Angle( 0, 15, 90 ),
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -25, -110.5, 46.7 ),
		Ang = Angle( 0, 15, 90 ),
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.1,
		Pos = Vector( -32, -108, 46.2 ),
		Ang = Angle( 5, 157, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.1,
		Pos = Vector( 32, -108, 46.2 ),
		Ang = Angle( -5, 205, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -44.5, 36.1, 53.5 ),
		Ang = Angle( 0, 200, 180 ),
		Color1 = "RED",
		Phase  = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 44.5, 36.1, 53.5 ),
		Ang = Angle( 0, 168, 180 ),
		Color1  = "BLUE",
		Phase = "CA"
	},
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1.15,
		Pos = Vector( 0, 22, 64.5),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 2.5,
		Pos = Vector( 30, 109, 18 ),
		Ang = Angle( 0, -28, 270 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 2.5,
		Pos = Vector( -30, 109, 18 ),
		Ang = Angle( 0, 28, 270 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 116.3, 36.6 ),
		Ang = Angle( 0, -7, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 115.8, 31.5 ),
		Ang = Angle( 0, -7, -15 ),
		Color1 = "BLUE",
		Phase = "B"

	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 116.3, 36.6 ),
		Ang = Angle( 0, 7, 0 ),
		Color1 = "RED",
		Phase = "B"

	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 115.8, 31.5 ),
		Ang = Angle( 0, 7, -15 ),
		Color1 = "BLUE",
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
	Category = "Pringles Unmarked Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/smcars/2015_charger.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/dodge_charger15.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
	
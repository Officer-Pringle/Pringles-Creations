AddCSLuaFile()

local VehicleName = "Unmarked Dodge Hellcat"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 2
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- body
	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
	{ 4, 0 }, -- clamped4
	{ 5, 0 }, -- clamped5
	{ 6, 0 }, -- clamped6
	{ 7, 0 }, -- clamped7
	{ 8, 0 }, -- clamped8
	{ 9, 0 }, -- clamped9
	{ 10, 1 }, -- License plate
	{ 11, 0 }, -- Hood
	{ 12, 0 }, -- Window tinting
}

EMV.Props = {
	
}

EMV.Auto = {
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1.15,
		Pos = Vector( 0, 21, 64.5),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 16.5, 111, 34.5 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -42, 111, 35 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Tomar 200S Rear",
		Scale = .90,
		Pos = Vector( 0, -60, 65 ),
		Ang = Angle( 0, 270, 0 )
	},
	------------Driver TailLight----------
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(-15, -115.09, 45.8),
		Ang = Angle( 0, -3, 170 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(-20.5, -114.75, 45.8),
		Ang = Angle( 0, -3, 170 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(-26.10, -114.35, 45.8),
		Ang = Angle( 0, -3, 170 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(-31.7, -113.85, 45.8),
		Ang = Angle( 0, -3, 170 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(-35, -113.51, 45.8),
		Ang = Angle( 0, -3, 170 ),
		Color1 = "RED",
		Phase = "A"
	},
	----------------Passenger TailLight--------------
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(15, -115.09, 45.8),
		Ang = Angle( 0, 3, 170 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(20.5, -114.75, 45.8),
		Ang = Angle( 0, 3, 170 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(26.10, -114.35, 45.8),
		Ang = Angle( 0, 3, 170 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(31.7, -113.85, 45.8),
		Ang = Angle( 0, 3, 170 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .90,
		Pos = Vector(35, -113.51, 45.8),
		Ang = Angle( 0, 3, 170 ),
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
	Model = "models/crsk_autos/dodge/challenger_hellcat_2015.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/crsk_autos/crsk_dodge_challenger_hellcat_2015.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

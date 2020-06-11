AddCSLuaFile()

local VehicleName = "Brute Constustion truck"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- 
	{ 1, 0 }, -- 
	{ 2, 0 }, -- 
	{ 3, 1 }, -- crane
	{ 4, 0 }, -- bed
}

EMV.Auto = {
	{
		ID = "Tomar 200S Rear",
		Scale = .95,
		Pos = Vector( 0, -107, 65 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "AMBER",
		Color2 = "WHITE",
		Color3 = "AMBER"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.5,
		Pos = Vector( -53, -133.5, 25 ),
		Ang = Angle( 90, 180, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.5,
		Pos = Vector( 53, -133.5, 25 ),
		Ang = Angle( 90, 180, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( -35, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( -29, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( -23, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( -17, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	---------------------
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( 35, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( 29, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( 23, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1.5,
		Pos = Vector( 17, 100, 103 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 2.5,
		Pos = Vector( 49, 179, 23.5 ),
		Ang = Angle( 90, -20, 0 ),
		Color1 = "AMBER",
		Color2 = "AMBER"
		
	},
	{
		ID = "Whelen Ion Split",
		Scale = 2.5,
		Pos = Vector( -49, 179, 23.5 ),
		Ang = Angle( -90, -20, 0 ),
		Color1 = "AMBER",
		Color2 = "AMBER"
		
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
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
	Model = "models/tdmcars/gtav/utillitruck.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/gtav/utillitruck.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

AddCSLuaFile()

local VehicleName = "Funny Bus"

local EMV = {}

EMV.Siren = 43
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Bus
	{ 1, 0 }, -- 
	{ 2, 0 }, -- Banners
}

EMV.Auto = {
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 2,
		Pos = Vector( 0, 246.7, 138 ),
		Ang = Angle( 10, 90, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 3,
		Pos = Vector( 32, 256.49, 64),
		Ang = Angle( 0, 0, 270 ),
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( 42, 256.66, 64),
		Ang = Angle( -90, 270, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 3,
		Pos = Vector( -32, 256.49, 64),
		Ang = Angle( 0, 0, 270 ),
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( -42, 256.66, 64),
		Ang = Angle( -90, 270, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Tomar 200S Rear",
		Scale = 1.28,
		Pos = Vector( 0, -265, 106),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Small Front Interior Trio",
		Scale = 1.8,
		Pos = Vector( -20, -264, 138 ),
		Ang = Angle( 0, 90, 0 )
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
	Model = "models/tdmcars/bus.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/tdmcars/bus.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

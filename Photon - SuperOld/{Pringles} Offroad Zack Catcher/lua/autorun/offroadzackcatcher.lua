AddCSLuaFile()

local VehicleName = "Zack Catcher"

local EMV = {}

EMV.Siren = 4
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- Stripe
	{ 2, 0 }, -- Frame
	{ 3, 0 }, -- Ariel
	{ 4, 0 }, -- Lamps
	{ 5, 1 }, -- Licenceplate
	{ 6, 1 }, -- Engine
	{ 7, 0 }, -- Wheels
}

EMV.Auto = {
	{
		ID = "Whelen Ultra Freedom",
		Scale = .74,
		Pos = Vector( 0, -15, 65.2),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen Vertex",
		Scale = 2,
		Pos = Vector( 6.9, 87.1, 34 ),
		Ang = Angle( 0, 0, 270 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 2,
		Pos = Vector( -6.9, 87.1, 34 ),
		Ang = Angle( 0, 0, 270 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Tomar 200S Rear",
		Scale = .50,
		Pos = Vector( 0, -80.52, 31.5 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Tomar 200S Rear",
		Scale = 1,
		Pos = Vector( -27.2, 2, 20 ),
		Ang = Angle( 0, 171.5, 0)
	},
	{
		ID = "Tomar 200S Rear",
		Scale = 1,
		Pos = Vector( 27.2, 2, 20 ),
		Ang = Angle( 0, 8.5, 0 )
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/lonewolfie/yare_buggy.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/yare_buggy.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

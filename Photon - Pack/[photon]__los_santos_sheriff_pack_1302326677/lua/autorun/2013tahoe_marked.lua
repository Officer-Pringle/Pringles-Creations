AddCSLuaFile()

local VehicleName = "Chevy Tahoe Old"

local EMV = {}

EMV.Siren = 35
EMV.Skin = 4
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 1 }, -- ALPR
	{ 2, 1 }, -- Antenne
	{ 3, 2 }, -- Sidepanels
	{ 4, 2 }, -- Bullbar
	{ 5, 0 }, -- Lightbar
	{ 6, 1 }, -- Equiptment
	{ 7, 1 }, -- Grill
	{ 8, 0 }, -- Lamp
	{ 9, 0 }, -- Lights_frontwindow
	{ 10, 0 }, -- Lights_grill
	{ 11, 0 }, -- Lights_rearbumper
	{ 12, 0 }, -- Lights_rearwindow
	{ 13, 0 }, -- Partition
	{ 14, 0 }, -- Roofrack
	{ 15, 0 }, -- Runningboards
	{ 16, 0 }, -- Snorkle
	{ 17, 1 }, -- Wheels
	{ 18, 0 }, -- Windows
	{ 19, 0 }, -- clamped1
	{ 20, 0 }, -- clamped2
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = 1.06,
		Pos = Vector( 0, -10, 89 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( 10, -108.2, 64 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( -10, -108.2, 64 ),
		Ang = Angle( 180, 90, 0)
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CAUTION", Stage = "CAT", Components = {}, Disconnect = {} },
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
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/lonewolfie/chev_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_tahoe.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

AddCSLuaFile()

local VehicleName = "2015 AWD LS Charger"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 2
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Rims
	{ 2, 0 }, -- Badges
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
}

EMV.Props = {
	[1] = {
		Model = "models/lonewolfie/setina_2_impalasize.mdl",
		Scale = 1.3,
		Pos = Vector(0, 120, 30),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Whelen Legacy",
		Scale = 1,
		Pos = Vector( 0, -5, 73.4),
		Ang = Angle( 2, 90, 0 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0, 45, 53 ),
		Ang = Angle( 0, 90, 180 ),
		Phase  = "A"
	},
	{
		ID = "Tomar 200S Rear",
		Scale = .90,
		Pos = Vector( 0, -75, 55.5 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 121.2, 42 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 121.2, 42 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( -30, -108, 47 ),
		Ang = Angle( 0, -20, 90 ),
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( 30, -108, 47 ),
		Ang = Angle( 0, 20, 90 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -36.5, -49, 54.5),
		Ang = Angle( 0, 95, 15 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 36.5, -49, 54.5),
		Ang = Angle( 0, -95, 15 )
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
	Category = "Pringles Cars",
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

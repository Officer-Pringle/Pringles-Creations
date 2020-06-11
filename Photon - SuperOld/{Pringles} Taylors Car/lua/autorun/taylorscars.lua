AddCSLuaFile()

local VehicleName = "Taylors Car"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(0,0,40)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Inta
	{ 2, 0 }, -- Intb
	{ 3, 0 }, -- blank
	{ 4, 2 }, -- fbumper
	{ 5, 1 }, -- rbumper
	{ 6, 0 }, -- hood
	{ 7, 1 }, -- cage
	{ 8, 0 }, -- numberplate
	{ 9, 3 }, -- wing
	{ 10, 0 }, -- wheels
	{ 11, 0 }, -- clamped1
}
EMV.Props = {
	[1] = {
		Model = "",
		Scale = 1,
		Pos = Vector(0, 0, 100),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Whelen Liberty SX",
		Scale = .95,
		Pos = Vector( 0, -25, 59.95),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "GREEN",
		Color2 = "GREEN"
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0, 12.7, 44 ),
		Ang = Angle( 0, 90, 180 ),
		Color1 = "GREEN",
		Color2 = "WHITE"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 15, -55.8, 50.5 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "GREEN",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -15, -55.8, 50.5 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "WHITE",
		Phase = "B"
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
	Category = "AAA Bitch",
	Author = "Officer Pringle {1A-181}",
	Model = "models/lonewolfie/tvr_sagaris.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/lwcars/tvr_sagaris.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

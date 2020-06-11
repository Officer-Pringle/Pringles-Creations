AddCSLuaFile()

local VehicleName = "Pringles Tow Truck"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
}

EMV.Props = {
	[1] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .60,
		Pos = Vector(4, 32, 60),
		Ang = Angle( 0, 20, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 40, 74),
		Ang = Angle( 0, 130, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Pos = Vector(-5, 50.01, 77),
		Ang = Angle( 0, 158, 270 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {
	{
		ID = "Whelen Liberty II",
		Scale = 1.2,
		Pos = Vector( 0, 34, 110.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "AMBER",
		Color2 = "AMBER"
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 50.1, -210, 49),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "AMBER"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 50.1, -160, 49),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "AMBER",
		Phase = "A"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 50.1, -110, 49),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "AMBER",
		Phase = "B"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 50.1, -60, 49),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "AMBER",
		Phase = "A"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 50.1, -20, 49),
		Ang = Angle( 0, 90, 90 ),
		Color1 = "AMBER",
		Phase = "B"
		
	},
----------------------------------------------------------------------------
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -50.1, -210, 49),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "AMBER"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -50.1, -160, 49),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "AMBER",
		Phase = "A"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -50.1, -110, 49),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "AMBER",
		Phase = "B"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -50.2, -60, 49),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "AMBER",
		Phase = "A"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -50.2, -20, 49),
		Ang = Angle( 0, 270, 90 ),
		Color1 = "AMBER",
		Phase = "B"
		
	},
	{
		ID = "Whelen M9",
		Scale = .60,
		Pos = Vector( -52, 108.5, 61),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "AMBER",
		Color2 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Whelen M9",
		Scale = .60,
		Pos = Vector( 36.5, 108.5, 61 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "AMBER",
		Color2 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Tomar 200S Rear",
		Scale = 1,
		Pos = Vector( 0, -222.410, 45 ),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "AMBER",
		Color2 = "WHITE",
		Color3 = "AMBER"
	},

}	


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M2", Components = {}, Disconnect = {} }	
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} },
		{ Name = "Cruise", Stage = "C", Components = {"Tomar 200S Rear"}, Disconnect = {} }
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/sickness/international_2674.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/international_2674.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

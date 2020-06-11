AddCSLuaFile()

local VehicleName = "Chrismas Car"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- McLaren
	{ 1, 0 }, -- P1
	{ 2, 0 }, -- 
	{ 3, 0 }, -- 
	{ 4, 0 }, -- 
	{ 5, 0 }, -- 
	{ 6, 0 }, -- frontbumper
	{ 7, 0 }, -- wing
}
EMV.Props = {
	[1] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .60,
		Pos = Vector(14, 28, 18.3),
		Ang = Angle( 0, 130, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/lonewolfie/toughbook.mdl",
		Scale = .85,
		Pos = Vector(4, 18, 41.5),
		Ang = Angle( 10, 230, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = .80,
		Pos = Vector(0, 32, 47.9),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .30,
		Pos = Vector(5, 50, 38),
		Ang = Angle( 0, -10, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},

}
EMV.Auto = {
	{
		ID = "Federal Signal Valor",
		Scale = .70,
		Pos = Vector( 0, 11, 56 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "GREEN",
		Color2 = "RED",
		Color3 = "WHITE",
	},
	{
		ID = "Whelen SlimLighter",
		Scale = .80,
		Pos = Vector( 0, 60.8, 36.1 ),
		Ang = Angle( 0, 89, 0 ),
		Color1 = "RED",
		Color2 = "GREEN"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.5,
		Pos = Vector( 34, 93, 28 ),
		Ang = Angle( -5, 315, 10 ),
		Color1 = "RED",
		Color2 = "GREEN",

	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -36, 90, 28.5 ),
		Ang = Angle( 15, -315, 15 ),
		Color1 = "GREEN",
		Color2 = "RED",
		
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -23, -99, 21.5 ),
		Ang = Angle( 0, 165, 0 ),
		Color1 = "GREEN",
		Phase = "A"

	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 23, -99, 21.5 ),
		Ang = Angle( 0, -164, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = .70,
		Pos = Vector( -48, 37.8, 40 ),
		Ang = Angle( 0, 200, 80 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = .70,
		Pos = Vector( 48, 37.8, 40 ),
		Ang = Angle( 0, -200, 80 ),
		Color1 = "GREEN",
		Phase = "B"
	},
	{
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector( 0, 113.2, 5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "RED",
		Color2 = "GREEN"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 30.5, 32),
		Ang = Angle( 0, -18, 63 )
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
	Model = "models/tdmcars/mclaren_p1.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/mclarenp1.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

AddCSLuaFile()

local VehicleName = "NYSP Charger"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 7
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2012
	{ 3, 0 }, -- 
	{ 4, 0 }, -- 
	{ 5, 0 }, -- 
	{ 6, 0 }, -- 
	{ 7, 0 }, -- push bar
	{ 8, 1 }, -- grille leds
	{ 9, 1 }, -- front bumper leds
	{ 10, 3 }, -- front interior lightbar
	{ 11, 4 }, -- lightbar
	{ 12, 2 }, -- rear interior lightbar
	{ 13, 1 }, -- rear passenger leds
	{ 14, 0 }, -- antennas
	{ 15, 0 }, -- spotlights
	{ 16, 0 }, -- wing
	{ 17, 0 }, -- wheel
	{ 18, 0 }, -- cage
}
EMV.Props = {

	[1] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1.425,
		Pos = Vector( 0 , -25 , 105 ), 
		Ang = Angle( 0 , 0 , 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[2] = {
		Model = "models/c3/plate/licenseplate.mdl",
		Scale = 0.75,
		Pos = Vector( -0.62 , -126.5 , 30.80),
		Ang = Angle( 0 , -90 , 0 ),     
		Skin = 1,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	[3] = {
		Model = "models/c3/plate/licenseplate.mdl",
		Scale = 1,
		Pos = Vector( 1.2 , 121.2 , 22.368 ),
		Ang = Angle( 0 , 90 , 0 ),     
		Skin = 1,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	
}

EMV.Auto = {
	{
		ID = "NYSP Whelen Liberty 2018",
		Scale = 1,
		Pos = Vector( 0, -15, 73.3 ),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 8.5, 123.7, 41.8 ),
		Ang = Angle( 0, 180, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = .65,
		Pos = Vector( 19.8, 123.9, 34.8),
		Ang = Angle( 90, 90, 180),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -8.5, 123.7, 41.8 ),
		Ang = Angle( 0, 180, 90 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .65,
		Pos = Vector( -19.8, 123.9, 34.9),
		Ang = Angle( 90, 90, 0),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1.7,
		Pos = Vector( -24, -118.5, 46.7),
		Ang = Angle( 0, 350, 90 ), 
		Phase = "A"
		
	},
	{
		ID = "Whelen 700",
		Scale = 1.7,
		Pos = Vector( 24, -118.5, 46.5),
		Ang = Angle( 1, 370, 90 ),
		Phase = "B",

		
	},	
	{
		ID = "Whelen TAM85",
		Scale =  0.50,
		Pos = Vector( 0 , -80, 59.6 ),
		Ang = Angle( 0 , 90, 0 ),
		
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
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/emergency/dod_charger12.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/charger2012.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

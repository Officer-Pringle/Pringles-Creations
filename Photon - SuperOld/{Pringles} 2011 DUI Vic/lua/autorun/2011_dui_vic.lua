AddCSLuaFile()

local VehicleName = "2011 DUI Vic"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- 
	{ 1, 0 }, -- [EM] Spot Lights
	{ 2, 0 }, -- [EM] Dash
	{ 3, 0 }, -- Ford
	{ 4, 0 }, -- Crown
	{ 5, 0 }, -- Victoria
	{ 6, 0 }, -- P71
	{ 7, 0 }, -- 
	{ 8, 0 }, -- 
	{ 9, 0 }, -- 
	{ 10, 0 }, -- 
	{ 11, 0 }, -- [EM] Front Window Lights
	{ 12, 3 }, -- [EM] Push Bar
	{ 13, 1 }, -- [EM] Grille
	{ 14, 1 }, -- [EM] Mirrors
	{ 15, 0 }, -- [EM] Light Bars
	{ 16, 0 }, -- [EM] Interior Equipment
	{ 17, 3 }, -- [EM] Interior Consoles Slot 1
	{ 18, 1 }, -- [EM] Interior Consoles Slot 2
	{ 19, 1 }, -- [EM] Cage
	{ 20, 0 }, -- [EM] Rear Door Window Lights
	{ 21, 0 }, -- [EM] Rear Window Lights
	{ 22, 0 }, -- [EM] Rear Window Lower Lights
	{ 23, 0 }, -- [EM] Headlight Ions
	{ 24, 0 }, -- Front Door Panels
	{ 25, 0 }, -- Rear Door Panels
	{ 26, 0 }, -- Trunk Panel
	{ 27, 0 }, -- Trunk Badge
	{ 28, 1 }, -- Door Handles
	{ 29, 0 }, -- Rear Windows
	{ 30, 1 }, -- Radio Antennas
	{ 31, 1 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	
	[1] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = .60,
		Pos = Vector(1.3, 11.2, 36),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0, 14, 67.5 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 39.8, -55, 54.1 ),
		Ang = Angle( 2, 90, 70 )
	},
	{
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -39.8, -55, 54.1 ),
		Ang = Angle( -2, 270, 70 )
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.3,
		Pos = Vector( 0, -80, 56 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 1.8,
		Pos = Vector( -10, -128.7, 44 ),
		Ang = Angle( 90, 0, 90 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.8,
		Pos = Vector( 10, -128.7, 44 ),
		Ang = Angle( 90, 0, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1.4,
		Pos = Vector( -.25, 20, 35 ),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -40, 98, 37 ),
		Ang = Angle( 0, 78, 15 ),
		Color1 = "AMBER",
		Color2 = "AMBER",
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 40, 98, 37 ),
		Ang = Angle( 0, -78, 15 ),
		Color1 = "AMBER",
		Color2 = "AMBER",	
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 111.3, 39),
		Ang = Angle( 0, 6, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 111.3, 39),
		Ang = Angle( 0, 6, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 36),
		Ang = Angle( 0, 6, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 36),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 46, 26.5, 55),
		Ang = Angle( 0, -22, 0 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -46, 26.5, 55),
		Ang = Angle( 0, 22, 0 ),
		Color1 = "BLUE",
		Phase = "CA"
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
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

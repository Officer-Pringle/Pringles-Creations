AddCSLuaFile()

local VehicleName = "2011 Undercover Crown Vic"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 0
EMV.Color = Color(255,255,255)

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
	{ 17, 0 }, -- [EM] Interior Consoles Slot 1
	{ 18, 0 }, -- [EM] Interior Consoles Slot 2
	{ 19, 0 }, -- [EM] Cage
	{ 20, 0 }, -- [EM] Rear Door Window Lights
	{ 21, 0 }, -- [EM] Rear Window Lights
	{ 22, 0 }, -- [EM] Rear Window Lower Lights
	{ 23, 0 }, -- [EM] Headlight Ions
	{ 24, 0 }, -- Front Door Panels
	{ 25, 0 }, -- Rear Door Panels
	{ 26, 0 }, -- Trunk Panel
	{ 27, 0 }, -- Trunk Badge
	{ 28, 0 }, -- Door Handles
	{ 29, 0 }, -- Rear Windows
	{ 30, 0 }, -- Radio Antennas
	{ 31, 0 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.1,
		Pos = Vector(0, 122, 20),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 13.5, 67.5 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "BLUE",
		Color2 = "C_WHITE",
		Color3 = "AMBER"
	},
	{
		ID = "Whelen 700",
		Scale = 1.6,
		Pos = Vector( 8, -83.1, 58.3 ),
		Ang = Angle(0, 0, 80),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1.6,
		Pos = Vector( -8, -83.1, 58.3 ),
		Ang = Angle(0, 0, 80),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -24.5, -65, 67.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -20.5, -65, 67.6),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -16.3, -65, 67.8),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
		{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -12, -65, 67.9),
		Ang = Angle( 0, 270, 0 ),
		Color1 = "AMBER",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -47, 25.9, 56 ),
		Ang = Angle( 0, 25, 10 ),
		Color1 = "C_WHITE",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 47, 25.9, 56 ),
		Ang = Angle( 0, -25, 10 ),
		Color1 = "C_WHITE",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 0, 0, 100 ),
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
	Category = "Pringles Crown Vics",
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

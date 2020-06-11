AddCSLuaFile()

local VehicleName = "2012 Unmarked Charger"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 1
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2012
	{ 3, 0 }, -- 
	{ 4, 0 }, -- 
	{ 5, 0 }, -- 
	{ 6, 0 }, -- 
	{ 7, 2 }, -- push bar
	{ 8, 1 }, -- grille leds
	{ 9, 1 }, -- front bumper leds
	{ 10, 3 }, -- front interior lightbar
	{ 11, 4 }, -- lightbar
	{ 12, 2 }, -- rear interior lightbar
	{ 13, 1 }, -- rear passenger leds
	{ 14, 0 }, -- antennas
	{ 15, 2 }, -- spotlights
	{ 16, 0 }, -- wing
	{ 17, 0 }, -- wheel
	{ 18, 0 }, -- cage
}

EMV.Props = {
	[1] = {
		Model = "models/lonewolfie/setina_2_impalasize.mdl",
		Scale = 1.5,
		Pos = Vector(0, 119.5, 27),
		Ang = Angle( -8, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .60,
		Pos = Vector(0, 120, 34.5),
		Ang = Angle( 90, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(5, 30, 55),
		Ang = Angle( 0, -25, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/c3/plate/licenseplate.mdl",
		Scale = .90,
		Pos = Vector(0, -126, 30),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},


}

EMV.Auto = {
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 15, 123, 30),
		Ang = Angle( 0, 30, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -15, 124, 30),
		Ang = Angle( 0, -30, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 14, 122.84, 40.7 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "AMBER",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -14, 122.84, 40.7 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -64, 67 ),
		Ang = Angle( -5, 270, 0 ),
		Color1 = "BLUE",
		Color2 = "WHITE",
		Color3 = "AMBER"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -5, -89.3, 58.7 ),
		Ang = Angle( 0, 0, 180),
		Color1 = "AMBER",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 5, -89.3, 58.7 ),
		Ang = Angle( 0, 0, 180),
		Color1 = "BLUE",
		Phase = "CA"
	},
	{
		ID = "Whelen 700",
		Scale = 1.5,
		Pos = Vector( -24, -119, 47 ),
		Ang = Angle( 0, -6, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.5,
		Pos = Vector( 24, -119, 47 ),
		Ang = Angle( 0, 6, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1.2,
		Pos = Vector( 0, 20, 66 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "BLUE",
		Color2 = "AMBER"
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -50, 106.5, 36.5 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "WHITE",
		Phase = "TT"

	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( 24, 106, 36.5 ),
		Ang = Angle( 0, 180, 0 ),
		Color1 = "WHITE",
		Phase = "TT"
	},
	{
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector( -40, -66, 56 ),
		Ang = Angle( 0, 270, -15 ),
		Color1 = "BLUE",
		Color2 = "AMBER",
		Phase = "TT"
	},
	{ 
		ID = "Whelen M9",
		Scale = 1,
		Pos = Vector(40, -41, 56 ),
		Ang = Angle( 0, 90, -1),
		Color1 = "BLUE",
		Color2 = "AMBER",
		Phase = "TT"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 17, 34.4 ),
		Ang = Angle( 0, 0, 0 )
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
	Model = "models/tdmcars/emergency/dod_charger12.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/charger2012.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

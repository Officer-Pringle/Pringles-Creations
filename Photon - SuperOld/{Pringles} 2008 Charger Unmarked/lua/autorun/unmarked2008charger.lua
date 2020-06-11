AddCSLuaFile()

local VehicleName = "Unmarked 2008 Charger"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Dodge
	{ 1, 0 }, -- Charger
	{ 2, 0 }, -- 2006
	{ 3, 0 }, -- Police Package
	{ 4, 0 }, -- front bumper
	{ 5, 0 }, -- rear bumper
	{ 6, 0 }, -- skirt
	{ 7, 0 }, -- hood
	{ 8, 0 }, -- wing
	{ 9, 1 }, -- wheels
	{ 10, 4 }, -- [EM] Push bar
	{ 11, 2 }, -- [EM] Grille
	{ 12, 0 }, -- [EM] Spotlight
	{ 13, 1 }, -- [EM] Mirrors
	{ 14, 1 }, -- [EM] Windshield lower
	{ 15, 2 }, -- [EM] Windshield upper
	{ 16, 1 }, -- [EM] Sides
	{ 17, 7 }, -- [EM] Roof light bars
	{ 18, 1 }, -- [EM] Rear side windows
	{ 19, 0 }, -- [EM] Rear window upper lights
	{ 20, 0 }, -- [EM] Rear window lower lights
	{ 21, 4 }, -- [EM] Antennas
	{ 22, 2 }, -- [EM] Rear plate leds
	{ 23, 3 }, -- [EM] Console Unit
	{ 24, 0 }, -- [EM] Prisoner Cage
}

EMV.Props = {
	[1] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = .62,
		Pos = Vector(1.15, 13.69, 35),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 82.8),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 82.55),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 72),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 67 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 67 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(-5, -30.5, 82.55),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.25,
		Pos = Vector(0, 105.11, 16.5),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .45,
		Pos = Vector(0, 120, 36),
		Ang = Angle( 90, 180, 90 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( -.5, 21.7, 34.28 ),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -50, 66.5 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 1.2,
		Pos = Vector( -30, -110.2, 41.5 ),
		Ang = Angle( 15, 160, 10 ),
		Color1 = "RED",
		Phase = "A"

	},
	{
		ID = "Whelen Ion",
		Scale = 1.2,
		Pos = Vector( 30, -110.19, 41.5 ),
		Ang = Angle( -08, -157, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, 27.9, 64.20),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -17.2, 125.48, 28 ),
		Ang = Angle( 90, 0, 0),
		Color1 = "BLUE",
		Color2 = "RED",

		
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 17.2, 125.48, 28 ),
		Ang = Angle( 90, 0, 0),
		Color1 = "RED",
		Color2 = "BLUE",
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 32, 115.83, 41.05 ),
		Ang = Angle( 0, -9, 0),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -32, 115.83, 41.05 ),
		Ang = Angle( 0, 9, 0),
		Color1 = "RED",
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
	Category = "Pringles Unmarked Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/emergency/chargersrt8.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/chargersrt8.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

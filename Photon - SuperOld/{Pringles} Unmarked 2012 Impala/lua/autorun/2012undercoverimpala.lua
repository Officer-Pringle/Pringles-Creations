AddCSLuaFile()

local VehicleName = "Undercover Impala"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(0,0,25,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Taxi_Sign
	{ 2, 0 }, -- Equiptment
	{ 3, 1 }, -- Taxi_Badges
	{ 4, 0 }, -- Fbumper
	{ 5, 0 }, -- Rbumper
	{ 6, 0 }, -- Front_window_lights
	{ 7, 0 }, -- Rear_window_lights
	{ 8, 0 }, -- Bullbar
	{ 9, 0 }, -- Laptop
	{ 10, 0 }, -- Lamp
	{ 11, 0 }, -- Lightbar
	{ 12, 0 }, -- Numberplate
	{ 13, 0 }, -- Antenne
	{ 14, 0 }, -- ALPR
	{ 15, 2 }, -- Wheels
	{ 16, 0 }, -- clamped1
}
EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.15,
		Pos = Vector(0, 107, 14),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .50,
		Pos = Vector(0, 122, 32.5),
		Ang = Angle( 90, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/c3/antenna/antenna.mdl",
		Scale = .50,
		Pos = Vector(38.5, -90, 56),
		Ang = Angle( 0, 88, -15 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1.5,
		Pos = Vector(.05, -40, 77.2),
		Ang = Angle( -3, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1.5,
		Pos = Vector(.05, -44.5, 69.40),
		Ang = Angle( -3, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 1.5,
		Pos = Vector(-6.5, -42.5, 77),
		Ang = Angle( -3, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 1.5,
		Pos = Vector(6.5, -42.5, 77),
		Ang = Angle( -3, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/c3/console/pconsole.mdl",
		Scale = 1,
		Pos = Vector(1.6, 10, 18),
		Ang = Angle( 0, 178, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/lonewolfie/toughbook.mdl",
		Scale = 1,
		Pos = Vector(10, 18.5, 50),
		Ang = Angle( 15, 225, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/nysp props/k9_cage.mdl",
		Scale = .85,
		Pos = Vector(0, -37, 17),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-33, 30, 55),
		Ang = Angle( 0, 120, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/c3/plate/licenseplate.mdl",
		Scale = .80,
		Pos = Vector(-.09, -121, 27.5),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .40,
		Pos = Vector(3, -10, 40),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},

}

EMV.Auto = {
	{
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 16, 19, 62.8 ),
		Ang = Angle( 0, 260, 0 )
	},
	{
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( -16, 19, 62.8 ),
		Ang = Angle( 0, 280, 0 )
	},
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1,
		Pos = Vector( 0, -60, 64),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 1.15,
		Pos = Vector( 31, -113.29, 40),
		Ang = Angle( -2, 200, 15 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1.15,
		Pos = Vector( -31, -113.25, 40),
		Ang = Angle( 2, 160, 20 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 124, 30 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 124, 30 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -58.5, 53.2),
		Ang = Angle( 2, 92, 20 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -58.5, 53.2 ),
		Ang = Angle( -2, 270, 20 )
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1.1,
		Pos = Vector( -1, 27.4, 35.5 ),
		Ang = Angle( 0, 0, 22 )
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
	Model = "models/lonewolfie/chev_impala_09.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_impala_09.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

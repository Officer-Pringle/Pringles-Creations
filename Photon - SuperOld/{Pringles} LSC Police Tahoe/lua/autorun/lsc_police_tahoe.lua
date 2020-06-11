AddCSLuaFile()

local VehicleName = "LSC Police Tahoe"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 11
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- ALPR
	{ 2, 0 }, -- Antenne
	{ 3, 2 }, -- Sidepanels
	{ 4, 0 }, -- Bullbar
	{ 5, 0 }, -- Lightbar
	{ 6, 0 }, -- Equiptment
	{ 7, 1 }, -- Grill
	{ 8, 0 }, -- Lamp
	{ 9, 0 }, -- Lights_frontwindow
	{ 10, 0 }, -- Lights_grill
	{ 11, 0 }, -- Lights_rearbumper
	{ 12, 0 }, -- Lights_rearwindow
	{ 13, 1 }, -- Partition
	{ 14, 0 }, -- Roofrack
	{ 15, 0 }, -- Runningboards
	{ 16, 0 }, -- Snorkle
	{ 17, 1 }, -- Wheels
	{ 18, 0 }, -- Windows
	{ 19, 0 }, -- clamped1
	{ 20, 0 }, -- clamped2
}
EMV.Props = {
	[1] = {
		Model = "models/crown vic sheriff/rambar.mdl",
		Scale = 1.05,
		Pos = Vector(0, 109, 27),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .50,
		Pos = Vector(0, 121, 46),
		Ang = Angle( 90, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .60,
		Pos = Vector(09, 33, 40),
		Ang = Angle( 0, 140, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/lonewolfie/toughbook.mdl",
		Scale = .80,
		Pos = Vector(1, 22, 62.5),
		Ang = Angle( 0, 220, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .30,
		Pos = Vector(0, 50, 62.5),
		Ang = Angle( 0, -10, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1.2,
		Pos = Vector(0, 34, 42),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/c3/codez3sirenbox/codez3sirenbox.mdl",
		Scale = 1.15,
		Pos = Vector(0, 29.5, 31.5),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},




}

EMV.Auto = {
	{
		ID = "Whelen Liberty SX",
		Scale = 1.05,
		Pos = Vector( 0, -7, 89.2 ),
		Ang = Angle( 1, 90, 0 )
	},
	{
		ID = "Tomar 200S Rear",
		Scale = .80,
		Pos = Vector( 0, -100.3, 77.8),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -39, -106, 51.5 ),
		Ang = Angle( 0, -30, 90 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 39, -106, 51.5 ),
		Ang = Angle( 0, 30, 90 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen SlimLighter",
		Scale = 1,
		Pos = Vector( 33.2, -70, 76.5),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "Whelen SlimLighter",
		Scale = 1,
		Pos = Vector( -33.2, -70, 76),
		Ang = Angle( 0, 180, 0)
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 116.6, 51.5),
		Ang = Angle( 0, 0, 15 ),
		Color1 = "BLUE",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 116.6, 51.5),
		Ang = Angle( 0, 0, 15 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( 23.5, 121.5, 30.2 ),
		Ang = Angle( 0,0, 270),
		Color1 = "BLUE",
		Phase  = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 2,
		Pos = Vector( -23.5, 121.5, 30.2 ),
		Ang = Angle( 0,1.5, 270 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1.5,
		Pos = Vector( 0, 38, 53.4),
		Ang = Angle( 0, 0, 67 )
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
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} },
		{ Name = "Cruise", Stage = "C", Components = {}, Disconnect = {} }
	}
}

local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles Vehicles",
	Author = "Officer Pringle {1A-181}",
	Model = "models/lonewolfie/chev_tahoe.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/chev_tahoe.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

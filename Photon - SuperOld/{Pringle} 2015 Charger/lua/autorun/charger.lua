AddCSLuaFile()

local VehicleName = "2015 City Charger"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 4
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 3 }, -- Rims
	{ 2, 1 }, -- Wing
	{ 3, 0 }, -- nothing
	{ 4, 1 }, -- Headlights
	{ 5, 0 }, -- clamped1
	{ 6, 0 }, -- clamped2
	{ 7, 0 }, -- clamped3
	{ 8, 0 }, -- clamped4
	{ 9, 0 }, -- clamped5
}

EMV.Auto = {
	{
		ID = "Code 3 RX2700",
		Scale = .98,
		Pos = Vector( 0, -11, 75.8),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.4,
		Pos = Vector( -10, 128, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "BLUE",
		Color2 = "RED",
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1.4,
		Pos = Vector( 10, 128, 33 ),
		Ang = Angle( 0, 0, 0 ),
		Color1 = "RED",
		Color2 = "BLUE"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -26, -118.8, 47 ),
		Ang = Angle( 0, 165, 273),
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 26, -118.8, 47 ),
		Ang = Angle( 0, -166, 273),
		Phase = "A"
		
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1.5,
		Pos = Vector( 0, 27.5, 46.6 ),
		Ang = Angle( 0, -5, 70)
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(0, 0, 100),
		Ang = Angle(0, 90, 0),
	},
}

EMV.Props = {
     [1] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-38, 42, 56),
		Ang = Angle( 0, 108, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
    },
    [2] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.30,
		Pos = Vector(0, 108,16),
		Ang = Angle( -2, 270, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[3] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = 0.50,
		Pos = Vector(0, 126, 36),
		Ang = Angle( 0, 180, 90),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[4] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 74),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 68.1 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 68.1 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -28, 84),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -49.7, 81.9),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -49, 71.9),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .60,
		Pos = Vector(25, -116, 56.3),
		Ang = Angle( 6, 300, -2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .60,
		Pos = Vector(-27, -115, 56.1),
		Ang = Angle( 5, 235, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = 1,
		Pos = Vector(3, 29, 62),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .70,
		Pos = Vector(10, 18.5, 26.1),
		Ang = Angle( 0, 110, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 15, 43),
		Ang = Angle( 0, 130, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .15,
		Pos = Vector(-8, 29, 54.5),
		Ang = Angle( 4, -15, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
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
	Model = "models/lonewolfie/dodge_charger_2015.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/LWCars/dodge_charger_2015.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

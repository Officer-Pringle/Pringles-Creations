AddCSLuaFile()

local VehicleName = "Unmarked Explorer"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- lightbar
	{ 2, 0 }, -- pushbar
	{ 3, 2 }, -- equipment
}
EMV.Props = {
	[1] = {
		Model = "models/nysp props/k9_window_bar.mdl",
		Scale = 1,
		Pos = Vector(-43.5, -28, 55),
		Ang = Angle( 44, 0, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/nysp props/k9_window_bar.mdl",
		Scale = 1,
		Pos = Vector(43, -28, 55),
		Ang = Angle( -3, 0, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.3,
		Pos = Vector(0, 107, 24),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/watchguard_camera.mdl",
		Scale = 1,
		Pos = Vector(2, 30, 70),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .40,
		Pos = Vector(13, 119.5, 44.5),
		Ang = Angle( -90, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/supermighty/props/whelen_speaker.mdl",
		Scale = .40,
		Pos = Vector(-13, 119.5, 44.5),
		Ang = Angle( -90, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}
EMV.Auto = {
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1,
		Pos = Vector( -1, 27.5, 75 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -36.4, -106.8, 52.8),
		Ang = Angle( 0, 136, 5 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
	ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 36.4, -106.8, 52.8),
		Ang = Angle( 0, -136, 5 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
	ID = "Tomar 200S Rear",
		Scale = 1,
		Pos = Vector( 0, -91, 70),
		Ang = Angle( 0, 270, 0)
	},
	{
	ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 40,-47, 61),
		Ang = Angle( 0, 85, 75),
		Color1 = "BLUE",
		Color2 = "WHITE",
		Color3 = "AMBER",
	},
	{
	ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -40,-46, 61),
		Ang = Angle( 0, 275, 75),
		Color1 = "BLUE",
		Color2 = "WHITE",
		Color3 = "AMBER",
	},
	{
		ID = "Whelen SlimLighter",
		Scale = 1.3,
		Pos = Vector( -1.5, 126.5, 38),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
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
	Model = "models/sentry/explorer.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

AddCSLuaFile()

local VehicleName = "2012 Charger Marked"

local EMV = {}

EMV.Siren = 35
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
	{
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.4,
		Pos = Vector(0, 121, 13),
		Ang = Angle( -5, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-36, 32, 58),
		Ang = Angle( 15, 115, -20),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(27, -115, 57.50),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-27, -115, 57.50),
		Ang = Angle( 6, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -20, 45),
		Ang = Angle( -2, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 56),
		Ang = Angle( 0, -16, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = 1,
		Pos = Vector( 0, -12, 76.8 ),
		Ang = Angle( 1, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = .95,
		Pos = Vector( 20, -82.5, 60 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = .95,
		Pos = Vector( -20, -82.5, 60 ),
		Ang = Angle( 180, 90, 0)
	},

	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 10, 120.3, 41.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = "RED",
		Color2 = "BLUE"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -10, 120.3, 41.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = "BLUE",
		Color2 = "RED"
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 17, 34.7 ),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(1, -12.5, -9),
		Ang = Angle(3, 0, 0),
	},
	

	{
		ID = "Pringles Charger12 Flashtails",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
}

EMV.Sequences = {
	Sequences = {
		{ Name = "CAUTION", Stage = "CAT", Components = {}, Disconnect = {} },
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "LEFT", Stage = "L", Components = {}, Disconnect = {} },
		{ Name = "DIVERGE", Stage = "D", Components = {}, Disconnect = {} },
		{ Name = "RIGHT", Stage = "R", Components = {}, Disconnect = {} }
	},
	Illumination = {
		{
			Name = "SPOT",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 65 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["alley"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 500,
	},
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 135,
		Distance = 800,
	},
	["flood"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 120,
		FOV = 135,
		Distance = 1400,
	},
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/tdmcars/emergency/dod_charger12.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/charger2012.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

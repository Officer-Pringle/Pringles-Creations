AddCSLuaFile()

local VehicleName = "2010 Crown Victoria FCV"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- car
	{ 1, 0 }, -- pushbar
	{ 2, 0 }, -- visorlights
	{ 3, 1 }, -- decklights
	{ 4, 0 }, -- markers
	{ 5, 0 }, -- lightbar
	{ 6, 0 }, -- spotlight_l
	{ 7, 0 }, -- spotlight_r
	{ 8, 0 }, -- grillelights
	{ 9, 0 }, -- dashlight
	{ 10, 0 }, -- rearwindowlight
	{ 11, 0 }, -- mirrorlights
	{ 12, 0 }, -- mold_f
	{ 13, 0 }, -- mold_m
	{ 14, 0 }, -- mold_r
	{ 15, 0 }, -- cage
	{ 16, 0 }, -- reardoorpanels
	{ 17, 0 }, -- windowbars
	{ 18, 0 }, -- turnsig
	{ 19, 0 }, -- frontplateholder
	{ 20, 0 }, -- fbumpertrim
	{ 21, 0 }, -- rbumpertrim
	{ 22, 0 }, -- rearfascia
	{ 23, 0 }, -- reartrim
	{ 24, 0 }, -- grille
	{ 25, 0 }, -- hubcaps
	{ 26, 0 }, -- rimbadges
	{ 27, 0 }, -- clamped1
}

EMV.Props = {
	[1] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(9, 18, 22.7),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 10, 37),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[3] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 47.8),
		Ang = Angle( 0, -16, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -19, 45),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(23, -58, 66.35),
		Ang = Angle( 13, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[6] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-23, -58, 66.35),
		Ang = Angle( 13, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[7] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(34.5, -110, 66.3),
		Ang = Angle( -2, -95, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[8] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-34.5, -110, 66.3),
		Ang = Angle( -2, 95, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 77.95),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[10] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -30.5, 78),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -35, 67.85),
		Ang = Angle( 0, 0, 2),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
	[12] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(-5, -30.5, 77.9),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/c3/antenna/antenna.mdl",
		Scale = .5,
		Pos = Vector(44.4, -90, 47),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 4.5,
		Pos = Vector(0, -7.32, 20),
		Ang = Angle( 0, 20, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/supermighty/photon/partition1.mdl",
		Scale = .5,
		Pos = Vector(0, -20.7, 40),
		Ang = Angle( 10, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	---- SPOT LIGHTS
	[16] = {
		Model = "models/supermighty/photon/chp_spotlight_left_up.mdl",
		Scale = .8,
		Pos = Vector(-38.5, 30, 51),
		Ang = Angle( 0, -95, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[17] = {
		Model = "models/supermighty/photon/chp_spotlight_right_up.mdl",
		Scale = .8,
		Pos = Vector(38.5, 30, 51),
		Ang = Angle( 0, -95, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[18] = {
		Model = "models/supermighty/chp/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector(34.4, 29.5	, 51),
		Ang = Angle( 20, -75, -10),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Whelen Liberty SX A",
		Scale = 1,
		Pos = Vector( 0, 0, 100),
		Ang = Angle( 0, 90, 0 )
	},
}


EMV.Selections = {
	-- CATEGORY CHOICES
	{
		Name = "SpotLights",
		Options = {
			{ Name = "None"},
			{ Name = "2 Up", Auto = {}, Props = {16,17} },
			{ Name = "1 Up", Auto = {}, Props = {16,18} },
		}
	},
	{
		Name = "Partions",
		Options = {
			{ Name = "None"},
			{ Name = "Pro-Gaurd Partion", Auto = {}, Props = {14} },
			{ Name = "Sentina 1", Auto = {}, Props = {15} }
	
		}
	},
	
	---- ON/OFF CHOICES
	{
		Name = "ALPR",
		Options = {
			{Name = "None"},
			{Name = "ON", Auto = {}, Props = {5,6} }
		}
	},
	{
		Name = "ALPR Antennas",
		Options = {
			{ Name = "None"},
			{ Name = "ON", Auto = {}, Props = {7,8} }
		}
	},
	{
		Name = "Antennas",
		Options = {
			{ Name = "None"},
			{ Name = "ON", Auto = {}, Props = {9,10,11,12} }
		}
	},
	{
		Name = "Rear Antennas",
		Options = {
			{ Name = "None"},
			{ Name = "ON", Auto = {1}, Props = {13} }
		}
	}
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
	Category = "Pringles: Customizable Photon",
	Author = "[CRPG] Officer Pringle",
	Model = "models/sentry/cvpi_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/cvpi_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
	
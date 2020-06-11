AddCSLuaFile()

local VehicleName = "2013 Unmarked Touras"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(0,0,40)

EMV.BodyGroups = {
	{ 0, 0 }, -- Ford
	{ 1, 0 }, -- Taurus
	{ 2, 0 }, -- 2013
	{ 3, 1 }, -- wing
	{ 4, 0 }, -- pushbar
	{ 5, 0 }, -- grille lights
	{ 6, 0 }, -- side led
	{ 7, 0 }, -- mirror bottom led
	{ 8, 0 }, -- rear windows led
	{ 9, 0 }, -- front interior lights
	{ 10, 5 }, -- roof light bar
	{ 11, 0 }, -- rear interior leds
	{ 12, 0 }, -- rear interior lightbar
	{ 13, 0 }, -- rear lower interior lightbar
	{ 14, 3 }, -- console unit
	{ 15, 0 }, -- front badge
	{ 16, 0 }, -- skirts
	{ 17, 0 }, -- led message board
	{ 18, 0 }, -- misc equipment
	{ 19, 1 }, -- spotlights
	{ 20, 0 }, -- cage wall
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
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 87.2),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[3] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 87),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 76),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[7] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -28, 88),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[8] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -49.7, 86),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[9] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -49, 76),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Tomar 200S Rear",
		Scale = .90,
		Pos = Vector( 0, -78, 62),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -23, -60, 68.3 ),
		Ang = Angle( 0, 265, 0 ),
		Color1 = "BLUE",
		Phase = "A",
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( -19, -60, 68.3 ),
		Ang = Angle( 0, 265, 0 ),
		Color1 = "RED",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 23, -60, 68.3 ),
		Ang = Angle( 0, 265, 0 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Federal Signal Viper",
		Scale = 1,
		Pos = Vector( 19, -60, 68.3 ),
		Ang = Angle( 0, 265, 0 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( -25.5, -114, 48.4 ),
		Ang = Angle( 0, -20, 70),
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( -28, -111, 52.3 ),
		Ang = Angle( 0, -27, 70),
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1.2,
		Pos = Vector( 25.5, -114.06, 48.4 ),
		Ang = Angle( 0, 20, 70),
		Phase = "B"
	},
	{
		ID = "Whelen 700",
		Scale = 1.1,
		Pos = Vector( 28, -111, 52.3 ),
		Ang = Angle( 0, 27, 70),
		Phase = "B"
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -44.7, 56, 40.5 ),
		Ang = Angle( 0, 92.7, 0 )
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 44.7, 56, 40.5 ),
		Ang = Angle( 0, -92.7, 0 )
	},
	{
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( -17.5, 25, 68 ),
		Ang = Angle( 0, 270, 3 )
	},
	{
		ID = "Federal Signal Viper Dual",
		Scale = 1,
		Pos = Vector( 0, 52.6, 56.7 ),
		Ang = Angle( 0, 90, 180 )
	},
	{
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector( 0, 124.4, 18 ),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(-1, -5.60, -4),
		Ang = Angle(0, -5, 0),
	},
	{
		ID = "Whelen Vertex",
		Scale = 2.5,
		Pos = Vector( 33.5, 106, 38.5),
		Ang = Angle( 0, -10, 270 ),
		Color1 = "C_WHITE",
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 2.5,
		Pos = Vector( -33.5, 106, 38.5),
		Ang = Angle( 0, 10, 270 ),
		Color1 = "C_WHITE",
		Phase = "B"
	},
}

EMV.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 1.5,
		VisRadius = 0
	},
	headlight2 = {
		AngleOffset = -90,
		W = 6,
		H = 6,
		Sprite = "sprites/emv/light_circle",
		Scale = 1.5,
		VisRadius = 0
	},
	reverse_lights = {
		AngleOffset = 90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/tdm_fpis_reverse",
		Scale = 1
	},
}

EMV.Positions = {

	[1] = { Vector( -33.8, 107.9, 38.6 ), Angle( 0, 0, 0 ), "headlight" },
	[2] = { Vector( 33.8, 107.9, 38.6 ), Angle( 0, 0, 0 ), "headlight" },

	[3] = { Vector( -27.28, -112.68, 52.2 ), Angle( 0, -24, 0 ), "reverse_lights" },
	[4] = { Vector( 27.28, -112.68, 52.2 ), Angle( 0, 24, 180 ), "reverse_lights" },

	[5] = { Vector( -36.5, 105, 22.5 ), Angle{ 0, 0, 0 }, "headlight" },
	[6] = { Vector( 36.5, 105, 22.5 ), Angle{ 0, 0, 0 }, "headlight2" },

}

EMV.Sections = {
	["headlights"] = {
		{ { 1, SW, { 16, .25, 0 } }, { 2, SW, { 16, .25, 10 } }, }
	},
	["reverse_lights"] = { 
		{ { 3, B } },
		{ { 4, B } },
	},
}

EMV.Patterns = {
	["headlights"] = {
		["wig-wag"] = {
			1
		}
	},

	["reverse_lights"] = {
		["code1"] = {
			2, 0, 2, 0, 1, 0, 1, 0
		},		
		["code3"] = {
			1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0 
		},
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
	},
	Illumination = {
		{
			Name = "TKDN",
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
		{
			Name = "FULL",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			BG_Components = {
				["spotlights"] = {
					["0"] = {
						{ 1, W, 2 },
						{ 2, W, 2 }
					},
				},
			},
			Lights = {
				{ Vector( 0, 25, 80 ), Angle( 10, 90, 0 ), "flood" },
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
	Category = "Pringles Unmarked Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

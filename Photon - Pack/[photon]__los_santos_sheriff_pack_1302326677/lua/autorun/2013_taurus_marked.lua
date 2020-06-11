AddCSLuaFile()

local VehicleName = "2013 Taurus"

local EMV = {}

EMV.Siren = 23
EMV.Skin = 4
EMV.Color = Color(255,255,255)
    ---CUSTOM COLORS---
local B = "BLUE"
local R = "RED"
local A = "AMBER"
local W = "WHITE"
local G = "GREEN"
local DR = "D_RED"
local CW = "C_WHITE"
local SW = "S_WHITE"
--------------------
local PA = "A"
local PB = "B"
local PCA = "CA"
local PTT = "TT"


EMV.BodyGroups = {
	{ 0, 0 }, -- Ford
	{ 1, 0 }, -- Taurus
	{ 2, 0 }, -- 2013
	{ 3, 0 }, -- wing
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
	{ 14, 0 }, -- console unit
	{ 15, 0 }, -- front badge
	{ 16, 1 }, -- skirts
	{ 17, 0 }, -- led message board
	{ 18, 0 }, -- misc equipment
	{ 19, 1 }, -- spotlights
	{ 20, 0 }, -- cage wall
}

EMV.Props = {
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .9,
		Pos = Vector(-36, 40, 59),
		Ang = Angle( 5, 115, -15),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
    },
    {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -24, 87.2),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 87),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -33, 76),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1, 1, 2.5),
		Pos = Vector( -22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 72 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(-10, -28, 86),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -49.7, 86),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(-6, -49, 76),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .3,
		Pos = Vector(0, 48, 54),
		Ang = Angle( 0, -10, 3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_aux.mdl",
		Scale = .3,
		Pos = Vector(-14, 48, 55),
		Ang = Angle( 0, -180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(27, -100, 61.5),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-27, -100, 61.5),
		Ang = Angle( 6, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.3,
		Pos = Vector(0, 125, 15),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = .97,
		Pos = Vector( 0, -7, 78 ),
		Ang = Angle( 3, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( 10, -83, 63.4),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1,
		Pos = Vector( -10, -83, 63.4),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -47, 57.7),
		Ang = Angle( -3, 270, 20),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -47, 57.7),
		Ang = Angle( 3, 90, 20),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	

	--
	{
		ID = "Taurus13 FrontFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "Taurus13 FlashSignal",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "Pringles Taurus13 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector(-1, -6.5, -1.5),
		Ang = Angle(0, -5, 0),
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
	Category = "Los Santos Sheriff",
	Author = "Officer Pringle",
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

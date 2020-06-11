AddCSLuaFile()

local VehicleName = "2011 FH3 Victoria"

local EMV = {}

EMV.Siren = 2
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
	{ 0, 0 }, -- 
	{ 1, 0 }, -- [EM] Spot Lights
	{ 2, 0 }, -- [EM] Dash
	{ 3, 0 }, -- Ford
	{ 4, 0 }, -- Crown
	{ 5, 0 }, -- Victoria
	{ 6, 0 }, -- P71
	{ 7, 0 }, -- 
	{ 8, 0 }, -- 
	{ 9, 0 }, -- 
	{ 10, 0 }, -- 
	{ 11, 0 }, -- [EM] Front Window Lights
	{ 12, 3 }, -- [EM] Push Bar
	{ 13, 1 }, -- [EM] Grille
	{ 14, 1 }, -- [EM] Mirrors
	{ 15, 0 }, -- [EM] Light Bars
	{ 16, 0 }, -- [EM] Interior Equipment
	{ 17, 3 }, -- [EM] Interior Consoles Slot 1
	{ 18, 0 }, -- [EM] Interior Consoles Slot 2
	{ 19, 1 }, -- [EM] Cage
	{ 20, 0 }, -- [EM] Rear Door Window Lights
	{ 21, 0 }, -- [EM] Rear Window Lights
	{ 22, 0 }, -- [EM] Rear Window Lower Lights
	{ 23, 0 }, -- [EM] Headlight Ions
	{ 24, 0 }, -- Front Door Panels
	{ 25, 0 }, -- Rear Door Panels
	{ 26, 1 }, -- Trunk Panel
	{ 27, 0 }, -- Trunk Badge
	{ 28, 1 }, -- Door Handles
	{ 29, 0 }, -- Rear Windows
	{ 30, 2 }, -- Radio Antennas
	{ 31, 0 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.2,
		Pos = Vector(0, 107, 19.5),
		Ang = Angle( 3, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 55),
		Ang = Angle( 1, -15, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = 1,
		Pos = Vector(-36, 25, 58),
		Ang = Angle( 0, 115, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(27, -115, 55.94),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-27, -115, 55.88),
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
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .6,
		Pos = Vector(9, 18, 30),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(0, 10, 43),
		Ang = Angle( 0, 130, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	{
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -19, 45),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	{
		ID = "Pringles Whelen Liberty SX",
		Scale = .95,
		Pos = Vector( 0, -20, 77 ),
		Ang = Angle( 0, 90, 0 )
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1.5,
		Pos = Vector( -12, -80, 59 ),
		Ang = Angle( 180, 90, 0),
	},
	{
		ID = "Pringles Viper Dual",
		Scale = 1.5,
		Pos = Vector( 12, -80, 59 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -39.2, -55, 54.3),
		Ang = Angle( 1, 90, 0)
	},
	{
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 39.2, -55, 54.3),
		Ang = Angle( -1, 270, 0)
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PB
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 19.4, 34.7 ),
		Ang = Angle( 0, 0, 0)
	},
	---
	{
		ID = "FPIU16 PAR-46",
		Scale = 1.05,
		Pos = Vector(2.3, -17.5, -9),
		Ang = Angle(0, -5, 5),
	},
	{
		ID = "CVPIFH3 FlashFront",
		Scale = 1,
		Pos = Vector( 0, 0,0 ),
		Ang = Angle( 0,0, 0)
	},
	{
		ID = "CVPIFH3 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0,0 ),
		Ang = Angle( 0,0, 0)
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
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

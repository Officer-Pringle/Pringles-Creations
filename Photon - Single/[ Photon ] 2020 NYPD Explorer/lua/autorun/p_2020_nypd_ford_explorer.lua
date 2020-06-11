AddCSLuaFile()

local VehicleName = "2020 NYPD Ford Explorer"

local EMV = {}

EMV.Siren = "nypdssr"
EMV.Skin = "pringle/skins/nypd/2020explorer/20exnypd"
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
	{ 0, 0 }, -- car
	{ 1, 1 }, -- pushbar
	{ 2, 1 }, -- grille_lights
	{ 3, 0 }, -- mirror_lights
	{ 4, 1 }, -- visor_lights
	{ 5, 1 }, -- lightbar
	{ 6, 1 }, -- spotlight_l
	{ 7, 0 }, -- spotlight_r
	{ 8, 1 }, -- headlight_flashers
	{ 9, 1 }, -- fog_lights
	{ 10, 1 }, -- spoiler_lights
	{ 11, 1 }, -- trunk_lights
	{ 12, 1 }, -- rear_window_lights
	{ 13, 0 }, -- console
	{ 14, 0 }, -- pi_badge
	{ 15, 1 }, -- ecoboost_badge
	{ 16, 0 }, -- clamped1
	{ 17, 0 }, -- clamped2
	{ 18, 0 }, -- clamped3
	{ 19, 0 }, -- clamped4
	{ 20, 0 }, -- clamped5
	{ 21, 0 }, -- clamped6
	{ 22, 0 }, -- clamped7
}

EMV.Props = {
	{
		Model = "models/tdmcars/emergency/equipment/pushrod.mdl",
		Scale = 1.1,
		Pos = Vector(0, 120, 25.5),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/american_plate.mdl",
		Scale = 1,
		Pos = Vector(0, -114.5, 50),
		Ang = Angle( -10, -90, 0),
		Material = "pringle/plates/nypd/nypd400712",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/supermighty/photon/dashcam.mdl",
		Scale = 1,
		Pos = Vector(10, 32, 74),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/noble/prisoner_cage.mdl",
		Scale = .95,
		Pos = Vector(0, 1, 8),
		Ang = Angle( 0, 0, 3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/sentry/antenna.mdl",
		Scale = 1,
		Pos = Vector(-20, -80, 84.4),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/sentry/antenna.mdl",
		Scale = 1,
		Pos = Vector(20, -80, 84.4),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -75, 84.8),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = 1,
		Pos = Vector(5, -81, 89.6),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(-5, -81, 89.6),
		Ang = Angle( -5, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/sentry/antenna4.mdl",
		Scale = 1,
		Pos = Vector(0, -48, 86),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/noble/prisoner_cage_rear.mdl",
		Scale = Vector(1.15, 1, 1.2),
		Pos = Vector(0, -1.5, -14),
		Ang = Angle( 0, 0, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
}

EMV.Auto = {
	{
		ID = "Federal Signal Vision SLR",
		Scale = .98,
		Pos = Vector( 0, -10, 89.2),
		Ang = Angle( 0, 90, 0)
	},
	{
		ID = "Whelen SmartArrow Messenger",
		Scale = 1,
		Pos = Vector( 0, -93, 73 ),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Whelen Ion Extra",
		Scale = 1,
		Pos = Vector( 12, 119.55, 47),
		Ang = Angle( 0, -6, 22 ),
		Color1 = R,
		Phase = "NYPDA"
	},
	{
		ID = "Whelen Ion Extra",
		Scale = 1,
		Pos = Vector( -12, 119.55, 47),
		Ang = Angle( 0, 6, 22 ),
		Color1 = R,
		Phase = "NYPDB"
	},
	{
		ID = "Federal Signal Viper Dual Extra",
		Scale = .8,
		Pos = Vector( -17, -107.5, 64.9),
		Ang = Angle( 0, 265, 0 ),
		Color1 = B,
		Color2 = R,
		Phase = "NYA"
	},
	{
		ID = "Federal Signal Viper Dual Extra",
		Scale = .8,
		Pos = Vector( 17, -107.5, 64.9),
		Ang = Angle( 0, 275, 0 ),
		Color1 = R,
		Color2 = B,
		Phase = "NYB"
	},
	{
		ID = "P PAR-46 Spotlight",
		Scale = 1,
		Pos = Vector( -38, 45, 67),
		Ang = Angle( 10, 110, -10 )
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
	},
	Illumination = {
		{
			Name = "SPOT",
			Icon = "takedown",
			Stage = "S",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( -40, 54, 70 ), Angle( 10, 80, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "LEFT",
			Icon = "alley-left",
			Stage = "L",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( -10, -10, 70 ), Angle( 20, 180, 0 ), "alley" },
			},
			Disconnect = {}
		},
		{
			Name = "RIGHT",
			Icon = "alley-right",
			Stage = "R",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 10, -10, 70 ), Angle( 20, 0, 0 ), "alley" },
			},
			Disconnect = {}
		},
	}
}

EMV.Lamps = {
	["takedown"] = {
		Color = Color(215,225,255,255),
		Texture = "sprites/emv/circular_src",
		Near = 110,
		FOV = 105,
		Distance = 1500,
	},
	["alley"] = {
		Color = Color(215,225,255,255),
		Texture = "effects/flashlight001",
		Near = 110,
		FOV = 90,
		Distance = 500,
	},
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles - Emergency",
	Author = "Officer Pringle",
	Model = "models/sentry/20explorer.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/20explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
	
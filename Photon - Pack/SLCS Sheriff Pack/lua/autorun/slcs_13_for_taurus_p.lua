AddCSLuaFile()

local VehicleName = "St. Law. County Ford Taurus 2013"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = 19
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
	{
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector( .8, .9, .8 ),
		Pos = Vector(0, 126.5, 26),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(31, 116, 30),
		Ang = Angle( 2, 90, 0),
		Material = "models/fullwhite",
		Color = Color(255,255,255),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(-35, 115, 30),
		Ang = Angle( 2, 178, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 36, 45, 62 ),
		Ang = Angle( 50, -90, -60),
	},
}

EMV.Auto = {
	{
		ID = "Whelen Legacy",
		Scale = .98,
		Pos = Vector( 0, -8, 77.7 ),
		Ang = Angle( 2, 90, 0 )
	},
	{
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -38, 43.8, 62 ),
		Ang = Angle( 0, -100, 0),
	},
	{
		ID = "Whelen Ion",
		Scale = .6,
		Pos = Vector( -5, -124.5, 30 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = .6,
		Pos = Vector( 5, -124.5, 30 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Phase = PB
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 0, 50.05, 59),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -10, 128, 33.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 10, 128, 33.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "DOJ Interior Lightbar 4",
		Scale = 1.05,
		Pos = Vector( 0, -80.5, 61.8 ),
		Ang = Angle( -2.5, 270, 0),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.5, 44, 15),
		Ang = Angle( 0, 90, -5 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.4, -35, 18),
		Ang = Angle( 0, 90, -15 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.5, 44, 15),
		Ang = Angle( 0, -90, -5 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.4, -35, 18),
		Ang = Angle( 0, -90, -15 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion",
		Scale = 0.6,
		Pos = Vector( -44.85, 56.5, 40.5),
		Ang = Angle( 0, 94.5, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 0.6,
		Pos = Vector( 44.85, 56.5, 40.5),
		Ang = Angle( 0, -94.5, 0 )
	},
	{
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( -37, -46, 59 ),
        Ang = Angle( 0, -90, 70 )
    },
    {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( 37, -46, 59 ),
        Ang = Angle( 0, 90, 70 )
    },




    {
		ID = "Taurus13 FrontFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B,
		Color5 = B,
		Color6 = B
	},
	{
		ID = "Pringles Taurus13 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Taurus13 FlashSignal",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = CW,
		Color2 = CW
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
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
		{
			Name = "FULL",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 90 ), Angle( 10, 90, 0 ), "flood" },
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
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
AddCSLuaFile()

local VehicleName = "St. Law. County Ford Taurus 2013 Valor"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = 19
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
	{
		Model = "models/supermighty/photon/fpis_pushbar.mdl",
		Scale = Vector( .8, .9, .8 ),
		Pos = Vector(0, 126.5, 26),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(31, 116, 30),
		Ang = Angle( 2, 90, 0),
		Material = "models/fullwhite",
		Color = Color(255,255,255),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/schmal/fpiu_wrap.mdl",
		Scale = Vector( .8, .92, 1 ),
		Pos = Vector(-35, 115, 30),
		Ang = Angle( 2, 178, 0),
		Material = "models/pringle/shared/black",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL,
	},
	{
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = 1,
		Pos = Vector( 36, 45, 62 ),
		Ang = Angle( 50, -90, -60),
	},
}

EMV.Auto = {
	{
		ID = "Pringle Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -8, 77.7 ),
		Ang = Angle( 2, 90, 0 )
	},
	{
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector( -38, 43.8, 62 ),
		Ang = Angle( 0, -100, 0),
	},
	{
		ID = "Whelen Ion",
		Scale = .6,
		Pos = Vector( -5, -124.5, 30 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = .6,
		Pos = Vector( 5, -124.5, 30 ),
		Ang = Angle( 0, -180, 0 ),
		Color1 = B,
		Phase = PB
	},
	{
		ID = "P Whelen Avenger",
		Scale = 1,
		Pos = Vector( 0, 50.05, 59),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( -10, 128, 33.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.2,
		Pos = Vector( 10, 128, 33.5),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "DOJ Interior Lightbar 4",
		Scale = 1.05,
		Pos = Vector( 0, -80.5, 61.8 ),
		Ang = Angle( -2.5, 270, 0),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.5, 44, 15),
		Ang = Angle( 0, 90, -5 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -45.4, -35, 18),
		Ang = Angle( 0, 90, -15 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.5, 44, 15),
		Ang = Angle( 0, -90, -5 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 45.4, -35, 18),
		Ang = Angle( 0, -90, -15 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Ion",
		Scale = 0.6,
		Pos = Vector( -44.85, 56.5, 40.5),
		Ang = Angle( 0, 94.5, 0 )
	},
	{
		ID = "Whelen Ion",
		Scale = 0.6,
		Pos = Vector( 44.85, 56.5, 40.5),
		Ang = Angle( 0, -94.5, 0 )
	},
	{
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( -37, -46, 59 ),
        Ang = Angle( 0, -90, 70 )
    },
    {
        ID = "W700SLED Clear Split",
        Scale = .8,
        Color1 = "RED",
        Color2 = "WHITE",
        Pos = Vector( 37, -46, 59 ),
        Ang = Angle( 0, 90, 70 )
    },




    {
		ID = "Taurus13 FrontFlash",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B,
		Color5 = B,
		Color6 = B
	},
	{
		ID = "Pringles Taurus13 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 )
	},
	{
		ID = "Taurus13 FlashSignal",
		Scale = 1,
		Pos = Vector( 0, 0, 0),
		Ang = Angle( 0, 0, 0 ),
		Color1 = CW,
		Color2 = CW
	},
}


EMV.Sequences = {
	Sequences = {
		{ Name = "CODE 1", Stage = "M1", Components = {}, Disconnect = {} },
		{ Name = "CODE 2", Stage = "M2", Components = {}, Disconnect = {} },
		{ Name = "CODE 3", Stage = "M3", Components = {}, Disconnect = {} }
	},
	Traffic = {
		{ Name = "CRUISE", Stage = "C", Components = {}, Disconnect = {} },
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
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
			},
			Disconnect = {}
		},
		{
			Name = "TKDN",
			Icon = "takedown",
			Stage = "T",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 70 ), Angle( 20, 90, 0 ), "takedown" },
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
		{
			Name = "FULL",
			Icon = "takedown",
			Stage = "F",
			Components = {},
			BG_Components = {},
			Preset_Components = {},
			Lights = {
				{ Vector( 0, 25, 90 ), Angle( 10, 90, 0 ), "flood" },
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
	Category = "St. Lawrence County Sheriff",
	Author = "[CRPG] Officer Pringle",
	Model = "models/tdmcars/emergency/for_taurus_13.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_taurus_13.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

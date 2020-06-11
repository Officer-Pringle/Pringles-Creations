AddCSLuaFile()

local VehicleName = "St. Lawrence County Sheriff Silverado"

local EMV = {}

EMV.Siren = "STLAWRENCE"
EMV.Skin = "skins/pringle/slcs_sheriff_silver"
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
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Bedcap
	{ 2, 0 }, -- DoorSkirt
	{ 3, 0 }, -- RunningBoard
	{ 4, 0 }, -- clamped1
	{ 5, 0 }, -- clamped2
	{ 6, 0 }, -- clamped3
	{ 7, 0 }, -- clamped4
}

EMV.SubMaterials = {
	--[11] = "models/smcars/shared/tinted_glass",
	--[29] = "models/supermighty/photon/shared/black",
	[28] = "models/supermighty/chp/pushbar_black"
}	

EMV.Props = {
	{
		Model = "models/afgn_props/westin_15_tahoe_full_wrap/afgn_props_westin_15_tahoe_full_wrap.mdl",
		Scale = Vector( 1, 1.05, .8 ),
		Pos = Vector(0, 20, 32),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {
	{
		ID = "Whelen Liberty SX Clear",
		Scale = 1.26,
		Pos = Vector( 0, 15, 93.5 ),
		Ang = Angle( 0, -90, 0 )
	},
	{
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( -28, -139.4, 34.8),
		Ang = Angle( 0,-90, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 28, -139.4, 35),
		Ang = Angle( 0, -90, 0 ),
		Color1 = B,
		Color2 = R
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( 46, -140, 30),
		Ang = Angle( 0, 70, 98 )
	},
	{
		ID = "Whelen Vertex",
		Scale = 1,
		Pos = Vector( -46, -140, 30),
		Ang = Angle( 0, -70, 98 )
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -42.8, -22, 16.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -42.8, 60, 16.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( -42.8, 15, 16.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = W,
		Color2 = A
	},
	--
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 42.8, -22, 16.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 42.8, 60, 16.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = B
	},
	{
		ID = "Whelen Ion MC",
		Scale = 1,
		Pos = Vector( 42.8, 15, 16.5),
		Ang = Angle( 0, -90, 0 ),
		Color1 = W,
		Color2 = A
	},
   	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( -10, 153, 45),
		Ang = Angle( 0, -90, 0 ),
		Phase = PA
	},
	{
		ID = "Soundoff 200L Worklight",
		Scale = 1.5,
		Pos = Vector( 10, 153, 45),
		Ang = Angle( 0, -90, 0 ),
		Phase = PB
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 55, 57.6, 72),
		Ang = Angle( 0, -12, 0 ),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -55, 57.6, 72),
		Ang = Angle( 0, 12, 0 ),
		Color1 = B,
		Phase = PB
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
	Model = "models/smcars/2012_silverado.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/toyfj.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

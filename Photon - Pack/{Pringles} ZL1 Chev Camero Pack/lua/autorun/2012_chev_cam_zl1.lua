AddCSLuaFile()

local VehicleName = "Undercover Chev Camero ZL1"

local EMV = {}
  
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

EMV.Siren = 23
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Chevrolet
	{ 1, 0 }, -- Camaro
	{ 2, 0 }, -- ZL1
	{ 3, 0 }, -- 
	{ 4, 0 }, -- front bumper
	{ 5, 0 }, -- front lights
	{ 6, 0 }, -- wing
	{ 7, 0 }, -- wheel
}

EMV.Auto = {
	[1] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -16, -55.5, 59.5 ),
		Ang = Angle( 0, 270, 0)
	},
	[2] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 16, -55.5, 59.5 ),
		Ang = Angle( 0, 270, 0)
	},
	[3] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -16, -55.5, 59.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[4] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 16, -55.5, 59.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[5] = {
		ID = "P Feniex Apollo",
		Scale = 1,
		Pos = Vector( 0, 13, 60.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = B,
	},
	[6] = {
		ID = "P Feniex Apollo",
		Scale = 1,
		Pos = Vector( 0, 13, 60.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[7] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -35, -38, 52.5 ),
		Ang = Angle( 15, 95, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 35, -38, 52.5 ),
		Ang = Angle( -15, -95, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-----
	[9] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -35, -38, 52.5 ),
		Ang = Angle( 15, 95, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[10] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 35, -38, 52.5 ),
		Ang = Angle( -15, -95, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},


	[11] = {
		ID = "12 ZL1 Fog Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[12] = {
		ID = "2010 ZL1 Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[13] = {
		ID = "12 ZL1 Fog Lights",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
}

EMV.Selections = {

	{
		Name = "Lighting Colors",
		Options = {
			{ Name = "Red/Blue", Auto = {1,2,5,7,8,11,12}, Props = {} },
			{ Name = "Blue", Auto = {3,4,6,9,10,12,13}, Props = {} },
		}
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
	Category = "Pringles - Emergency",
	Author = "Officer Pringle",
	Model = "models/tdmcars/chev_camzl1.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/che_camarozl1.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

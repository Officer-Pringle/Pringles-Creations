AddCSLuaFile()

local VehicleName = "FCV 12 Impala"

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

EMV.Siren = "TMD2"
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- Windows
	{ 2, 0 }, -- Front Door Trim
	{ 3, 0 }, -- Rear Door Trim
	{ 4, 1 }, -- Trunk Trim
	{ 5, 0 }, -- clamped1
	{ 6, 0 }, -- clamped2
}

EMV.Liveries = {
	["Other"] = {
		["B/W"] = "pringle/skins/other/12_imp_b-w",
	}
}

EMV.Props = {
	[1] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = .9,
		Pos = Vector(36, 44, 56),
		Ang = Angle( 30, -70, -15),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/supermighty/photon/chp_spotlight_left_down.mdl",
		Scale = .9,
		Pos = Vector(-36, 43, 55),
		Ang = Angle( 0, -110, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/lonewolfie/setina_2_impalasize.mdl",
		Scale = 1,
		Pos = Vector(0, 125, 28.5),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[4] = {
		Model = "models/lonewolfie/setina_pursuit.mdl",
		Scale = 1,
		Pos = Vector(0, 122, 28.5),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[5] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_center_only/afgn_props_cvpi_gorhino_bar_center_only.mdl",
		Scale = Vector(1 ,.9 ,1 ),
		Pos = Vector(0, -4.5, 30),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[6] = {
		Model = "models/tdmcars/emergency/equipment/pushrod.mdl",
		Scale = 1,
		Pos = Vector(0, 118, 20.2),
		Ang = Angle( 0, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {
	[1] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -10, 76.6 ),
		Ang = Angle( 2, 90, 0)
	},
	[2] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -10, 76.6 ),
		Ang = Angle( 2, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[3] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -10, 76.6 ),
		Ang = Angle( 2, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[4] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -10, 76.6 ),
		Ang = Angle( 2, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-------------------------------------------------------
	[5] = {
		ID = "Whelen Liberty II",
		Scale = 1.05,
		Pos = Vector( 0, -12, 77.5 ),
		Ang = Angle( .5, 90, 0)
	},
	[6] = {
		ID = "Whelen Liberty II",
		Scale = 1.05,
		Pos = Vector( 0, -12, 77.5 ),
		Ang = Angle( .5, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[7] = {
		ID = "Whelen Liberty II",
		Scale = 1.05,
		Pos = Vector( 0, -12, 77.5 ),
		Ang = Angle( .5, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[8] = {
		ID = "Whelen Liberty II",
		Scale = 1.05,
		Pos = Vector( 0, -12, 77.5 ),
		Ang = Angle( .5, 90, 0),
		Color1 = A,
		Color2 = A
	},
	---------------------------------------------------------------
	[9] = {
		ID = "Whelen Liberty SX",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0)
	},
	[10] = {
		ID = "Whelen Liberty SX",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	[11] = {
		ID = "Whelen Liberty SX",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	[12] = {
		ID = "Whelen Liberty SX",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0),
		Color1 = A,
		Color2 = A
	},
	----------------------------------------------------
	[13] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -13, 79 ),
		Ang = Angle( 1.5, 90, 0)
	},
	[14] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -13, 79 ),
		Ang = Angle( 1.5, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[15] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -13, 79 ),
		Ang = Angle( 1.5, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[16] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -13, 79 ),
		Ang = Angle( 1.5, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-----------------------------------------------
	[17] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
	},
	[18] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = R,
		Color2 = R
	},
	--
	[19] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[20] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-------------------
	-------------------
	[21] = {
		ID = "Code 3 RX2700",
		Scale = .87,
		Pos = Vector( 0, -12, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[22] = {
		ID = "Code 3 RX2700 Red",
		Scale = .87,
		Pos = Vector( 0, -12, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[23] = {
		ID = "Code 3 RX2700 Blue",
		Scale = .87,
		Pos = Vector( 0, -12, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[24] = {
		ID = "Code 3 RX2700 MC",
		Scale = .87,
		Pos = Vector( 0, -12, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	-------------------------------------
	[25] = {
		ID = "Federal Signal Vision SLR",
		Scale = .85,
		Pos = Vector( 0, -15, 79.0),
		Ang = Angle( 0, 90, 0)
	},
	[26] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .85,
		Pos = Vector( 0, -15, 79.0),
		Ang = Angle( 0, 90, 0)
	},
	--
	[27] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .85,
		Pos = Vector( 0, -15, 79.0),
		Ang = Angle( 0, 90, 0)
	},
	--
	[28] = {
		ID = "Federal Signal Vision SLR Amber",
		Scale = .85,
		Pos = Vector( 0, -15, 79.0),
		Ang = Angle( 0, 90, 0)
	},
	--------------------------------------------
	[29] = {
		ID = "Federal Signal Integrity",
		Scale = .87,
		Pos = Vector( 0, -15, 76.9 ),
		Ang = Angle( 1, 90, 0)
	},
	[30] = {
		ID = "Federal Signal Integrity",
		Scale = .87,
		Pos = Vector( 0, -15, 76.9 ),
		Ang = Angle( 1, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[31] = {
		ID = "Federal Signal Integrity",
		Scale = .87,
		Pos = Vector( 0, -15, 76.9 ),
		Ang = Angle( 1, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[32] = {
		ID = "Federal Signal Integrity",
		Scale = .87,
		Pos = Vector( 0, -15, 76.9 ),
		Ang = Angle( 1, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-----------------------------
	[33] = {
		ID = "Federal Signal Legend",
		Scale = .95,
		Pos = Vector( 0, -13, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[34] = {
		ID = "Federal Signal Legend Red",
		Scale = .95,
		Pos = Vector( 0, -13, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[35] = {
		ID = "Federal Signal Legend Blue",
		Scale = .95,
		Pos = Vector( 0, -13, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	-----------------------------------------
	[36] = {
		ID = "Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[37] = {
		ID = "Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[38] = {
		ID = "Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	--
	[39] = {
		ID = "Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	---------------------------------------------
	----------------------------
	[40] = {
		ID = "Whelen Edge",
		Scale = .94,
		Pos = Vector( 0, -15, 74.5),
		Ang = Angle( -1.5, 270, 0)
	},
	--
	[41] = {
		ID = "Whelen Edge Red",
		Scale = .94,
		Pos = Vector( 0, -15, 74.5),
		Ang = Angle( -1.5, 270, 0)
	},
	--
	[42] = {
		ID = "Whelen Edge Blue",
		Scale = .94,
		Pos = Vector( 0, -15, 74.5),
		Ang = Angle( -1.5, 270, 0)
	},
	--
	[43] = {
		ID = "Whelen Edge Amber",
		Scale = .94,
		Pos = Vector( 0, -15, 74.5),
		Ang = Angle( -1.5, 270, 0)
	},
	----------------------------------------
	[44] = {
		ID = "Code 3 MX7000",
		Scale = 1.018,
		Pos = Vector( 0, -13, 73.5),
		Ang = Angle( 0, -90, 0 )
	},
	[45] = {
		ID = "Code 3 MX7000 Blue",
		Scale = 1.018,
		Pos = Vector( 0, -13, 73.5),
		Ang = Angle( -1, -90, 0 )
	},
	[46] = {
		ID = "Code 3 MX7000 Amber",
		Scale = 1.018,
		Pos = Vector( 0, -13, 73.5),
		Ang = Angle( 0, -90, 0 )
	},
	[47] = {
		ID = "Code 3 MX7000 Red",
		Scale = 1.018,
		Pos = Vector( 0, -13, 73.5),
		Ang = Angle( 0, -90, 0 )
	},
	--------------------------------
	[48] = {
		ID = "Code 3 x21 TR",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 )
	},
	[49] = {
		ID = "Code 3 x21 TR Red",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 )
	},
	[50] = {
		ID = "Code 3 x21 TR Blue",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 )
	},
	------------------------------------
	[51] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 )
	},
	[52] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[53] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[54] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .95,
		Pos = Vector( 0, -13, 78.5),
		Ang = Angle( -2, -90, 0 ),
		Color1 = A,
		Color2 = A
	},
	-----------------------------------------------------
	[55] = {
		ID = "Whelen Liberty SX RB",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
	},
	[56] = {
		ID = "Whelen Liberty SX Red",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
		Color1 = R,
		Color2 = R
	},
	[57] = {
		ID = "Whelen Liberty SX Blue",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
	},
	[58] = {
		ID = "Whelen Liberty SX Amber",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
	},
	-------------------------------------------
	[59] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
	},
	[60] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
		Color1 = R,
		Color2 = R,
	},
	[61] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[62] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.06,
		Pos = Vector( 0, -13, 76.7 ),
		Ang = Angle( -1.5, 270, 0),
		Color1 = A,
		Color2 = A
	},
	-------------------------
	[63] = {
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector( 15, -5, 74.8),
		Ang = Angle( 0, 90, 0)
	},
	[64] = {
		ID = "Federal Signal UltraStar",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	[65] = {
		ID = "Federal Signal UltraStar Red",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	[66] = {
		ID = "Federal Signal UltraStar Amber",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	[67] = {
		ID = "2019 Feniex Avatar ELS",
		Scale = .92,
		Pos = Vector( 0, -12, 74.4 ),
		Ang = Angle( 1.6, 90, 0)
	},
	[68] = {
		ID = "TDMP Federal Signal Aerodynic",
		Scale = .875,
		Pos = Vector( 0, -14, 74.8 ),
		Ang = Angle( -2, 270, 0)
	},
	[69] = {
		ID = "Federal Signal Arjent",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0)
	},
	[70] = {
		ID = "TDMP Michigan Beacon",
		Scale = 1,
		Pos = Vector( 0, -15, 75.2),
		Ang = Angle( 0, 90, 0)
	},
	---------------------------------------
	[71] = {
		ID = "Federal Signal Arjent Clear",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
	},
	[72] = {
		ID = "Federal Signal Arjent Clear",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[73] = {
		ID = "Federal Signal Arjent Clear",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[74] = {
		ID = "Federal Signal Arjent Clear",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-----------------------------
	[75] = {
		ID = "Federal Signal Arjent Red",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
	},
	[76] = {
		ID = "Federal Signal Arjent Blue",
		Scale = .725,
		Pos = Vector( 0, -13, 78 ),
		Ang = Angle( 0, 90, 0),
	},
	--------
	[77] = {
		ID = "Whelen Freedom Clear",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 )
	},
	[78] = {
		ID = "Whelen Freedom Clear",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[79] = {
		ID = "Whelen Freedom Clear",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[80] = {
		ID = "Whelen Freedom Clear",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	-----------------------------------\
	[81] = {
		ID = "Whelen Freedom RB",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
	},
	[82] = {
		ID = "Whelen Freedom Red",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
	},
	[83] = {
		ID = "Whelen Freedom Blue",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
	},
	[84] = {
		ID = "Whelen Freedom Amber",
		Scale = 1.01,
		Pos = Vector( 0, -12, 78.5),
		Ang = Angle( 2, 90, 0 ),
	},
	------------------------------
	[85] = {
		ID = "Code 3 Solex",
		Scale = .96,
		Pos = Vector( 0, -12, 74),
		Ang = Angle( 0, 0, -1 )
	},
	[86] = {
		ID = "Code 3 Solex",
		Scale = .96,
		Pos = Vector( 0, -12, 74),
		Ang = Angle( 0, 0, -1 ),
		Color1 = R,
		Color2 = R
	},
	[87] = {
		ID = "Code 3 Solex",
		Scale = .96,
		Pos = Vector( 0, -12, 74),
		Ang = Angle( 0, 0, -1 ),
		Color1 = B,
		Color2 = B
	},
	[88] = {
		ID = "Code 3 Solex",
		Scale = .96,
		Pos = Vector( 0, -12, 74),
		Ang = Angle( 0, 0, -1 ),
		Color1 = A,
		Color2 = A,
		Color3 = CW,
		Color4 = CW
	},
	---------------------------------
	[89] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
	},
	[90] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = "RED",
		Color2 = "RED"
	},
	[91] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[92] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .84,
		Pos = Vector( 0, -12, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	----------------------------------------
	[93] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = R,
	},
	[94] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[95] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[96] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -13, 78.55 ),
		Ang = Angle( 1, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--------------------------
	[97] = {
		ID = "Whelen Justice Mini",
		Scale = 1,
		Pos = Vector( 0, -15, 77 ),
		Ang = Angle( 0, 90, 0),
		Phase = PA
	},
	[98] = {
		ID = "Whelen Justice Mini",
		Scale = 1,
		Pos = Vector( 0, -15, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
		Phase = PA
	},
	[99] = {
		ID = "Whelen Justice Mini",
		Scale = 1,
		Pos = Vector( 0, -15, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[100] = {
		ID = "Whelen Justice Mini",
		Scale = 1,
		Pos = Vector( 0, -15, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
		Phase = PA
	},
	[101] = {
		ID = "Whelen Justice Mini",
		Scale = 1,
		Pos = Vector( 0, -15, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
		Phase = PB
	},
	----------------------------------------------
	[102] = {
		ID = "Pringles Whelen Liberty SX",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0)
	},
	[103] = {
		ID = "Pringles Whelen Liberty SX Red",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0)
	},
	[104] = {
		ID = "Pringles Whelen Liberty SX Blue",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0)
	},
	[105] = {
		ID = "Pringles Whelen Liberty SX Amber",
		Scale = .91,
		Pos = Vector( 0, -12, 77.9 ),
		Ang = Angle( 1.8, 90, 0)
	},
	------------------------------------------------------
	[106] = {
		ID = "Pringles DOJ Whelen Liberty II",
		Scale = 1.05,
		Pos = Vector( 0, -12, 77.5 ),
		Ang = Angle( .5, 90, 0)
	},
	[107] = {
		ID = "WPD Liberty LB",
		Scale = .92,
		Pos = Vector( 0, -12, 74.8),
		Ang = Angle( 1.2, -90, 0 )
	},
	[108] = {
		ID = "NYSP Whelen Liberty",
		Scale = .98,
		Pos = Vector( 0, -13, 74 ),
		Ang = Angle( -1.5, 270, 0),
	},
	[109] = {
		ID = "NYSP Whelen Freedom",
		Scale = .83,
		Pos = Vector( 0, -12, 74.5),
		Ang = Angle( -1.5, -90, 0 )
	},
	[110] = {
		ID = "CHP Whelen Liberty SX",
		Scale = .915,
		Pos = Vector( 0, -13, 77.8),
		Ang = Angle( 1.5, 90, 0 )
	},
	[111] = {
		ID = "Spotlight Round Prop",
		Scale = .9,
		Pos = Vector(-39, 42, 58),
		Ang = Angle( 0, -110, 0),
	},
	[112] = {
		ID = "Spotlight Round Prop Right",
		Scale = .9,
		Pos = Vector(39, 42, 58),
		Ang = Angle( 0, -80, 0),
	},
	------------------------------------
	[113] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -10, 117.5, 33.3),
		Ang = Angle( 00, -84, 0 ),
		Color1 = R,
		Color2 = B,
		Phase = PA
	},
	[114] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 10, 117.5, 33.3),
		Ang = Angle( 00, -96, 0 ),
		Color1 = B,
		Color2 = R,
		Phase  = PB
	},
	---------
	[115] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -10, 117.5, 33.3),
		Ang = Angle( 00, -84, 0 ),
		Color1 = R,
		Color2 = B,
		Phase = PA
	},
	[116] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 10, 117.5, 33.3),
		Ang = Angle( 00, -96, 0 ),
		Color1 = R,
		Color2 = R,
		Phase  = PB
	},
	---------
	[117] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -10, 117.5, 33.3),
		Ang = Angle( 00, -84, 0 ),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[118] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 10, 117.5, 33.3),
		Ang = Angle( 00, -96, 0 ),
		Color1 = B,
		Color2 = R,
		Phase  = PB
	},
	---------
	[119] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( -10, 117.5, 33.3),
		Ang = Angle( 00, -84, 0 ),
		Color1 = A,
		Color2 = A,
		Phase = PA
	},
	[120] = {
		ID = "Whelen Tir3",
		Scale = 1,
		Pos = Vector( 10, 117.5, 33.3),
		Ang = Angle( 00, -96, 0 ),
		Color1 = A,
		Color2 = A,
		Phase  = PB
	},
	---------
	[121] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( 10, 117.6, 34),
		Ang = Angle( 0, -7, 0 ),
		Color1 = B,
		Phase = "B2"
	},
	[122] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( -9, 117.8, 34),
		Ang = Angle( 0, 7, 0 ),
		Color1 = R,
		Phase = "A2"
	},
	--
	[123] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( 10, 117.6, 34),
		Ang = Angle( 0, -7, 0 ),
		Color1 = R,
		Phase = "B2"
	},
	[124] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( -9, 117.8, 34),
		Ang = Angle( 0, 7, 0 ),
		Color1 = R,
		Phase = "A2"
	},
	--
	[125] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( 10, 117.6, 34),
		Ang = Angle( 0, -7, 0 ),
		Color1 = B,
		Phase = "B2"
	},
	[126] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( -9, 117.8, 34),
		Ang = Angle( 0, 7, 0 ),
		Color1 = B,
		Phase = "A2"
	},
	--
	[127] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( 10, 117.6, 34),
		Ang = Angle( 0, -7, 0 ),
		Color1 = A,
		Phase = "B2"
	},
	[128] = {
		ID = "Federal Signal MicroPulse",
		Scale = 1,
		Pos = Vector( -9, 117.8, 34),
		Ang = Angle( 0, 7, 0 ),
		Color1 = A,
		Phase = "A2"
	},
	-----------------------
	[129] = {
		ID = "Pringles Skirt Lighting New",
		Scale = 1,
		Pos = Vector( 0, 121.3, 17.5),
		Ang = Angle( 0, 270, 0 )
	},
	[130] = {
		ID = "Pringles Skirt Lighting New",
		Scale = 1,
		Pos = Vector( 0, 121.3, 17.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = R,
		Color2 = R
	},
	[131] = {
		ID = "Pringles Skirt Lighting New",
		Scale = 1,
		Pos = Vector( 0, 121.3, 17.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Color2 = B
	},
	[132] = {
		ID = "Pringles Skirt Lighting New",
		Scale = 1,
		Pos = Vector( 0, 121.3, 17.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = A,
		Color2 = A
	},
	----------------------------------
	[133] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 121.1, 22 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
	},
	[134] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 121.1, 22 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[135] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 121.1, 22 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
		
	},
	[136] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 121.1, 22 ),
		Ang = Angle( 0, 90, 0 ),
		Color1  = A,
		Color2 = A
		
	},
	-----------------------------------
	[137] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = B,
		Phase = PA
	},
	[138] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = R,
		Phase = PB
	},
	--
	[139] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = R,
		Phase = PA
	},
	[140] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = R,
		Phase = PB
	},
	--
	[141] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = B,
		Phase = PA
	},
	[142] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = B,
		Phase = PB
	},
	--
	[143] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = A,
		Phase = PA
	},
	[144] = {
		ID = "Whelen Ion Extra",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = A,
		Phase = PB
	},
	------------------------------------------
	[145] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = B,
		Color2 = R,
	},
	[146] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = R,
		Color2 = B,
	},
	--
	[147] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = R,
		Color2 = W,
	},
	[148] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = W,
		Color2 = R,
	},
	--
	[149] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = B,
		Color2 = W,
	},
	[150] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = W,
		Color2 = B,
	},
	--
	[151] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( 10, 117.4, 33.45),
		Ang = Angle( 0, -5, 10 ),
		Color1 = A,
		Color2 = W,
	},
	[152] = {
		ID = "Whelen Ion MC",
		Scale = .8,
		Pos = Vector( -10, 117.4, 33.45),
		Ang = Angle( 0, 5, 10 ),
		Color1 = W,
		Color2 = A,
	},
	[153] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( -45, 32.5, 53.5),
		Ang = Angle( 20, -55, 0 ),
		Phase = PA,
		Color1 = R,
		Color2 = R,
		Color3 = R,
		Color4 = R
	},
	[154] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( 45, 32.5, 53.5),
		Ang = Angle( 20, 230, 0 ),
		Phase = PB,
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B
	},
	--
	[155] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( -45, 32.5, 53.5),
		Ang = Angle( 20, -55, 0 ),
		Phase = PA,
		Color1 = R,
		Color2 = R,
		Color3 = R,
		Color4 = R
	},
	[156] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( 45, 32.5, 53.5),
		Ang = Angle( 20, 230, 0 ),
		Phase = PB,
		Color1 = R,
		Color2 = R,
		Color3 = R,
		Color4 = R
	},
	--
	[157] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( -45, 32.5, 53.5),
		Ang = Angle( 20, -55, 0 ),
		Phase = PA,
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B
	},
	[158] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( 45, 32.5, 53.5),
		Ang = Angle( 20, 230, 0 ),
		Phase = PB,
		Color1 = B,
		Color2 = B,
		Color3 = B,
		Color4 = B
	},
	--
	[159] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( -45, 32.5, 53.5),
		Ang = Angle( 20, -55, 0 ),
		Phase = PA,
		Color1 = A,
		Color2 = A,
		Color3 = A,
		Color4 = A
	},
	[160] = {
		ID = "P Whelen Ion V Series",
		Scale = .5,
		Pos = Vector( 45, 32.5, 53.5),
		Ang = Angle( 20, 230, 0 ),
		Phase = PB,
		Color1 = A,
		Color2 = A,
		Color3 = A,
		Color4 = A
	},
	--
	[161] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( -45, 30, 50),
		Ang = Angle( 0, 60, 0 ),
		Phase = PA,
		Color1 = R,
		Color2 = R
	},
	[162] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( 45, 30, 50),
		Ang = Angle( 0, -60, 0 ),
		Phase = PB,
		Color1 = B,
		Color2 = B
	},
	--
	[163] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( -45, 30, 50),
		Ang = Angle( 0, 60, 0 ),
		Phase = PA,
		Color1 = R,
		Color2 = R
	},
	[164] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( 45, 30, 50),
		Ang = Angle( 0, -60, 0 ),
		Phase = PB,
		Color1 = R,
		Color2 = R
	},
	--
	--
	[165] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( -45, 30, 50),
		Ang = Angle( 0, 60, 0 ),
		Phase = PA,
		Color1 = B,
		Color2 = B
	},
	[166] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( 45, 30, 50),
		Ang = Angle( 0, -60, 0 ),
		Phase = PB,
		Color1 = B,
		Color2 = B
	},
	--
	--
	[167] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( -45, 30, 50),
		Ang = Angle( 0, 60, 0 ),
		Phase = PA,
		Color1 = A,
		Color2 = A
	},
	[168] = {
		ID = "SoundOff Intersector",
		Scale = .8,
		Pos = Vector( 45, 30, 50),
		Ang = Angle( 0, -60, 0 ),
		Phase = PB,
		Color1 = A,
		Color2 = A
	},
	--
	[169] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 )
	},
	[170] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R,
	},
	[171] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[172] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	--
	[173] = {
		ID = "DOJ Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 )
	},
	[174] = {
		ID = "DOJ Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R,
	},
	[175] = {
		ID = "DOJ Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[176] = {
		ID = "DOJ Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 67.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	-------------------
	[177] = {
		ID = "Code 3 Wingman Front",
		Scale = 1,
		Pos = Vector( 0, 20, 68),
		Ang = Angle( 0, -90, 0 )
	},
	[178] = {
		ID = "Code 3 Wingman Front",
		Scale = 1,
		Pos = Vector( 0, 20, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = R,

	},
	[179] = {
		ID = "Code 3 Wingman Front",
		Scale = 1,
		Pos = Vector( 0, 20, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = B,
		Color2 = B,
	},
	[180] = {
		ID = "Code 3 Wingman Front",
		Scale = 1,
		Pos = Vector( 0, 20, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = A,
		Color2 = A
	},
	----------
	[181] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 14, 18, 68.5),
		Ang = Angle( 0, 85, 0 ),
		Color1 = R,
		Color2 = B
	},
	[182] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 14, 18, 68.5),
		Ang = Angle( 0, 85, 0 ),
		Color1 = R,
		Color2 = R
	},
	[183] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 14, 18, 68.5),
		Ang = Angle( 0, 85, 0 ),
		Color1 = B,
		Color2 = B
	},
	[184] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 14, 18, 68.5),
		Ang = Angle( 0, 85, 0 ),
		Color1 = A,
		Color2 = A
	},
	--
	[185] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 20, 68),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

}

EMV.Selections = {
	{
		Name = "Lightbars",
		Options = {
			{ Name = "None"},
			{ Category = "Whelen Legacy", Name = "R/B", Auto = {1}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Red", Auto = {2}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Blue", Auto = {3}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Amber", Auto = {4}, Props = {} },
			----
			{ Category = "Whelen Liberty II", Name = "R/B", Auto = {5}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Red", Auto = {6}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Blue", Auto = {7}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Amber", Auto = {8}, Props = {} },
			--
			{ Category = "Whelen Liberty SX", Name = "R/B", Auto = {9}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Red", Auto = {10}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Blue", Auto = {11}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Amber", Auto = {12}, Props = {} },
			--
			{ Category = "Whelen Ultra Freedom", Name = "R/B", Auto = {13}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Red", Auto = {14}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Blue", Auto = {15}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Amber", Auto = {16}, Props = {} },
			--
			{ Category = "Whelen Justice", Name = "R/B", Auto = {17}, Props = {} },
			{ Category = "Whelen Justice", Name = "Red", Auto = {18}, Props = {} },
			{ Category = "Whelen Justice", Name = "Blue", Auto = {19}, Props = {} },
			{ Category = "Whelen Justice", Name = "Amber", Auto = {20}, Props = {} },
			--
			{ Category = "Code 3 RX2700", Name = "R/B", Auto = {21}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Red", Auto = {22}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Blue", Auto = {23}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "MC", Auto = {24}, Props = {} },
			--
			{ Category = "Federal Signal Vision SLR", Name = "NYPD", Auto = {25}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B Clear", Auto = {26}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B", Auto = {27}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "Amber", Auto = {28}, Props = {} },
			--
			{ Category = "Federal Signal Integrity", Name = "R/B", Auto = {29}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Red", Auto = {30}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Blue", Auto = {31}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Amber", Auto = {32}, Props = {} },
			--
			{ Category = "Federal Signal Legend", Name = "R/B", Auto = {33}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Red", Auto = {34}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Blue", Auto = {35}, Props = {} },
			--
			{ Category = "Federal Signal Valor", Name = "R/B", Auto = {36}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Red", Auto = {37}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Blue", Auto = {38}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Amber", Auto = {39}, Props = {} },
			---
			{ Category = "Whelen Edge", Name = "R/B", Auto = {40}, Props = {} },
			{ Category = "Whelen Edge", Name = "Red", Auto = {41}, Props = {} },
			{ Category = "Whelen Edge", Name = "Blue", Auto = {42}, Props = {} },
			{ Category = "Whelen Edge", Name = "Amber", Auto = {43}, Props = {} },
			--
			{ Category = "Code 3 MX7000", Name = "Red/Blue", Auto = {44}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Blue", Auto = {45}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Amber", Auto = {46}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Red", Auto = {47}, Props = {} },
			--
			{ Category = "Code 3 x21 TR", Name = "R/B", Auto = {48}, Props = {} },
			{ Category = "Code 3 x21 TR", Name = "Red", Auto = {49}, Props = {} },
			{ Category = "Code 3 x21 TR", Name = "Blue", Auto = {50}, Props = {} },
			--
			{ Category = "Code 3 x21 TR Clear", Name = "R/B", Auto = {51}, Props = {} },
			{ Category = "Code 3 x21 TR Clear", Name = "Red", Auto = {52}, Props = {} },
			{ Category = "Code 3 x21 TR Clear", Name = "Blue", Auto = {53}, Props = {} },
			{ Category = "Code 3 x21 TR Clear", Name = "Amber", Auto = {54}, Props = {} },
			--
			{ Category = "SM Whelen Liberty SX", Name = "R/B", Auto = {55}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Red", Auto = {56}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Blue", Auto = {57}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Amber", Auto = {58}, Props = {} },
			--
			{ Category = "SM Whelen Liberty SX Clear", Name = "R/B", Auto = {59}, Props = {} },
			{ Category = "SM Whelen Liberty SX Clear", Name = "Red", Auto = {60}, Props = {} },
			{ Category = "SM Whelen Liberty SX Clear", Name = "Blue", Auto = {61}, Props = {} },
			{ Category = "SM Whelen Liberty SX Clear", Name = "Amber", Auto = {62}, Props = {} },
			--
			{ Category = "FS UltraStar Single", Name = "Blue", Auto = {64}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Red", Auto = {65}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Amber", Auto = {66}, Props = {} },
			--
			{ Category = "Federal Signal Arjent Clear", Name = "R/B", Auto = {71}, Props = {} },
			{ Category = "Federal Signal Arjent Clear", Name = "Red", Auto = {72}, Props = {} },
			{ Category = "Federal Signal Arjent Clear", Name = "Blue", Auto = {73}, Props = {} },
			{ Category = "Federal Signal Arjent Clear", Name = "Amber", Auto = {74}, Props = {} },
			--
			{ Category = "Federal Signal Arjent", Name = "R/B", Auto = {69}, Props = {} },
			{ Category = "Federal Signal Arjent", Name = "Red", Auto = {75}, Props = {} },
			{ Category = "Federal Signal Arjent", Name = "Blue", Auto = {76}, Props = {} },
			--
			{ Category = "SM Whelen Freedom Clear", Name = "R/B", Auto = {77}, Props = {} },
			{ Category = "SM Whelen Freedom Clear", Name = "Red", Auto = {78}, Props = {} },
			{ Category = "SM Whelen Freedom Clear", Name = "Blue", Auto = {79}, Props = {} },
			{ Category = "SM Whelen Freedom Clear", Name = "Amber", Auto = {80}, Props = {} },
			--
			{ Category = "SM Whelen Freedom", Name = "R/B", Auto = {81}, Props = {} },
			{ Category = "SM Whelen Freedom", Name = "Red", Auto = {82}, Props = {} },
			{ Category = "SM Whelen Freedom", Name = "Blue", Auto = {83}, Props = {} },
			{ Category = "SM Whelen Freedom", Name = "Amber", Auto = {84}, Props = {} },
			--
			{ Category = "Code 3 Solex", Name = "R/B", Auto = {85}, Props = {} },
			{ Category = "Code 3 Solex", Name = "Red", Auto = {86}, Props = {} },
			{ Category = "Code 3 Solex", Name = "Blue", Auto = {87}, Props = {} },
			{ Category = "Code 3 Solex", Name = "Amber", Auto = {88}, Props = {} },
			--
			{ Category = "Pringles Valor Lightbar", Name = "R/B", Auto = {89}, Props = {} },
			{ Category = "Pringles Valor Lightbar", Name = "Red", Auto = {90}, Props = {} },
			{ Category = "Pringles Valor Lightbar", Name = "Blue", Auto = {91}, Props = {} },
			{ Category = "Pringles Valor Lightbar", Name = "Amber", Auto = {92}, Props = {} },
			--
			{ Category = "Pringles Whelen Justice", Name = "R/B", Auto = {93}, Props = {} },
			{ Category = "Pringles Whelen Justice", Name = "Red", Auto = {94}, Props = {} },
			{ Category = "Pringles Whelen Justice", Name = "Blue", Auto = {95}, Props = {} },
			{ Category = "Pringles Whelen Justice", Name = "Amber", Auto = {96}, Props = {} },
			--
			{ Category = "Pringles Whelen Mini Justice", Name = "R/B", Auto = {97}, Props = {} },
			{ Category = "Pringles Whelen Mini Justice", Name = "Red", Auto = {98}, Props = {} },
			{ Category = "Pringles Whelen Mini Justice", Name = "Blue", Auto = {99}, Props = {} },
			{ Category = "Pringles Whelen Mini Justice", Name = "Amber", Auto = {100}, Props = {} },
			--
			{ Category = "Pringles Whelen Liberty SX", Name = "R/B", Auto = {102}, Props = {} },
			{ Category = "Pringles Whelen Liberty SX", Name = "Red", Auto = {103}, Props = {} },
			{ Category = "Pringles Whelen Liberty SX", Name = "Blue", Auto = {104}, Props = {} },
			{ Category = "Pringles Whelen Liberty SX", Name = "Amber", Auto = {105}, Props = {} },
			--
			{ Category = "Other", Name = "Amber Dome", Auto = {63}, Props = {} },
			{ Category = "Other", Name = "Fenix Avatar", Auto = {67}, Props = {} },
			{ Category = "Other", Name = "Federal Signal Aerodynic", Auto = {68}, Props = {} },
			{ Category = "Other", Name = "Michigan Beacon", Auto = {70}, Props = {} },
			{ Category = "Other", Name = "Whelen Mini Jutice Pace", Auto = {101}, Props = {} },
			--
			{ Category = "Specific Lightbars", Name = "DOJ Liberty II", Auto = {106}, Props = {} },
			{ Category = "Specific Lightbars", Name = "NYSP Liberty", Auto = {108}, Props = {} },
			{ Category = "Specific Lightbars", Name = "NYSP Freedom", Auto = {109}, Props = {} },
			{ Category = "Specific Lightbars", Name = "Watertown Lightbar", Auto = {107}, Props = {} },
			{ Category = "Specific Lightbars", Name = "CHP Liberty", Auto = {110}, Props = {} },


		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "None"},
			{ Category = "Plain", Name = "Impala Sentina", Auto = {}, Props = {3} },
			{ Category = "Plain", Name = "Impala Sentina Pursuit", Auto = {}, Props = {4} },
			{ Category = "Plain", Name = "Go Rhino Pushbar", Auto = {}, Props = {5} },
			{ Category = "Plain", Name = "NYPD Pushrod", Auto = {}, Props = {6} },

		}
	},
	{
		Name = "Grill",
		Options = {
			{ Name = "None"},
			{ Category = "TIR 3", Name = "R/B", Auto = {113, 114}, Props = {} },
			{ Category = "TIR 3", Name = "Red", Auto = {115,116}, Props = {} },
			{ Category = "TIR 3", Name = "Blue", Auto = {117,118}, Props = {} },
			{ Category = "TIR 3", Name = "Amber", Auto = {119,120}, Props = {} },
			--
			{ Category = "FS MicroPulse", Name = "R/B", Auto = {121,122}, Props = {} },
			{ Category = "FS MicroPulse", Name = "Red", Auto = {123,124}, Props = {} },
			{ Category = "FS MicroPulse", Name = "Blue", Auto = {125,126}, Props = {} },
			{ Category = "FS MicroPulse", Name = "Amber", Auto = {127,128}, Props = {} },
			--
			{ Category = "Whelen Ion Extra", Name = "R/B", Auto = {137,138}, Props = {} },
			{ Category = "Whelen Ion Extra", Name = "Red", Auto = {139,140}, Props = {} },
			{ Category = "Whelen Ion Extra", Name = "Blue", Auto = {141,142}, Props = {} },
			{ Category = "Whelen Ion Extra", Name = "Amber", Auto = {143,144}, Props = {} },
			--
			{ Category = "Whelen Ion MC", Name = "R/B", Auto = {145,146}, Props = {} },
			{ Category = "Whelen Ion MC", Name = "Red", Auto = {147,148}, Props = {} },
			{ Category = "Whelen Ion MC", Name = "Blue", Auto = {149,150}, Props = {} },
			{ Category = "Whelen Ion MC", Name = "Amber", Auto = {151,152}, Props = {} },
			--
			{ Category = "5LED", Name = "R/B", Auto = {129}, Props = {} },
			{ Category = "5LED", Name = "Red", Auto = {130}, Props = {} },
			{ Category = "5LED", Name = "Blue", Auto = {131}, Props = {} },
			{ Category = "5LED", Name = "Amber", Auto = {132}, Props = {} },
			--
			{ Category = "SlimLighter", Name = "R/B", Auto = {133}, Props = {} },
			{ Category = "SlimLighter", Name = "Red", Auto = {134}, Props = {} },
			{ Category = "SlimLighter", Name = "Blue", Auto = {135}, Props = {} },
			{ Category = "SlimLighter", Name = "Amber", Auto = {136}, Props = {} },
		}
	},
	{
		Name = "Spotlights",
		Options = {
			{ Name = "None"},
			{ Category = "SM", Name = "2 Down", Auto = {}, Props = {1,2} },
			{ Category = "SM", Name = "Driver Up", Auto = {111}, Props = {1} },
			{ Category = "SM", Name = "Both Up", Auto = {111,112}, Props = {} },
			{ Category = "SM", Name = "Pass Up", Auto = {112}, Props = {2} },
		}
	},
	{
		Name = "Mirror Lights",
		Options = {
			{ Name = "None"},
			{ Category = "Whelen Ion 500V", Name = "R/B", Auto = {153,154}, Props = {} },
			{ Category = "Whelen Ion 500V", Name = "Red", Auto = {155,156}, Props = {} },
			{ Category = "Whelen Ion 500V", Name = "Blue", Auto = {157,158}, Props = {} },
			{ Category = "Whelen Ion 500V", Name = "Amber", Auto = {159,160}, Props = {} },
			-- 
			{ Category = "SoundOff Intersector",  Name = "R/B", Auto = { 161,162}, Props = {} },
			{ Category = "SoundOff Intersector", Name = "Red", Auto = { 163,164}, Props = {} },
			{ Category = "SoundOff Intersector",  Name = "Blue", Auto = { 165,166}, Props = {} },
			{ Category = "SoundOff Intersector",  Name = "Amber", Auto = { 167,168}, Props = {} },
		}
	},
	{
		Name = "Front Upper",
		Options = {
			{ Name = "None"},
			{ Category = "TDM Front Upper", Name = "R/B", Auto = {169}, Props = {} },
			{ Category = "TDM Front Upper", Name = "Red", Auto = {170}, Props = {} },
			{ Category = "TDM Front Upper", Name = "Blue", Auto = {171}, Props = {} },
			{ Category = "TDM Front Upper", Name = "Amber", Auto = {172}, Props = {} },
			--
			{ Category = "Pringles Front Upper", Name = "R/B", Auto = {173}, Props = {} },
			{ Category = "Pringles Front Upper", Name = "Red", Auto = {174}, Props = {} },
			{ Category = "Pringles Front Upper", Name = "Blue", Auto = {175}, Props = {} },
			{ Category = "Pringles Front Upper", Name = "Amber", Auto = {176}, Props = {} },
			--
			{ Category = "Code 3 Wingman", Name = "R/B", Auto = {177}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Red", Auto = {178}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Blue", Auto = {179}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Amber", Auto = {180}, Props = {} },
			--
			{ Category = "Fenix Apollo", Name = "R/B", Auto = {181}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Red", Auto = {182}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Blue", Auto = {183}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Amber", Auto = {184}, Props = {} },
			--
			{ Category = "Fenix Fusion", Name = "Red/Blue", Auto = {185}, Props = {} },
			--{ Category = "Fenix Fusion", Name = "Red", Auto = {186}, Props = {} },
			--{ Category = "Fenix Fusion", Name = "Blue", Auto = {187}, Props = {} },
			--{ Category = "Fenix Fusion", Name = "Amber", Auto = {188}, Props = {} },

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
				{ Vector( -41, 47.5, 61 ), Angle( 5, 82, 0 ), "spot" },
				{ Vector( 41, 47.5, 61 ), Angle( 5, 92, 0 ), "spot" },
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
	["spot"] = {
		Color = Color(255,225,255,255),
		Texture = "effects/flashlight/soft",
		Near = 100,
		FOV = 80,
		Distance = 1400,
	},
}


local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "Pringles: Customizable Photon",
	Author = "[CRPG] Officer Pringle",
	Model = "models/smcars/2012_impala_ppv.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/pringlesscripts/12impalamod.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

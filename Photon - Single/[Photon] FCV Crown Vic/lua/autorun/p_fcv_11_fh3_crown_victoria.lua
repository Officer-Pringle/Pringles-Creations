AddCSLuaFile()

EMV_DEBUG = false

	local A = "AMBER"
	local DA = "D_AMBER"
	local R = "RED"
	local DR = "D_RED"
	local B = "BLUE"
	local W = "WHITE"
	local SW = "S_WHITE"
	local CW = "C_WHITE"

	local PI = {}

	PI.Meta = {
		--[[-------------------------------------------------------------------------
		TAILLIGHTS
		---------------------------------------------------------------------------]]
		cvpifh3_tail = {
			AngleOffset = 90,
			W = 8,
			H = 7,
			Sprite = "sprites/emv/crownvic_tail",
			Scale = 1.5,
		},
		cvpifh3_tail2 = {
			AngleOffset = -90,
			W = 8,
			H = 8,
			Sprite = "sprites/emv/crownvic_tail",
			Scale = 1.5,
		},
		reverse1 = {
			AngleOffset = 90,
			W = 10,
			H = 11,
			Sprite = "sprites/emv/crownvic_reverse",
			Scale = 2,
			WMult = 1.5
		},
		headlight = {
			AngleOffset = -90,
			W = 13,
			H = 14,
			//Sprite = "sprites/emv/blank",
			Sprite = "sprites/emv/crownvic_headlight",
			Scale = 1.5,
			WMult = 1
		},
		headlight2 = {
			AngleOffset = 90,
			W = 13,
			H = 14,
			//Sprite = "sprites/emv/blank",
			Sprite = "sprites/emv/crownvic_headlight",
			Scale = 1.5,
			WMult = 1
		},
		out_markers = {
			AngleOffset = -90,
			W = 9,
			H = 9.8,
			Sprite = "sprites/emv/cvpi_corner_marker",
			//Sprite = "sprites/emv/blank",
			Scale = 1,
		},
		out_markers2 = {
			AngleOffset = -90,
			W = 9,
			H = 9.8,
			Sprite = "sprites/emv/cvpi_corner_marker",
			//Sprite = "sprites/emv/blank",
			Scale = 1,
		},
		marker = {
			AngleOffset = -90,
			W = 13,
			H = 12.5,
			//Sprite = "sprites/emv/blank",
			Sprite = "sprites/emv/crownvic_marker",
			Scale = 3,
			WMult = .4
		},
		brake3 = {
			AngleOffset = -90,
			W = 8.5,
			H = 8,
			Sprite = "sprites/emv/crownvic_brake",
			Scale = 3,
			WMult = 1.5
		},


	}

	PI.Positions = {
		[1] = { Vector( -32, -127.05, 44.3 ), Angle( 0, -17, 0 ), "cvpifh3_tail" },
		[2] = { Vector( -33.3, -126.38, 46.95 ), Angle( 0, -20, -12 ), "cvpifh3_tail" },	 
		[3] = { Vector( 33.3, -126.38, 46.95 ), Angle( 180, 200, -12 ), "cvpifh3_tail2" },
		[4] = { Vector( 32, -127.05, 44.3 ), Angle( 180, 197, 0 ), "cvpifh3_tail2" },
		[5] = { Vector( -11.7, -130.08, 43.7 ), Angle( 180, 0, 182 ), "reverse1" },
		[6] = { Vector( 11.7, -130.08, 43.7 ), Angle( 0, 1, -3.1 ), "reverse1" },
		[7] = { Vector( -29.1, 109.09, 36.6 ), Angle( 0, 14, 20 ), "headlight" },
		[8] = { Vector( 29.1, 109.06, 36.6 ), Angle( -0.92, 171.04, -25.82 ), "headlight2" },
		[9] = { Vector( -35.85, 105.77, 36.2 ), Angle( -181.72, 48.57, 168.53 ), "out_markers" },
		[10] = { Vector( 35.85, 105.77, 36.2 ), Angle( 0, -40, 20 ), "out_markers2" },
		[11] = { Vector( -23.25, 111, 36.56), Angle( 0, 10, 18 ), "marker" },
		[12] = { Vector( 23.25, 111, 36.56), Angle( 180, -14, 160), "marker" },
		[13] = { Vector( -11.7, -130.08, 43.7 ), Angle( 180, 0, 182 ), "reverse1" },
		[14] = { Vector( 11.7, -130.08, 43.7 ), Angle( 0, 1, -3.1 ), "reverse1" },
		[15] = { Vector( 0, -85.5, 58.2 ), Angle( 0, -180, 30 ), "brake3" },


	}

	PI.States = {}

	PI.States.Headlights = {}

	PI.States.Brakes = {
		{1 , DR},{ 2, DR},{3 , DR},{ 4, DR}, {15,DR}
	}
	PI.States.Blink_Left = {
		{11,A},{13,A}
	}
	PI.States.Blink_Right = {
		{12, A}, {14, A}
	}
	PI.States.Reverse = {
		{5, W}, {6, W}
	}
	PI.States.Running = {
		{1 , R},{ 2, R},{3 , R},{ 4, R},{7,W}, {8,W}, {9, A}, {10, A}
	}
--[[-------------------------------------------------------------------------
                  START OF VEHICLE CODE
---------------------------------------------------------------------------]]
local VehicleName = "FCV 2011 FH3 Crown Victoria"

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
EMV.Color = Color(255,255,255)
EMVU.Configurations.Supported["FCV 2011 FH3 Crown Victoria"] = "fcv_vic"


EMV.Liveries = {
	["Other"] = {
		["Retired B/W"] = "skins/pringle/retired_BW",
		["Blank"] = "",
		["U.S Mail Carrier"] = "skins/pringle/usps",
	},
	["Police"] = {
		["Los Santos Sheriff"] = "skins/pringle/lss_sheriff",
		["Rockford Police Department"] = "skins/pringle/RockfordPD",
		["RCMP"] = "skins/pringle/RCMP",
		["Watertown,NY PD"] = "skins/pringle/Watertown_PD",
		--["Alaska State Trooper"] = "pringle/skins/police/VIC_AST",
		["St Lawrence County Sheriff"] = "skins/pringle/SLC_Sheriff"
	},
	["DOJ Sheriff"] = {
		["Blain County Sheriff"] = "skins/doj/BCS_Sheriff",
		["Blain County Supervisor"] = "skins/doj/BCS_Super"
	}
}



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
	{ 26, 0 }, -- Trunk Panel
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
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.25,
		Pos = Vector(0, 122.1, 17.5),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/pushrod.mdl",
		Scale = 1,
		Pos = Vector(0, 114, 20),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/tdmcars/emergency/equipment/pushbar_wrap.mdl",
		Scale = 1.15,
		Pos = Vector(0, 107, 19.8),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		Model = "models/pringle/props/laptopstands/laptopstand2.mdl",
		Scale = .4,
		Pos = Vector(2.8, 16.5, 50),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/pringle/props/panasonic_toughbook/panasonic_toughbook.mdl",
		Scale = .09,
		Pos = Vector(4, 17, 51.1),
		Ang = Angle( 0, -45, 18),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[6] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 30, 55),
		Ang = Angle( 0, -16, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
		Model = "models/c3/shotgun/shotgun.mdl",
		Scale = .4,
		Pos = Vector(3, -19, 45),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(27, -115, 55.94),
		Ang = Angle( 6, -50, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[9] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-27, -115, 55.88),
		Ang = Angle( 6, -135, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[10] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[11] = {
		Model = "models/lonewolfie/alpr_antenne.mdl",
		Scale = 1,
		Pos = Vector(-25, -100, 75.7),
		Ang = Angle( -2, 180, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},


	---- SPOT LIGHTS
	[12] = {
		Model = "models/supermighty/photon/chp_spotlight_left_up.mdl",
		Scale = .9,
		Pos = Vector(-39, 30, 60),
		Ang = Angle( 0, -95, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[13] = {
		Model = "models/supermighty/photon/chp_spotlight_right_up.mdl",
		Scale = .9,
		Pos = Vector(39, 30, 60),
		Ang = Angle( 0, -95, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

	[14] = {
		Model = "models/supermighty/photon/chp_spotlight_right_down.mdl",
		Scale = .9,
		Pos = Vector(36, 30, 58),
		Ang = Angle( 0, -75, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[15] = {
		Model = "models/supermighty/photon/chp_spotlight_left_down.mdl",
		Scale = .9,
		Pos = Vector(-36, 30, 58),
		Ang = Angle( 0, -95, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[16] = {
		Model = "models/schmal/whelen_spotlight.mdl",
		Scale = .8,
		Pos = Vector(-36, 24, 60),
		Ang = Angle( 15, 125, -15),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[17] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_center_only/afgn_props_cvpi_gorhino_bar_center_only.mdl",
		Scale = 1,
		Pos = Vector(0, -7, 35),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[18] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_full_wrap/afgn_props_cvpi_gorhino_bar_full_wrap.mdl",
		Scale = 1,
		Pos = Vector(0, -7, 34.6),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[19] = {
		Model = "models/afgn_props/cvpi_gorhino_bar_upper_wrap/afgn_props_cvpi_gorhino_bar_upper_wrap.mdl",
		Scale = 1,
		Pos = Vector(0, -7, 34.6),
		Ang = Angle( 90, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[20] = {
		Model = "models/lonewolfie/alpr_brain.mdl",
		Scale = .8,
		Pos = Vector(20, -108, 56.2),
		Ang = Angle( 0, 90, 4),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	--
	[21] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(24, -55, 74.95),
		Ang = Angle( 10, -70, -6),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[22] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-24, -55, 74.95),
		Ang = Angle( 11, -135, 1),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	--
	[23] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(24, 0, 75.35),
		Ang = Angle( 10, 60, 5),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[24] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .6,
		Pos = Vector(-24, 0, 75.35),
		Ang = Angle( 10, 120, -5),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[25] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 34),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[26] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 37),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[27] = {
		Model = "models/props_junk/TrafficCone001a.mdl",
		Scale = .8,
		Pos = Vector(15, -98, 40),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[28] = {
		Model = "models/craphead_scripts/ocrp2/props_meow/weapons/c_extinguisher.mdl",
		Scale = 1,
		Pos = Vector(5, -110, 57),
		Ang = Angle( 0, 90, 90),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[29] = {
		Model = "models/weapons/w_medkit.mdl",
		Scale = 1,
		Pos = Vector(5, -84, 42),
		Ang = Angle( -3, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[30] = {
		Model = "models/props_lab/filecabinet02.mdl",
		Scale = .6,
		Pos = Vector(-18, -95, 30),
		Ang = Angle( -3, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[31] = {
		Model = "models/props_lab/filecabinet02.mdl",
		Scale = .6,
		Pos = Vector(-5, -95, 30),
		Ang = Angle( -3, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	-- ANTENNAS
	[32] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(5, -40, 80.6),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[33] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 1,
		Pos = Vector(-5, -40, 80.6),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[34] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = Vector( 1.1, 0.80, 3 ),
		Pos = Vector(0, -50, 75),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[35] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -35, 76),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[36] = {
		Model = "models/schmal/antennas/antenna_1.mdl",
		Scale = 1,
		Pos = Vector(0, -42, 75.8),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[37] = {
		Model = "models/pringle/props/stalkerdsr2x.mdl",
		Scale = .20,
		Pos = Vector(-5, 26, 55.57),
		Ang = Angle( 2, 0, -3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[38] = {
		Model = "models/schmal/stalker_dual_aux.mdl",
		Scale = .3,
		Pos = Vector(25, 33.5, 53.6),
		Ang = Angle( 0, 200, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[39] = {
		Model = "models/pringle/props/m16_rifle/m16gunlock.mdl",
		Scale = .5,
		Pos = Vector(-2, -16.5, 50),
		Ang = Angle( 0, 180, -3),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[40] = {
		Model = "models/pringle/props/defibrillator/med_defibrillator.mdl",
		Scale = .35,
		Pos = Vector( 16.5, -82, 40),
		Ang = Angle( 0, 180, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},

}

EMV.Auto = {
	[1] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 121, 17.7),
		Ang = Angle( 0, 270, 0),
	},
	[2] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 121, 17.7),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R
	},
	[3] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 121, 17.7),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[4] = {
		ID = "TDM Pushbar LED",
		Scale = 1,
		Pos = Vector(0, 121, 17.7),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A
	},
	--[[-------------------------------------------------------------------------
	PUSH BAR SENTINA LIGHT IONS 
	---------------------------------------------------------------------------]]
	[5] = { -- R\B
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 119.2, 42.5),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	[6] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 119.2, 42.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
	-- RED
	[7] = { 
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 119.2, 42.5),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	[8] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 119.2, 42.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PB
	},
	-- BLUE
	[9] = { 
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 119.2, 42.5),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PA
	},
	[10] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 119.2, 42.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
	-- AMBER
	[11] = { 
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 119.2, 42.5),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = PA
	},
	[12] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 119.2, 42.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = PB
	},
	--[[-------------------------------------------------------------------------
	SENTINA WHELEN 400 PUSHBAR LIGHTS
	---------------------------------------------------------------------------]]
	[13] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( -8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = R,
		Color3 = W,
		Phase = PA
	},
	[14] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( 8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = R,
		Color3 = A,
		Phase = PB
	},
	--------------------------------------
	[15] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( -8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R,
		Color3 = W,
		Phase = PA
	},
	[16] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( 8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R,
		Color3 = A,
		Phase = PB
	},
	------------------------------------------
	[17] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( -8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Color3 = W,
		Phase = PA
	},
	[18] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( 8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A,
		Phase = PB
	},
	---------------------------------------
	[19] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( -8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Color2 = A,
		Color3 = W,
		Phase = PA
	},
	[20] = {
		ID = "P Whelen 400",
		Scale = 1,
		Pos = Vector( 8, 122, 34.9 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Color2 = A,
		Color3 = A,
		Phase = PB
	},
	--[[-------------------------------------------------------------------------
	Pushbar Side Ions Splits
	---------------------------------------------------------------------------]]
	[21] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -17.6, 120.6, 39 ),
		Ang = Angle( 65, 90, 0),
		Color1 = R,
		Color2 = B
	},
	[22] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 17.6, 120.6, 39 ),
		Ang = Angle( -65, 270, 0),
		Color1 = B,
		Color2 = R
	},	
	------
	[23] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -17.6, 120.6, 39 ),
		Ang = Angle( 65, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[24] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 17.6, 120.6, 39 ),
		Ang = Angle( -65, 270, 0),
		Color1 = R,
		Color2 = R
	},	
	----
	[25] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -17.6, 120.6, 39 ),
		Ang = Angle( 65, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[26] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 17.6, 120.6, 39 ),
		Ang = Angle( -65, 270, 0),
		Color1 = B,
		Color2 = B
	},	
	----
	[27] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( -17.6, 120.6, 39 ),
		Ang = Angle( 65, 90, 0),
		Color1 = A,
		Color2 = A
	},
	[28] = {
		ID = "Whelen Ion Split",
		Scale = 1.2,
		Pos = Vector( 17.6, 120.6, 39 ),
		Ang = Angle( -65, 270, 0),
		Color1 = A,
		Color2 = A
	},	
----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------
	[29] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = "A"
	},
	[30] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "B"
	},
	[31] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "B"
	},
	[32] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = "A"
	},
	---------------------------
	[33] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = "A"
	},
	[34] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[35] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[36] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = "A"
	},
	-----------------------------------
	[37] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "A"
	},
	[38] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[39] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[40] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "A"
	},
	---------------------------------
	[41] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = "A"
	},
	[42] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[43] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 111, 39),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Phase = "B"
	},
	[44] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 36),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = "A"
	},
	-------------------------------------------------------------
	[45] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector(10 , 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	[46] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
--------------------------
	[47] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector(10 , 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	[48] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PB
	},
	----------------------------
	[49] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector(10 , 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PA
	},
	[50] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
	------------------------
	[51] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector(10 , 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = PA
	},
	[52] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 112, 37 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Phase = PB
	},

-----------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------//LIGHTBARS\\-------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------
	-- PRINGLES LIB SX LIGHTBARS
	[53] = {-- RB
		ID = "Pringles Whelen Liberty SX",
		Scale = .93,
		Pos = Vector( 0, -20, 77.6 ),
		Ang = Angle( 0, 90, 0)
	},
	[54] = {-- R
		ID = "Pringles Whelen Liberty SX Red",
		Scale = .93,
		Pos = Vector( 0, -20, 77.6 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[55] = {-- B
		ID = "Pringles Whelen Liberty SX Blue",
		Scale = .93,
		Pos = Vector( 0, -20, 77.6 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[56] = {-- A 
		ID = "Pringles Whelen Liberty SX Amber",
		Scale = .93,
		Pos = Vector( 0, -20, 77.6 ),
		Ang = Angle( 0, 90, 0)
	},
	--------------------------------------------
	-- Other
	[57] = {
		ID = "Pringles DOJ Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -20, 76.86 ),
		Ang = Angle( 0, 90, 0)
	},
	---------------------------------
	---- PRINGLES WHELEN JUSTICE
	[58] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = B,
	},
	--
	[59] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[60] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
	},
	--
	[61] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
	},
	--------------------------------------------------------
	[62] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -20, 76.6 ),
		Ang = Angle( 0, 90, 0)
	},
	[63] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -20, 76.6 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[64] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -20, 76.6 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	[65] = {
		ID = "Whelen Legacy",
		Scale = .96,
		Pos = Vector( 0, -20, 76.6 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	----------------------------------------------------
	[66] = {
		ID = "Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -20, 76.86 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[67] = {
		ID = "Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -20, 76.86 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	--
	[68] = {
		ID = "Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -20, 76.86 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	--
	[69] = {
		ID = "Whelen Liberty II",
		Scale = 1.1,
		Pos = Vector( 0, -20, 76.86 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-------------------------
	[70] = {
		ID = "Whelen Liberty SX",
		Scale = .928,
		Pos = Vector( 0, -20, 77.5 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[71] = {
		ID = "Whelen Liberty SX",
		Scale = .928,
		Pos = Vector( 0, -20, 77.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[72] = {
		ID = "Whelen Liberty SX",
		Scale = .928,
		Pos = Vector( 0, -20, 77.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[73] = {
		ID = "Whelen Liberty SX",
		Scale = .928,
		Pos = Vector( 0, -20, 77.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	----------------------------------------------------
	[74] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -20, 79 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[75] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -20, 79 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[76] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -20, 79 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	--
	[77] = {
		ID = "Whelen Ultra Freedom",
		Scale = .96,
		Pos = Vector( 0, -20, 79 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--------------------------------------------------
	[78] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
	},
	--
	[79] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	--
	[80] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[81] = {
		ID = "Whelen Justice",
		Scale = 1.005,
		Pos = Vector( 0, -20, 78.3 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-------------------
	[82] = {
		ID = "Code 3 RX2700",
		Scale = .91,
		Pos = Vector( 0, -20, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[83] = {
		ID = "Code 3 RX2700 Red",
		Scale = .91,
		Pos = Vector( 0, -20, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[84] = {
		ID = "Code 3 RX2700 Blue",
		Scale = .91,
		Pos = Vector( 0, -20, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[85] = {
		ID = "Code 3 RX2700 MC",
		Scale = .91,
		Pos = Vector( 0, -20, 77.8 ),
		Ang = Angle( 0, 90, 0)
	},
	------------------------------------
	[86] = {
		ID = "Federal Signal Vision SLR",
		Scale = .88,
		Pos = Vector( 0, -20, 78.5),
		Ang = Angle( 0, 90, 0)
	},
	[87] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = .88,
		Pos = Vector( 0, -20, 78.5),
		Ang = Angle( 0, 90, 0)
	},
	--
	[88] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = .88,
		Pos = Vector( 0, -20, 78.5),
		Ang = Angle( 0, 90, 0)
	},
	--
	[89] = {
		ID = "Federal Signal Vision SLR Amber",
		Scale = .88,
		Pos = Vector( 0, -20, 78.5),
		Ang = Angle( 0, 90, 0)
	},
	--------------------------------------------------------
	[90] = {
		ID = "Federal Signal Integrity",
		Scale = .91,
		Pos = Vector( 0, -20, 76.9 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[91] = {
		ID = "Federal Signal Integrity",
		Scale = .91,
		Pos = Vector( 0, -20, 76.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[92] = {
		ID = "Federal Signal Integrity",
		Scale = .91,
		Pos = Vector( 0, -20, 76.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[93] = {
		ID = "Federal Signal Integrity",
		Scale = .91,
		Pos = Vector( 0, -20, 76.9 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	---------------------------------------------
	[94] = {
		ID = "Federal Signal Legend",
		Scale = .95,
		Pos = Vector( 0, -20, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[95] = {
		ID = "Federal Signal Legend Red",
		Scale = .95,
		Pos = Vector( 0, -20, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[96] = {
		ID = "Federal Signal Legend Blue",
		Scale = .95,
		Pos = Vector( 0, -20, 77.9 ),
		Ang = Angle( 0, 90, 0)
	},
	-----------------------------------------
	[97] = {
		ID = "Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -20, 77 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[98] = {
		ID = "Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -20, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,

	},
	--
	[99] = {
		ID = "Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -20, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	--
	[100] = {
		ID = "Federal Signal Valor",
		Scale = .86,
		Pos = Vector( 0, -20, 77 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	------------------------------------------------------------------------
	[101] = {
		ID = "2019 Feniex Avatar ELS",
		Scale = .935,
		Pos = Vector( 0, -20, 73.7 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[102] = {
		ID = "TDMP Federal Signal Aerodynic",
		Scale = .875,
		Pos = Vector( 0, -20, 73.7 ),
		Ang = Angle( -2, 270, 0)
	},
	--
	[103] = {
		ID = "Federal Signal Arjent",
		Scale = .78,
		Pos = Vector( 0, -20, 77.5 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[104] = {
		ID = "TDMP Michigan Beacon",
		Scale = 1,
		Pos = Vector( 0, -20, 75.5 ),
		Ang = Angle( 0, 90, 0)
	},
	----------------------------
	[105] = {
		ID = "Whelen Edge",
		Scale = .96,
		Pos = Vector( 0, -20, 74),
		Ang = Angle( 0, 270, 0)
	},
	--
	[106] = {
		ID = "Whelen Edge Red",
		Scale = .96,
		Pos = Vector( 0, -20, 74),
		Ang = Angle( 0, 270, 0)
	},
	--
	[107] = {
		ID = "Whelen Edge Blue",
		Scale = .96,
		Pos = Vector( 0, -20, 74),
		Ang = Angle( 0, 270, 0)
	},
	--
	[108] = {
		ID = "Whelen Edge Amber",
		Scale = .96,
		Pos = Vector( 0, -20, 74),
		Ang = Angle( 0, 270, 0)
	},
 ----------------------------------------------------------------------------------------------------------------------------------------------------
 ----------------------------------------------------------------------------------------------------------------------------------------------------
 	[109] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 14, 67 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[110] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 14, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[111] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 14, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	--
	[112] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 14, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--------------------------------------
	[113] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 0, 12, 67 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[114] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 0, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	--
	[115] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 0, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	--
	[116] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 0, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--------------------------------
	[117] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[118] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[119] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[120] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[121] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[122] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[123] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[124] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -19, 12, 67 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--------------------------------------------------------------------
	[125] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 34, 56 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[126] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 34, 56 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	--
	[127] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 34, 56 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	--
	[128] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 34, 56 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--[[-------------------------------------------------------------------------
	REAR WINDOW PASSENGER REAR DOOR LIGHT FLASHERS THINGS THAT BLINK ALOT WHEN ON FLASH
	---------------------------------------------------------------------------]]
	[129] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -39, -51, 54 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[130] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 39, -51, 54 ),
		Ang = Angle( 0, -90, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[131] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -39, -51, 54 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[132] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 39, -51, 54 ),
		Ang = Angle( 0, -90, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[133] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -39, -51, 54 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[134] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 39, -51, 54 ),
		Ang = Angle( 0, -90, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[135] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -39, -51, 54 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[136] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 39, -51, 54 ),
		Ang = Angle( 0, -90, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-----------------------------------------------------------
	[137] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -39, -50, 54 ),
		Ang = Angle( 0, 90, 270),
		Color1 = R,
		Color2 = B
	},
	[138] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 39, -50, 54 ),
		Ang = Angle( 0, 90, 90),
		Color1 = R,
		Color2 = B
	},
	------------
	[139] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -39, -50, 54 ),
		Ang = Angle( 0, 90, 270),
		Color1 = R,
		Color2 = W,
		Color3 = R
	},
	[140] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 39, -50, 54 ),
		Ang = Angle( 0, 90, 90),
		Color1 = R,
		Color2 = W,
		Color3 = R
	},
	------------
	[141] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -39, -50, 54 ),
		Ang = Angle( 0, 90, 270),
		Color1 = W,
		Color2 = B,
		
	},
	[142] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 39, -50, 54 ),
		Ang = Angle( 0, 90, 90),
		Color1 = W,
		Color2 = B,
	},
	------------
	[143] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( -39, -50, 54 ),
		Ang = Angle( 0, 90, 270),
		Color1 = A,
		Color2 = W,
		Color3 = A
	},
	[144] = {
		ID = "Whelen 700 Trio",
		Scale = 1,
		Pos = Vector( 39, -50, 54 ),
		Ang = Angle( 0, 90, 90),
		Color1 = A,
		Color2 = w,
		Color3 = A
	},
	--[[-------------------------------------------------------------------------
	MIRROR LIGHTING
	---------------------------------------------------------------------------]]
	[145] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -47.2, 25.9, 55 ),
		Ang = Angle( 0,25, 0),
		Color1 = R,
		Phase = PA
	},
	[146] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 47.2, 25.9, 55),
		Ang = Angle( 0, -25, 0),
		Color1 = B,
		Phase  = PB
	},
	------
	[147] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -47.2, 25.9, 55 ),
		Ang = Angle( 0,25, 0),
		Color1 = R,
		Phase = PA
	},
	[148] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 47.2, 25.9, 55),
		Ang = Angle( 0, -25, 0),
		Color1 = R,
		Phase  = PB
	},
	------
	[149] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -47.2, 25.9, 55 ),
		Ang = Angle( 0,25, 0),
		Color1 = B,
		Phase = PA
	},
	[150] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 47.2, 25.9, 55),
		Ang = Angle( 0, -25, 0),
		Color1 = B,
		Phase  = PB
	},
	------
	[151] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -47.2, 25.9, 55 ),
		Ang = Angle( 0,25, 0),
		Color1 = R,
		Phase = PA
	},
	[152] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 47.2, 25.9, 55),
		Ang = Angle( 0, -25, 0),
		Color1 = B,
		Phase  = PB
	},
	--[[-------------------------------------------------------------------------
	REAR Upper LIGHTING
	---------------------------------------------------------------------------]]
	[153] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	---
	[154] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	---
	[155] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	---
	[156] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-------------------------------------------------
	[157] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[158] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[159] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[160] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[161] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[162] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[163] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[164] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 20, -65, 67 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	-----------------------------------------------------------------
	[165] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.05,
		Pos = Vector( 0, -65, 67.5 ),
		Ang = Angle( 0, 270, 0)
	},
	[166] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.05,
		Pos = Vector( 0, -65, 67.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R,
		Color3 = A
	},
	[167] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.05,
		Pos = Vector( 0, -65, 67.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
		Color3 = A
	},
	[168] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.05,
		Pos = Vector( 0, -65, 67.5 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2=  A,
		Color3 = A
	},
	------------------------------------------
	[169] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -63, 67),
		Ang = Angle( 0, 270, 0)
	},
	[170] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -63, 67),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R,
	},
	[171] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -63, 67),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[172] = {
		ID = "Pringles Tomar 200S Rear",
		Scale = .9,
		Pos = Vector( 0, -63, 67),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A
	},
	[173] = {
		ID = "Pringles Traffic Bar",
		Scale = .9,
		Pos = Vector( 0, -63, 67),
		Ang = Angle( 0, 270, 0),
	},
	--------------------------------------------------------
	--[[-------------------------------------------------------------------------
	REAR LOWEER LIGHTING 

	---------------------------------------------------------------------------]]
	[174] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -82, 58.4 ),
		Ang = Angle( 180, 90, 0)
	},
	[175] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 10, -82, 58.4 ) ,
		Ang = Angle( 180, 90, 0)
	},
	--
	[176] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -82, 58.4 ),
		Ang = Angle( 180, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	[177] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 10, -82, 58.4 ) ,
		Ang = Angle( 180, 90, 0),
		Color1 = R,
		Color2 = R
	},
	--
	[178] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -82, 58.4 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	[179] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 10, -82, 58.4 ) ,
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = B,

	},
	--
	[180] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( -10, -82, 58.4 ),
		Ang = Angle( 180, 90, 0),
		Color1 = A,
		Color2 = A,
	},
	[181] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.2,
		Pos = Vector( 10, -82, 58.4 ) ,
		Ang = Angle( 180, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--------------------------------------
	[182] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.3,
		Pos = Vector( 0, -80, 56.8 ),
		Ang = Angle( 0, 270, 0)
	},
	[183] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.3,
		Pos = Vector( 0, -80, 56.8 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R
	},
	[184] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.3,
		Pos = Vector( 0, -80, 56.8 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[185] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.3,
		Pos = Vector( 0, -80, 56.8 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A
	},
	------------------------------------------
	[186] = {
        ID = "Code 3 Wingman",
        Scale = 1.075,
        Pos = Vector( 0 , -80.585 , 58.076 ),
        Ang = Angle( 0 , 90 , 0 ),
        Color1 = "RED",
        Color2 = "BLUE",
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    --
    [187] = {
        ID = "Code 3 Wingman",
        Scale = 1.075,
        Pos = Vector( 0 , -80.585 , 58.076 ),
        Ang = Angle( 0 , 90 , 0 ),
        Color1 = "RED",
        Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    --
    [188] = {
        ID = "Code 3 Wingman",
        Scale = 1.075,
        Pos = Vector( 0 , -80.585 , 58.076 ),
        Ang = Angle( 0 , 90 , 0 ),
        Color1 = B,
        Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    --
    [189] = {
        ID = "Code 3 Wingman",
        Scale = 1.075,
        Pos = Vector( 0 , -80.585 , 58.076 ),
        Ang = Angle( 0 , 90 , 0 ),
        Color1 = A,
        Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
    },
    --
    [190] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( 0, 19.4, 34.7 ),
		Ang = Angle( 0, 0, 0)
	},

	[191] = {
		ID = "Whelen Liberty SX RB",
		Scale = 1.12,
		Pos = Vector( 0, -20, 76 ),
		Ang = Angle( 0, 270, 0)
	},
	[192] = {
		ID = "Whelen Liberty SX Red",
		Scale = 1.12,
		Pos = Vector( 0, -20, 76 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R
	},
	[193] = {
		ID = "Whelen Liberty SX Blue",
		Scale = 1.12,
		Pos = Vector( 0, -20, 76 ),
		Ang = Angle( 0, 270, 0)
	},
	[194] = {
		ID = "Whelen Liberty SX Amber",
		Scale = 1.12,
		Pos = Vector( 0, -20, 76 ),
		Ang = Angle( 0, 270, 0),
	},
	[195] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.12,
		Pos = Vector( 0, -20, 76 ),
		Ang = Angle( 0, 270, 0)
	},





    --[[-------------------------------------------------------------------------
     
     KEEP AT BOTTOM
     -- FLASHERS 

    ---------------------------------------------------------------------------]]
    [196] = {
		ID = "FH3 CVPI Wig-Wags",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	----
	[197] = {
		ID = "Pringles FH3 CVPI Outer-Flashers White",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[198] = {
		ID = "Pringles FH3 CVPI Outer-Flashers RB",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[199] = {
		ID = "Pringles FH3 CVPI Outer-Flashers Red",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[200] = {
		ID = "Pringles FH3 CVPI Outer-Flashers Blue",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[201] = {
		ID = "Pringles FH3 CVPI Outer-Flashers Amber",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	-------
	[202] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Color2 = W
	},
	[203] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[204] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Color2 = R
	},
	[205] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
	[206] = {
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = A,
		Color2 = A
	},
	-----------
	[207] = {
		ID = "CVPIFH3 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	
	[208] = {
		ID = "FPIU16 PAR-46",
		Scale = 1,
		Pos = Vector( 7.9, -20, 1.8),
		Ang = Angle( -5, 0, 0)
	},

	[209] = {
		ID = "Spotlight Round",
		Scale = 1,
		Pos = Vector( -3, -8.5, -.3),
		Ang = Angle( 0, -5, 0)
	},
	[210] = {
		ID = "Spotlight Round",
		Scale = 1,
		Pos = Vector( 81.8, -9.1, -.3),
		Ang = Angle( 0, -5, 0)
	},
	-----------------------------------------
	---------------------------------------
	-------------------------------------
	[211] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = R,
		Phase = PA
	},
	[212] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = B,
		Phase = PB
	},
	-- 
	[213] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = R,
		Phase = PA
	},
	[214] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = R,
		Phase = PB
	},
	--
	[215] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = B,
		Phase = PA
	},
	[216] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = B,
		Phase = PB
	},
	--
	[217] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = A,
		Phase = PA
	},
	[218] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = A,
		Phase = PB
	},
	--
	[219] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( -6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = W,
		Phase = PA
	},
	[220] = {
		ID = "Whelen Ion",
		Scale = .7,
		Pos = Vector( 6.999, -127.2, 44),
		Ang = Angle( -78, 90, 90 ),
		Color1 = W,
		Phase = PB
	},
	
	-- Plate Upper Lights
	-- RB
	[222] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = R,
		Phase = PA
	},
	[221] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Phase = PB
	},
	-- Red/W
	[223] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = R,
		Phase = PA
	},
	[224] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = W,
		Phase = PB
	},
	-- Red
	[225] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = R,
		Phase = PA
	},
	[226] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = R,
		Phase = PB
	},
	-- BLUE/W
	[227] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Phase = PA
	},
	[228] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = W,
		Phase = PB
	},
	-- BLUE
	[229] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Phase = PA
	},
	[230] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = B,
		Phase = PB
	},
	-- BLUE
	[231] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( -5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = A,
		Phase = PA
	},
	[232] = {
		ID = "Whelen Ion",
		Scale = .5,
		Pos = Vector( 5, -129.8, 47.4),
		Ang = Angle( 0, 180, 0 ),
		Color1 = A,
		Phase = PB
	},

	--[[-------------------------------------------------------------------------
	                        DOME LIGHTS
	---------------------------------------------------------------------------]]

	[233] = {
		ID = "Dome Light Amber",
		Scale = 1,
		Pos = Vector( 15, -5, 74.8),
		Ang = Angle( 0, 90, 4)
	},
	[234] = {
		ID = "Federal Signal UltraStar",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	[235] = {
		ID = "Federal Signal UltraStar Red",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	[236] = {
		ID = "Federal Signal UltraStar Amber",
		Scale = 1.2,
		Pos = Vector( 15, -5, 75),
		Ang = Angle( 0, 90, 1 ),
		Phase = PB
	},
	-------
	[237] = {
		ID = "Code 3 MX7000",
		Scale = 1.02,
		Pos = Vector( 0, -20, 73.2),
		Ang = Angle( 0, -90, 0 )
	},
	[238] = {
		ID = "Code 3 MX7000 Blue",
		Scale = 1.02,
		Pos = Vector( 0, -20, 73.2),
		Ang = Angle( 0, -90, 0 )
	},
	[239] = {
		ID = "Code 3 MX7000 Amber",
		Scale = 1.02,
		Pos = Vector( 0, -20, 73.2),
		Ang = Angle( 0, -90, 0 )
	},
	[240] = {
		ID = "Code 3 MX7000 Red",
		Scale = 1.02,
		Pos = Vector( 0, -20, 73.2),
		Ang = Angle( 0, -90, 0 )
	},

	[241] = {
		ID = "Whelen TAM85",
		Scale = .56,
		Pos = Vector( 0, -75, 58),
		Ang = Angle( 0, 90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

	[242] = {
		ID = "Code 3 Wingman Front",
		Scale = .9,
		Pos = Vector( 0, 12, 68),
		Ang = Angle( 0, -90, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[243] = {
		ID = "Code 3 Wingman Front",
		Scale = .9,
		Pos = Vector( 0, 12, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[244] = {
		ID = "Code 3 Wingman Front",
		Scale = .9,
		Pos = Vector( 0, 12, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[245] = {
		ID = "Code 3 Wingman Front",
		Scale = .9,
		Pos = Vector( 0, 12, 68),
		Ang = Angle( 0, -90, 0 ),
		Color1 = A,
		Color2 = A,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

	[246] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 12, 11, 68.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = B
	},
	[247] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 12, 11, 68.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[248] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 12, 11, 68.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[249] = {
		ID = "P Feniex Apollo",
		Scale = .7,
		Pos = Vector( 12, 11, 68.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	--[[-------------------------------------------------------------------------
	afs
	---------------------------------------------------------------------------]]
	[250] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, 42, 17),
		Ang = Angle( 1, 88, -30 ),
		Color1 = R,
		Phase = PA
	},
	[251] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, -46, 17.5),
		Ang = Angle( 0, 90, -30 ),
		Color1 = B,
		Phase = PB
	},
	[252] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, 42, 17),
		Ang = Angle( 1, -88, -30 ),
		Color1 = B,
		Phase = PA
	},
	[253] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, -46, 17.5),
		Ang = Angle( 0, -90, -30 ),
		Color1 = R,
		Phase = PB
	},
	--
	[254] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, 42, 17),
		Ang = Angle( 1, 88, -30 ),
		Color1 = R,
		Phase = PA
	},
	[255] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, -46, 17.5),
		Ang = Angle( 0, 90, -30 ),
		Color1 = W,
		Phase = PB
	},
	[256] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, 42, 17),
		Ang = Angle( 1, -88, -30 ),
		Color1 = W,
		Phase = PA
	},
	[257] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, -46, 17.5),
		Ang = Angle( 0, -90, -30 ),
		Color1 = R,
		Phase = PB
	},
	--
	[258] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, 42, 17),
		Ang = Angle( 1, 88, -30 ),
		Color1 = B,
		Phase = PA
	},
	[259] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, -46, 17.5),
		Ang = Angle( 0, 90, -30 ),
		Color1 = W,
		Phase = PB
	},
	[260] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, 42, 17),
		Ang = Angle( 1, -88, -30 ),
		Color1 = W,
		Phase = PA
	},
	[261] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, -46, 17.5),
		Ang = Angle( 0, -90, -30 ),
		Color1 = B,
		Phase = PB
	},
	--
	[262] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, 42, 17),
		Ang = Angle( 1, 88, -30 ),
		Color1 = A,
		Phase = PA
	},
	[263] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -41, -46, 17.5),
		Ang = Angle( 0, 90, -30 ),
		Color1 = A,
		Phase = PB
	},
	[264] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, 42, 17),
		Ang = Angle( 1, -88, -30 ),
		Color1 = A,
		Phase = PA
	},
	[265] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 41, -46, 17.5),
		Ang = Angle( 0, -90, -30 ),
		Color1 = A,
		Phase = PB
	},
	[266] = {
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 0, 112.5, 33.5),
		Ang = Angle( 0, 270, 0 )
	},
	[267] = {
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 0, 112.5, 33.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = R,
		Color2 = R
	},
	[268] = {
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 0, 112.5, 33.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = B,
		Color2 = B
	},
	[269] = {
		ID = "Small Front Interior Trio",
		Scale = 1,
		Pos = Vector( 0, 112.5, 33.5),
		Ang = Angle( 0, 270, 0 ),
		Color1 = A,
		Color2 = A
	},
	[270] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 113.2, 32.8 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "RED",
		Color2 = "BLUE",
	},
	[271] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 113.2, 32.8 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = "RED",
		Color2 = "RED",
	},
	[272] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 113.2, 32.8 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B,
	},
	[273] = {
		ID = "Whelen SlimLighter",
		Scale = .8,
		Pos = Vector( 0, 113.2, 32.8 ),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A,
	},

	[274] = {
        ID = "Federal Signal Signalmaster",
        Scale = .7,
        Pos = Vector( 0, -90, 52.5),
        Ang = Angle( 180, 90, 0 ),
        Color1 = A,
        Color2 = A
    },
    [275] = {
		ID = "Code 3 x21 TR",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 )
	},
	[276] = {
		ID = "Code 3 x21 TR Red",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 )
	},
	[277] = {
		ID = "Code 3 x21 TR Blue",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 )
	},
	[278] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 )
	},
	[279] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[280] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[281] = {
		ID = "Code 3 x21 TR Clear",
		Scale = .97,
		Pos = Vector( 0, -20, 78),
		Ang = Angle( 0, -90, 0 ),
		Color1 = A,
		Color2 = A
	},
	[282] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 13, 68),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[283] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 13, 68),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = R,
		Color2 = R
	},
	[284] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 13, 68),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = B,
		Color2 = B
	},
	[285] = {
		ID = "Feniex Fusion",
		Scale = 1,
		Pos = Vector( 0, 13, 68),
		Ang = Angle( 0, 0, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
		Color1 = A,
		Color2 = A
	},
	[286] = {
		ID = "Feniex Fusion 400",
		Scale = .8,
		Pos = Vector( 13, 12, 69.4),
		Ang = Angle( -181, -187, 1 ),
		Phase = PA
	},
	[287] = {
		ID = "Feniex Fusion 400",
		Scale = .8,
		Pos = Vector( 13, 12, 69.4),
		Ang = Angle( -181, -187, 1 ),
		Color1 = R,
		Color2 = R,
		Phase = PA
	},
	[288] = {
		ID = "Feniex Fusion 400",
		Scale = .8,
		Pos = Vector( 13, 12, 69.4),
		Ang = Angle( -181, -187, 1 ),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[289] = {
		ID = "Feniex Fusion 400",
		Scale = .8,
		Pos = Vector( 13, 12, 69.4),
		Ang = Angle( -181, -187, 1 ),
		Color1 = A,
		Color2 = A,
		Phase = PA
	},
	----------------------
	[290] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( -48, 23.5, 50.7),
		Ang = Angle( 0, 15, 0 ),
		Phase = PA
	},
	[291] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( 48, 23.5, 50.7),
		Ang = Angle( 0, -15, 0 ),
		Color1 = R,
		Color2 = B,
		Phase = PB
	},
	--
	[292] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( -48, 23.5, 50.7),
		Ang = Angle( 0, 15, 0 ),
		Color1 = R,
		Color2 = R,
		Phase = PA
	},
	[293] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( 48, 23.5, 50.7),
		Ang = Angle( 0, -15, 0 ),
		Color1 = R,
		Color2 = R,
		Phase = PB
	},
	--
	[294] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( -48, 23.5, 50.7),
		Ang = Angle( 0, 15, 0 ),
		Color1 = B,
		Color2 = B,
		Phase = PA
	},
	[295] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( 48, 23.5, 50.7),
		Ang = Angle( 0, -15, 0 ),
		Color1 = B,
		Color2 = B,
		Phase = PB
	},
	--
	[296] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( -48, 23.5, 50.7),
		Ang = Angle( 0, 15, 0 ),
		Color1 = A,
		Color2 = A,
		Phase = PA
	},
	[297] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( 48, 23.5, 50.7),
		Ang = Angle( 0, -15, 0 ),
		Color1 = A,
		Color2 = A,
		Phase = PB
	},
	--
	[298] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( -48, 23.5, 50.7),
		Ang = Angle( 0, 15, 0 ),
		Color1 = CW,
		Color2 = SW,
		Phase = PA
	},
	[299] = {
		ID = "SoundOff Intersector",
		Scale = .7,
		Pos = Vector( 48, 23.5, 50.7),
		Ang = Angle( 0, -15, 0 ),
		Color1 = SW,
		Color2 = CW,
		Phase = PB
	},
	--
}

EMV.Selections = {
	{
		Name = "Lightbar",
		Options = {
			{ Name = "None" },
			{ Category = "Pringle Liberty SX", Name = "R/B", Auto = {53}, Props = {} },
			{ Category = "Pringle Liberty SX", Name = "Red", Auto = {54}, Props = {} },
			{ Category = "Pringle Liberty SX", Name = "Blue", Auto = {55}, Props = {} },
			{ Category = "Pringle Liberty SX", Name = "Amber", Auto = {56}, Props = {} },
			--
			{ Category = "Pringle Other", Name = "Whelen Liberty II R/B", Auto = {57}, Props = {} },
			--
			{ Category = "Pringle Justice", Name = "R/B", Auto = {58}, Props = {} },
			{ Category = "Pringle Justice", Name = "Red", Auto = {59}, Props = {} },
			{ Category = "Pringle Justice", Name = "Blue", Auto = {60}, Props = {} },
			{ Category = "Pringle Justice", Name = "Amber", Auto = {61}, Props = {} },
			-----
			{ Category = "SM Whelen Liberty SX", Name = "R/B", Auto = {191}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Red", Auto = {192}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Blue", Auto = {193}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Amber", Auto = {194}, Props = {} },
			{ Category = "SM Whelen Liberty SX", Name = "Clear", Auto = {195}, Props = {} },
			
			-----
			{ Category = "Whelen Legacy", Name = "R/B", Auto = {62}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Red", Auto = {63}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Blue", Auto = {64}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Amber", Auto = {65}, Props = {} },
			----
			{ Category = "Whelen Liberty II", Name = "R/B", Auto = {66}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Red", Auto = {67}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Blue", Auto = {68}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Amber", Auto = {69}, Props = {} },
			--
			{ Category = "Whelen Liberty SX", Name = "R/B", Auto = {70}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Red", Auto = {71}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Blue", Auto = {72}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Amber", Auto = {73}, Props = {} },
			--
			{ Category = "Whelen Ultra Freedom", Name = "R/B", Auto = {74}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Red", Auto = {75}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Blue", Auto = {76}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Amber", Auto = {77}, Props = {} },
			--
			{ Category = "Whelen Justice", Name = "R/B", Auto = {78}, Props = {} },
			{ Category = "Whelen Justice", Name = "Red", Auto = {79}, Props = {} },
			{ Category = "Whelen Justice", Name = "Blue", Auto = {80}, Props = {} },
			{ Category = "Whelen Justice", Name = "Amber", Auto = {81}, Props = {} },
			--
			{ Category = "Code 3 RX2700", Name = "R/B", Auto = {82}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Red", Auto = {83}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Blue", Auto = {84}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "MC", Auto = {85}, Props = {} },
			--
			{ Category = "Federal Signal Vision SLR", Name = "NYPD", Auto = {86}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B Clear", Auto = {87}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B", Auto = {88}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "Amber", Auto = {89}, Props = {} },
			--
			{ Category = "Federal Signal Integrity", Name = "R/B", Auto = {90}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Red", Auto = {91}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Blue", Auto = {92}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Amber", Auto = {93}, Props = {} },
			--
			{ Category = "Federal Signal Legend", Name = "R/B", Auto = {94}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Red", Auto = {95}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Blue", Auto = {96}, Props = {} },
			--
			{ Category = "Federal Signal Valor", Name = "R/B", Auto = {97}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Red", Auto = {98}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Blue", Auto = {99}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Amber", Auto = {100}, Props = {} },
			---
			{ Category = "Whelen Edge", Name = "R/B", Auto = {105}, Props = {} },
			{ Category = "Whelen Edge", Name = "Red", Auto = {106}, Props = {} },
			{ Category = "Whelen Edge", Name = "Blue", Auto = {107}, Props = {} },
			{ Category = "Whelen Edge", Name = "Amber", Auto = {108}, Props = {} },
			--
			{ Category = "Code 3 MX7000", Name = "Red/Blue", Auto = {237}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Blue", Auto = {238}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Amber", Auto = {239}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Red", Auto = {240}, Props = {} },
			--
			{ Category = "Code3 X21 TR", Name = "R/B", Auto = {275}, Props = {} },
			{ Category = "Code3 X21 TR", Name = "Red", Auto = {276}, Props = {} },
			{ Category = "Code3 X21 TR", Name = "Blue", Auto = {277}, Props = {} },
			--
			{ Category = "Code3 X21 TR Clear", Name = "R/B", Auto = {278}, Props = {} },
			{ Category = "Code3 X21 TR Clear", Name = "Red", Auto = {279}, Props = {} },
			{ Category = "Code3 X21 TR Clear", Name = "Blue", Auto = {280}, Props = {} },
			{ Category = "Code3 X21 TR Clear", Name = "Amber", Auto = {281}, Props = {} },

			--
			{ Category = "Other", Name = "Amber Dome", Auto = {233}, Props = {} },
			
			{ Category = "FS UltraStar Single", Name = "Blue", Auto = {234}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Red", Auto = {235}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Amber", Auto = {236}, Props = {} },
			

			--
			{ Name = "Feniex Avatar	", Auto = {101}, Props = {} },
			{ Name = "TDMP Federal Signal Aerodynic", Auto = {102}, Props = {} },
			{ Name = "Federal Signal Arjent", Auto = {103}, Props = {} },
			{ Name = "TDMP Michigan Beacon", Auto = {104}, Props = {} },
		}
	},
	{
		Name = "Pushbar",
		Options = {
			{ Name = "None"},
			{ Name = "Sentina Plain", Auto = {}, Props = {1} },
			{ Name = "Wrap Around Plain", Auto = {}, Props = {3} },
			{ Name = "Go-Rhino Plain", Auto = {}, Props = {17} },
			{ Name = "Go-Rhino F-Wrap Plain", Auto = {}, Props = {18} },
			{ Name = "Go-Rhino TH-Wrap Plain", Auto = {}, Props = {19} },
			--
			{ Category = "Sentina Ion", Name = "R/B", Auto = {5,6,}, Props = {1} },
			{ Category = "Sentina Ion", Name = "Red", Auto = {7,8,}, Props = {1} },
			{ Category = "Sentina Ion", Name = "Blue", Auto = {9,10,}, Props = {1} },
			{ Category = "Sentina Ion", Name = "Amber", Auto = {11,12,}, Props = {1} },
			--
			{ Category = "Sentina Whel 400", Name = "R/B", Auto = {13,14,}, Props = {1} },
			{ Category = "Sentina Whel 400", Name = "Red", Auto = {15,16,}, Props = {1} },
			{ Category = "Sentina Whel 400", Name = "Blue", Auto = {17,18,}, Props = {1} },
			{ Category = "Sentina Whel 400", Name = "Amber", Auto = {19,20,}, Props = {1} },
			--
			{ Category = "Sentina LED", Name = "R/B", Auto = {1}, Props = {} },
			{ Category = "Sentina LED", Name = "Red", Auto = {2}, Props = {} },
			{ Category = "Sentina LED", Name = "Blue", Auto = {3}, Props = {} },
			{ Category = "Sentina LED", Name = "Amber", Auto = {4}, Props = {} },
			--
			{ Category = "Wrap Around Ion", Name = "R/B", Auto = {5,6,}, Props = {3} },
			{ Category = "Wrap Around Ion", Name = "Red", Auto = {7,8,}, Props = {3} },
			{ Category = "Wrap Around Ion", Name = "Blue", Auto = {9,10,}, Props = {3} },
			{ Category = "Wrap Around Ion", Name = "Amber", Auto = {11,12,}, Props = {3} },
			--
			{ Category = "Wrap Around Whel 400", Name = "R/B", Auto = {13,14,}, Props = {3} },
			{ Category = "Wrap Around Whel 400", Name = "Red", Auto = {15,16,}, Props = {3} },
			{ Category = "Wrap Around Whel 400", Name = "Blue", Auto = {17,18,}, Props = {3} },
			{ Category = "Wrap Around Whel 400", Name = "Amber", Auto = {19,20,}, Props = {3} },
			--
			

			--
			{ Name = "Pushrod", Auto = {}, Props = {2} },
		}
	},
	{
		Name = "Pushbar Side Lights",
		Options = {
			{ Name = "None"},
			{ Name = "R/B", Auto = {21,22}, Props = {} },
			{ Name = "Red", Auto = {23,24}, Props = {} },
			{ Name = "Blue", Auto = {25,26}, Props = {} },
			{ Name = "Amber", Auto = {27,28}, Props = {} },
		}
	},
	{
		Name = "Grill",
		Options = {
			{ Name = "None" },
			{ Category = "4 Ion", Name = "R/B", Auto = {29,30,31,32}, Props = {} },
			{ Category = "4 Ion", Name = "Red", Auto = {33,34,35,36}, Props = {} },
			{ Category = "4 Ion", Name = "Blue", Auto = {37,38,39,40}, Props = {} },
			{ Category = "4 Ion", Name = "Amber", Auto = {41,42,43,44}, Props = {} },
			-----
			{ Category = "2 Ion", Name = "R/B", Auto = {45,46}, Props = {} },
			{ Category = "2 Ion", Name = "Red", Auto = {47,48}, Props = {} },
			{ Category = "2 Ion", Name = "Blue", Auto = {49,50}, Props = {} },
			{ Category = "2 Ion", Name = "Amber", Auto = {51,52}, Props = {} },
			--
			{ Category = "5LED", Name = "R/B", Auto = {266}, Props = {} },
			{ Category = "5LED", Name = "Red", Auto = {267}, Props = {} },
			{ Category = "5LED", Name = "Blue", Auto = {268}, Props = {} },
			{ Category = "5LED", Name = "Amber", Auto = {269}, Props = {} },
			--
			{ Category = "SlimLighter", Name = "R/B", Auto = {270}, Props = {} },
			{ Category = "SlimLighter", Name = "Red", Auto = {271}, Props = {} },
			{ Category = "SlimLighter", Name = "Blue", Auto = {272}, Props = {} },
			{ Category = "SlimLighter", Name = "Amber", Auto = {273}, Props = {} },


			

		}
	},
	{
		Name = "Mirror Lights",
		Options = {
			{ Name = "None" },
			{ Category = "Whelen Ion",  Name = "R/B", Auto = {145,146}, Props = {} },
			{ Category = "Whelen Ion", Name = "Red", Auto = {147,148}, Props = {} },
			{ Category = "Whelen Ion",  Name = "Blue", Auto = {149,150}, Props = {} },
			--
			{ Category = "SoundOff Intersector",  Name = "R/B", Auto = { 290,291}, Props = {} },
			{ Category = "SoundOff Intersector", Name = "Red", Auto = { 292,293}, Props = {} },
			{ Category = "SoundOff Intersector",  Name = "Blue", Auto = { 294,295}, Props = {} },
			{ Category = "SoundOff Intersector",  Name = "Amber", Auto = { 296,297}, Props = {} },
			{ Category = "SoundOff Intersector",  Name = "White", Auto = { 298,299}, Props = {} },

		}
	},
	{
		Name = "Front Upper",
		Options = {
			{ Name = "None" },
			{ Category = "TDM Interior Bar", Name = "R/B", Auto = {109}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Red", Auto = {110}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Blue", Auto = {111}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Amber", Auto = {112}, Props = {} },
			--
			{ Category = "1 Dual Viper", Name = "R/B", Auto = {113}, Props = {} },
			{ Category = "1 Dual Viper", Name = "Red", Auto = {114}, Props = {} },
			{ Category = "1 Dual Viper", Name = "Blue", Auto = {115}, Props = {} },
			{ Category = "1 Dual Viper", Name = "Amber", Auto = {116}, Props = {} },
			--
			{ Category = "2 Dual Viper", Name = "R/B", Auto = {117,118}, Props = {} },
			{ Category = "2 Dual Viper", Name = "Red", Auto = {119,120}, Props = {} },
			{ Category = "2 Dual Viper", Name = "Blue", Auto = {121,122}, Props = {} },
			{ Category = "2 Dual Viper", Name = "Amber", Auto = {123,124}, Props = {} },
			--
			{ Category = "Code3 Wingman", Name = "R/B", Auto = {242}, Props = {} },
			{ Category = "Code3 Wingman", Name = "Red", Auto = {243}, Props = {} },
			{ Category = "Code3 Wingman", Name = "Blue", Auto = {244}, Props = {} },
			{ Category = "Code3 Wingman", Name = "Amber", Auto = {245}, Props = {} },
			-- 
			{ Category = "Fenix Apollo", Name = "Red/Blue", Auto = {246}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Red", Auto = {247}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Blue", Auto = {248}, Props = {} },
			{ Category = "Fenix Apollo", Name = "Amber", Auto = {249}, Props = {} },
			--
			{ Category = "Fenix Fusion", Name = "Red/Blue", Auto = {282}, Props = {} },
			{ Category = "Fenix Fusion", Name = "Red", Auto = {283}, Props = {} },
			{ Category = "Fenix Fusion", Name = "Blue", Auto = {284}, Props = {} },
			{ Category = "Fenix Fusion", Name = "Amber", Auto = {285}, Props = {} },
			--
			{ Category = "Fenix Fusion 400", Name = "Red/Blue", Auto = {286}, Props = {} },
			{ Category = "Fenix Fusion 400", Name = "Red", Auto = {287}, Props = {} },
			{ Category = "Fenix Fusion 400", Name = "Blue", Auto = {288}, Props = {} },
			{ Category = "Fenix Fusion 400", Name = "Amber", Auto = {289}, Props = {} },


		}
	},
	{
		Name = "Front Lower",
		Options = {
			{ Name = "None"},
			{ Name = "R/B", Auto = {125}, Props = {} },
			{ Name = "Red", Auto = {126}, Props = {} },
			{ Name = "Blue", Auto = {127}, Props = {} },
			{ Name = "Amber", Auto = {128}, Props = {} },
		}
	},
	{
		Name = "Rear Door Lighting",
		Options = {
			{ Name = "None"},
			{ Category = "Whelen Ion Split", Name = "R/B", Auto = {129,130}, Props = {} },
			{ Category = "Whelen Ion Split", Name = "Red", Auto = {131,132}, Props = {} },
			{ Category = "Whelen Ion Split", Name = "Blue", Auto = {133,134}, Props = {} },
			{ Category = "Whelen Ion Split", Name = "Amber", Auto = {135,136}, Props = {} },
			--
			{ Category = "Whelen 700", Name = "R/B", Auto = {137,138}, Props = {} },
			{ Category = "Whelen 700", Name = "Red", Auto = {139,140}, Props = {} },
			{ Category = "Whelen 700", Name = "Blue", Auto = {141,142}, Props = {} },
			{ Category = "Whelen 700", Name = "Amber", Auto = {143,144}, Props = {} },
		}
	},
	{
		Name = "Rear Upper",
		Options = {
			{ Name = "None"},
			{ Category = "1 Viper Dual", Name = "R/B", Auto = {153}, Props = {} },
			{ Category = "1 Viper Dual", Name = "Red", Auto = {154}, Props = {} },
			{ Category = "1 Viper Dual", Name = "Blue", Auto = {155}, Props = {} },
			{ Category = "1 Viper Dual", Name = "Amber", Auto = {156}, Props = {} },
			---
			{ Category = "2 Viper Dual", Name = "R/B", Auto = {157,158}, Props = {} },
			{ Category = "2 Viper Dual", Name = "Red", Auto = {159,160}, Props = {} },
			{ Category = "2 Viper Dual", Name = "Blue", Auto = {161,162}, Props = {} },
			{ Category = "2 Viper Dual", Name = "Amber", Auto = {163,164}, Props = {} },
			---
			{ Category = "TDM Interior Bar", Name = "R/B", Auto = {165}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Red", Auto = {166}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Blue", Auto = {167}, Props = {} },
			{ Category = "TDM Interior Bar", Name = "Amber", Auto = {168}, Props = {} },
			--
			{ Category = "Tomar 200", Name = "R/B", Auto = {169}, Props = {} },
			{ Category = "Tomar 200", Name = "Red", Auto = {170}, Props = {} },
			{ Category = "Tomar 200", Name = "Blue", Auto = {171}, Props = {} },
			{ Category = "Tomar 200", Name = "Amber", Auto = {172}, Props = {} },
			{ Category = "Tomar 200", Name = "Traffic Only", Auto = {173}, Props = {} },
		}
	},
	{
		Name = "Rear Lower",
		Options = {
			{ Name = "None" },
			{ Category = "Viper Dual", Name = "R/B", Auto = {174,175}, Props = {} },
			{ Category = "Viper Dual", Name = "Red", Auto = {176,177}, Props = {} },
			{ Category = "Viper Dual", Name = "Blue", Auto = {178,179}, Props = {} },
			{ Category = "Viper Dual", Name = "Amber", Auto = {180,181}, Props = {} },
			--
			{ Category = "TDM Interior Lightbar", Name = "R/B", Auto = {182}, Props = {} },
			{ Category = "TDM Interior Lightbar", Name = "Red", Auto = {183}, Props = {} },
			{ Category = "TDM Interior Lightbar", Name = "Blue", Auto = {184}, Props = {} },
			{ Category = "TDM Interior Lightbar", Name = "Amber", Auto = {185}, Props = {} },
			-- 
			{ Category = "Code 3 Wingman", Name = "R/B", Auto = {186}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Red", Auto = {187}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Blue", Auto = {188}, Props = {} },
			{ Category = "Code 3 Wingman", Name = "Amber", Auto = {189}, Props = {} },
			--
			{ Category = "Other", Name = "TAM85", Auto = {241}, Props = {} },

		}
	},
	{
		Name = "Plate Lights Side",
		Options = {
			{ Name = "None"},
			{  Name = "R/B", Auto = {211,212}, Props = {} },
			{  Name = "Red", Auto = {213,214}, Props = {} },
			{  Name = "Blue", Auto = {215,216}, Props = {} },
			{  Name = "Amber", Auto = {217,218}, Props = {} },
			{  Name = "White", Auto = {219,220}, Props = {} },
		}
	},
	{
		Name = "Plate Lights Top",
		Options = {
			{ Name = "None"},
			{ Name = "R/B", Auto = {222,221}, Props = {} },
			{ Name = "R/W", Auto = {223,224}, Props = {} },
			{ Name = "R/R", Auto = {225,226}, Props = {} },
			{ Name = "B/W", Auto = {227,228}, Props = {} },
			{ Name = "B/B", Auto = {229,230}, Props = {} },
			{ Name = "Amber", Auto = {231,232}, Props = {} },

			
		}
	},
	{
		Name = "Skirt Lighting",
		Options = {
			{ Name = "None"},
			{ Name = "R/B", Auto = {250,251,252,253}, Props = {} },
			{ Name = "R/W", Auto = {254,255,256,257}, Props = {} },
			{ Name = "B/W", Auto = {258,259,260,261}, Props = {} },
			{ Name = "Amber", Auto = {262,263,264,265}, Props = {} },
		}
	},
	{
		Name = "Corner Strobes",
		Options = {
			{ Name = "None" },
			{ Name = "White", Auto = {197}, Props = {} },
			{ Name = "R/B", Auto = {198}, Props = {} },
			{ Name = "Red", Auto = {199}, Props = {} },
			{ Name = "Blue", Auto = {200}, Props = {} },
			{ Name = "Amber", Auto = {201}, Props = {} },
			
		}
	},
	{
		Name = "Rear Hideaways",
		Options = {
			{ Name = "None" },
			{ Name = "White", Auto = {202}, Props = {} },
			{ Name = "R/B", Auto = {203}, Props = {} },
			{ Name = "Red", Auto = {204}, Props = {} },
			{ Name = "Blue", Auto = {205}, Props = {} },
			{ Name = "Amber", Auto = {206}, Props = {} },
		}
	},

	{
		Name = "Rear Tail Light Flasher",
		Options = {
			{ Name = "None"},
			{ Name = "on", Auto = {207}, Props = {} },
		}
	},
	{
		Name = "Wig Wags",
		Options = {
			{ Name = "None" },
			{ Name = "on", Auto = {196}, Props = {} },
		}
	},
	
	--------------PROPS 
	{
		Name = "Spotlights",
		Options = {
			{ Category = "SM", Name = "2 Down", Auto = {}, Props = {15,14} },
			{ Category = "SM", Name = "2 Up", Auto = {209,210}, Props = {12,13} },
			{ Category = "SM", Name = "1 Up", Auto = {209}, Props = {12,14} },
			{ Name = "Par-46", Auto = {208}, Props = {16} },
			{ Name = "None"}
			
		}
	},
	{
		Name = "Antennas",
		Options = {
			{Name = "None" },
			{ Name = "ON", Props = {32,33,34,35,36} },
			
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "on", Auto = {190}, Props = {4,5,7,39} },
			{ Name = "None" }
		}
	},
	{
		Name = "Radar",
		Options = {
			{ Name = "None"},
			{ Name = "Stalker Dual", Auto = {}, Props = {6} },
			{ Name = "Stalker DSR II", Auto = {}, Props = {37,38} },
		}
	},
	{
		Name = "Trunk Interior Equipment",
		Options = {
			{ Name = "ON", Props = {25,26,27,28,29,30,31,40} },
			{ Name = "None"},
		}
	},
	{
		Name = "Trunk Interior Lights",
		Options = {
			{ Name = "None"},
			{ Name = "ON", Auto = {274}, Props = {} },
		}
	},
	{
		Name = "ALPR",
		Options = {
			{ Name = "None"},
			{ Name = "All", Auto = {}, Props = {8,9,10,11,20,21,22,23,24} },
			{ Name = "Trunk", Auto = {}, Props = {8,9,10,11,20} },
			{ Category = "Roof", Name = "Back", Auto = {}, Props = {21,22} },
			{ Category = "Roof", Name = "Front", Auto = {}, Props = {23,24} },
			{ Category = "Roof", Name = "All", Auto = {}, Props = {23,24,22,21} },
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
	Category = "Pringles: Customizable Photon",
	Author = "Officer Pringle",
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI -- Change this
}
list.Set( "Vehicles", VehicleName, V )

Photon.EMVLibrary["FCV 2011 FH3 Crown Victoria"] = EMV
list.Set( "PhotonConfigurationLibrary", "fcv_vic_76561198337210847_us_mail_carrier", [[{"Skin":"skins/pringle/usps","Siren":23.0,"Category":"Other","Name":"US Mail Carrier","AuxSiren":0.0,"VehicleName":"FCV 2011 FH3 Crown Victoria","Color":{"r":255.0,"b":255.0,"a":255.0,"g":255.0},"Author":"[CRPG] Officer Pringle","Bodygroups":{"4":"0","31":"1","5":"0","22":"0","32":"0","11":"0","12":"3","7":"0","33":"0","13":"1","14":"1","8":"0","24":"0","6":"0","16":"0","25":"0","26":"0","27":"0","28":"1","18":"0","29":"1","0":"0","1":"0","34":"0","10":"0","19":"2","2":"0","17":"3","15":"0","3":"0","23":"0","30":"1","9":"0","21":"0","20":"0"},"Selections":{"Rear Tail Light Flasher":"None","Grill":"None","Lightbar":"Other=Amber Dome","Spotlights":"None","Mirror Lights":"None","Rear Lower":"None","Pushbar":"Pushrod","Rear Door Lighting":"None","ALPR":"None","Police Equipment":"None","Front Lower":"None","Front Upper":"None","Pushbar Side Lights":"None","Rear Hideaways":"None","Plate Lights Side":"None","Corner Strobes":"White","Rear Upper":"None","Wig Wags":"None"}}]] )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
if Photon then Photon:OverwriteIndex( VehicleName, PI ) end -- Add Thi

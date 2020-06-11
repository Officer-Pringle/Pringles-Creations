AddCSLuaFile()

local VehicleName = "2014 Dodge Charger Undercover"

local EMV = {}

EMV.Siren = 45
EMV.Skin = 0
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
	{ 1, 0 }, -- Body1
	{ 2, 0 }, -- Body2
	{ 3, 0 }, -- clamped1
	{ 4, 0 }, -- clamped2
	{ 5, 0 }, -- clamped3
	{ 6, 0 }, -- clamped4
	{ 7, 0 }, -- clamped5
	{ 8, 0 }, -- clamped6
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.4,
		Pos = Vector(0, 125, 11),
		Ang = Angle( -5, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[2] = {
		Model = "models/supermighty/chp/chp_spotlight_left_up.mdl",
		Scale = .8,
		Pos = Vector(-38, 38, 60),
		Ang = Angle( 0, 260, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[3] = {
		Model = "models/supermighty/chp/chp_spotlight_right_up.mdl",
		Scale = .8,
		Pos = Vector(38, 38, 60),
		Ang = Angle( 0, 270, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[4] = {
		Model = "models/supermighty/chp/chp_spotlight_left_up.mdl",
		Scale = .8,
		Pos = Vector(-38, 38, 60),
		Ang = Angle( 0, 260, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[5] = {
		Model = "models/supermighty/chp/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector(35, 39, 60),
		Ang = Angle( 40, -80, -50),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
--
	[6] = {
		Model = "models/supermighty/chp/chp_spotlight_left_down.mdl",
		Scale = .8,
		Pos = Vector(-37, 38, 60),
		Ang = Angle( 40, -80, 50),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[7] = {
		Model = "models/supermighty/chp/chp_spotlight_right_down.mdl",
		Scale = .8,
		Pos = Vector(35, 39, 60),
		Ang = Angle( 40, -80, -50),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[8] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(-25, -110, 56.89),
		Ang = Angle( 7, 230, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	[9] = {
		Model = "models/schmal/alpr_camera.mdl",
		Scale = .8,
		Pos = Vector(25, -110, 56.89),
		Ang = Angle( 6, -40, 0),
		RenderGroup = RENDERGROUP_BOTH,
		RenderMode = RENDERGROUP_TRANSLUCENT
	},
	--
	[10] = {
		Model = "models/schmal/antennas/antenna_6.mdl",
		Scale = 2,
		Pos = Vector(0, -25, 83.90),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[11] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(6, -29, 83),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[12] = {
		Model = "models/schmal/antennas/antenna_2.mdl",
		Scale = 2,
		Pos = Vector(0, -35, 73),
		Ang = Angle( 0, 0, 5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[13] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( -22, -102, 67 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[14] = {
		Model = "models/schmal/antennas/antenna_5.mdl",
		Scale = Vector(1,1,2.5),
		Pos = Vector( 22, -102, 67 ),
		Ang = Angle( 1, -90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[15] = {
		Model = "models/schmal/antennas/antenna_4.mdl",
		Scale = 2,
		Pos = Vector(-5, -30.5, 83),
		Ang = Angle( 0, 0, 1),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},

	[16] = {
		Model = "models/schmal/stalker_dual_main.mdl",
		Scale = .25,
		Pos = Vector(0, 34, 53.6),
		Ang = Angle( 5, -16, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[17] = {
		Model = "models/c3/console/pconsole.mdl",
		Scale = 1,
		Pos = Vector(1, 5, 18),
		Ang = Angle( 0, 179, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[18] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1,
		Pos = Vector(10, 15, 40),
		Ang = Angle( -2, 137, -5),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[19] = {
		Model = "models/afgn_props/pro_gard_patition1/pro_gard_patition1.mdl",
		Scale = 4.8,
		Pos = Vector(2.5, -3, 25),
		Ang = Angle( 0, 20, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
}

EMV.Auto = {
	[1] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 124.5, 39.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	[2] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 124.5, 39.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = PB
	},
	[3] = {
		ID = "Whelen Ion Split",
		Scale = 1.3,
		Pos = Vector( -19.7, 125, 35 ),
		Ang = Angle( 70, 90, 0),
		Color1 = B,
		Color2 = R
	},
	[4] = {
		ID = "Whelen Ion Split",
		Scale = 1.3,
		Pos = Vector( 19.7, 125, 35 ),
		Ang = Angle( -70, 270, 0),
		Color1 = B,
		Color2 = R
	},
	[5] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 124.5, 39.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPA"
	},
	[6] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 124.5, 39.5 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Phase = "CHPB"
	},
	[7] = {
		ID = "Whelen Ion Split",
		Scale = 1.3,
		Pos = Vector( -19.7, 125, 35 ),
		Ang = Angle( 70, 90, 0),
		Color1 = B,
		Color2 = W
	},
	[8] = {
		ID = "Whelen Ion Split",
		Scale = 1.3,
		Pos = Vector( 19.7, 125, 35 ),
		Ang = Angle( -70, 270, 0),
		Color1 = B,
		Color2 = W
	},
	------------
	[9] = {
		ID = "Whelen 400 Series",
		Scale = 1.2,
		Pos = Vector( 10, 127, 30.5 ),
		Ang = Angle( 0, 15, 0),
		Color1 = R,
		Color2 = B,
		Phase = PA
	},
	[10] = {
		ID = "Whelen 400 Series",
		Scale = 1.2,
		Pos = Vector( -10, 127, 30.5 ),
		Ang = Angle( 0, -15, 0),
		Color1 = R,
		Color2 = B,
		Phase = PB
	},
	[11] = {
		ID = "Whelen 400 Series",
		Scale = 1.2,
		Pos = Vector( 10, 127, 30.5 ),
		Ang = Angle( 0, 15, 0),
		Color1 = CW,
		Color2 = B,
		Phase = PA
	},
	[12] = {
		ID = "Whelen 400 Series",
		Scale = 1.2,
		Pos = Vector( -10, 127, 30.5 ),
		Ang = Angle( 0, -15, 0),
		Color1 = CW,
		Color2 = B,
		Phase = PB
	},
	---------------------------------
	[13] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 46, 34.8, 54 ),
		Ang = Angle( -3, -30, -9),
		Color1 = R,
		Phase = PA
	},
	[14] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -47.5, 34.9, 54 ),
		Ang = Angle( 3, 30, -9),
		Color1 = B,
		Phase = PB
	},
	[15] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( 46, 34.8, 54 ),
		Ang = Angle( -3, -30, -9),
		Color1 = B,
		Phase = PA
	},
	[16] = {
		ID = "Whelen Ion",
		Scale = .8,
		Pos = Vector( -47.5, 34.9, 54 ),
		Ang = Angle( 3, 30, -9),
		Color1 = B,
		Phase = PB
	},
	----------------
	[17] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 12, 21, 64.2 ),
		Ang = Angle( 0, 90, 0),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[18] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.3,
		Pos = Vector( 12, 21, 64.2 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	--
	[19] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 65 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = R,
	},
	[20] = {
		ID = "TDM Front Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, 20, 65 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B,
	},
	----------
	[21] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 48.5, 54.5 ),
		Ang = Angle( 180, 270, 0),
		Color1 = B,
		Color2 = R,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[22] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 48.5, 54.5 ),
		Ang = Angle( 180, 270, 0),
		Color1 = B,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},

	--[[-------------------------------------------------------------------------
	GRILL LIGHTS
	---------------------------------------------------------------------------]]
	[23] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 117, 35.2 ),
		Ang = Angle( 0, -10, 0),
		Color1 = R,
		Phase = PA
	},
	[24] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 117, 35.2 ),
		Ang = Angle( 0, 10, 0),
		Color1 = B,
		Phase = PB
	},
	-----------
	[25] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( -37, -52, 55.1 ),
		Ang = Angle( 3, 90, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[26] = {
		ID = "Whelen Ion Split",
		Scale = 1,
		Pos = Vector( 37, -52, 55.1 ),
		Ang = Angle( -3, 270, 0),
		Color1 = R,
		Color2 = B,
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NONE,
	},
	[27] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.,
		Pos = Vector( 0, -81, 56.5),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = B,
	},
	[28] = {
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.,
		Pos = Vector( 0, -81, 56.5),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B,
	},
	--
	[29] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( -15, -78.5, 58.6),
		Ang = Angle( 180, 84, 0)
	},
	[30] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1.5,
		Pos = Vector( 15, -78., 58.6),
		Ang = Angle( 180, 95, 0)
	},
	--------------------------------------
	[31] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 22, -56, 65 ),
		Ang = Angle( 0, 270, 1)
	},
	[32] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -22, -56, 65 ),
		Ang = Angle( 0, 270, 1),
		Color1 = B,
		Color2 = R
	},
	--
	[33] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 22, -56, 65 ),
		Ang = Angle( 0, 270, 1),
		Color1 = B,
		Color2 = B
	},
	[34] = {
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -22, -56, 65 ),
		Ang = Angle( 0, 270, 1),
		Color1 = B,
		Color2 = B
	},

	-----
	[35] = {
		ID = "Pringles Traffic Bar",
		Scale = .5,
		Pos = Vector( 0, -60, 66.5 ),
		Ang = Angle( 0, 270, 0)
	},
	-- MORE GRILL LIGHTS
	[36] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 10, 117, 35.2 ),
		Ang = Angle( 0, -10, 0),
		Color1 = B,
		Phase = PA
	},
	[37] = {
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 117, 35.2 ),
		Ang = Angle( 0, 10, 0),
		Color1 = B,
		Phase = PB
	},	
	[40] = {
		ID = "Whelen CenCom Panel",
		Scale = 1,
		Pos = Vector( -1.6, 22, 35.5 ),
		Ang = Angle( 0, 0, 25 )
	},


	[38] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.0,
		Pos = Vector(4, -8, .2),
		Ang = Angle(-2, 0, 0),
	},
	[39] = {
		ID = "FPIU16 PAR-46",
		Scale = 1.0,
		Pos = Vector(85.1, -9.5, .3),
		Ang = Angle(-2, 0, 0),
	},
	[41] = {
		ID = "12Charger Rear Tail Lights",
		Scale = 1,
		Pos = Vector( 0, 4.5, -1.6 ),
		Ang = Angle( 0, 0, 0)
	},
	[42] = {
		ID = "Front Flash Inner",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0)
	},
	[43] = {
		ID = "Front Flash Inner",
		Scale = 1,
		Pos = Vector( 0, 0, 0 ),
		Ang = Angle( 0, 0, 0),
		Color1 = B,
		Color2 = B
	},
}
EMV.Selections = {
	{
		Name = "Pushbar",
		Options = {
			{ Name = "None"},
			{ Category = "Sentina", Name = "Ions R/B", Auto = {1,2,3,4}, Props = {1} },
			{ Category = "Sentina", Name = "Ions Blue", Auto = {5,6,7,8}, Props = {1} },
			{ Category = "Sentina", Name = "400 R/B", Auto = {3,4,9,10}, Props = {1} },
			{ Category = "Sentina", Name = "400 Blue", Auto = {7,8,11,12}, Props = {1} },
		}
	},
	{
		Name = "Mirror Lights",
		Options = {
			{ Name = "None"},
			{ Name = "R/B", Auto = {13,14}, Props = {} },
			{ Name = "Blue", Auto = {15,16}, Props = {} }
		}
	},
	{
		Name = "Front Upper",
		Options = {
			{ Category = "Viper Dual", Name = "R/B", Auto = {17}, Props = {} },
			{ Category = "Viper Dual", Name = "Blue", Auto = {18}, Props = {} },
			--
			{ Category = "Bar", Name = "R/B", Auto = {19}, Props = {} },
			{ Category = "Bar", Name = "Blue", Auto = {20}, Props = {} },
			{ Name = "None"}

		}
	},
	{
		Name = "Front Lower",
		Options = {
			{ Category = "Viper Dual", Name = "R/B", Auto = {21}, Props = {} },
			{ Category = "Viper Dual", Name = "Blue", Auto = {22}, Props = {} },
			{ Name = "None"}
		}
	},
	{
		Name = "Grill",
		Options = {
			{ Category = "Whelen Ion", Name = "R/B", Auto = {23,24}, Props = {} },
			{ Category = "Whelen Ion", Name = "Blue", Auto = {36,37}, Props = {} },
			{ Name = "None"}

		}
	},
	{
		Name = "Rear Side Window Lights",
		Options = {
			{ Name = "R/B", Auto = {25,26}, Props = {} },
			{ Name = "Blue", Auto = {}, Props = {} },
			{ Name = "None"}
		}
	},
	{
		Name = "Rear Lower",
		Options = {
			{ Category = "TDM Rear Bar", Name = "R/B", Auto = {27}, Props = {} },
			{ Category = "TDM Rear Bar", Name = "Blue", Auto = {28}, Props = {} },
			{ Category = "Viper Dual", Name = "R/B", Auto = {29,30}, Props = {} },
			{ Category = "Viper Dual", Name = "Blue", Auto = {}, Props = {} },
			{ Name = "None"}
		}
	},
	{
		Name = "Rear Upper",
		Options = {
			{ Name = "None"},
			{ Category = "Viper Dual", Name = "R/B", Auto = {31,32}, Props = {} },
			{ Category = "Viper Dual", Name = "Blue", Auto = {33,34}, Props = {} },
		}
	},
	{
		Name = "Tomar Traffic Bar",
		Options = {
			{ Name = "None", Auto = {}, Props = {} },
			{ Name = "On", Auto = {35}, Props = {} },
			
		}
	},
	


	{
		Name = "Spotlights",
		Options = {
			{ Name = "2 Up", Auto = {38,39}, Props = {2,3} },
			{ Name = "1 Up 1 Down", Auto = {38}, Props = {4,5} },
			{ Name = "2 Down", Auto = {}, Props = {6,7} },
			{ Name = "None" }

		}
	},
	{
		Name = "ALPR",
		Options = {
			{Name = "None", Auto = {}, Props = {} },
			{Name = "ON", Auto = {}, Props = {8,9} },
		}
	},
	{
		Name = "Antennas",
		Options = {
			{ Name = "On", Auto = {}, Props = {10,11,12,13,14,15} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Police Equipment",
		Options = {
			{ Name = "On", Auto = {40}, Props = {16,17,18} },
			{ Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Partition",
		Options = {
			{  Name = "on", Auto = {}, Props = {19} },
			{  Name = "None", Auto = {}, Props = {} },
		}
	},
	{
		Name = "Rear Flashers",
		Options = {
			{ Name = "the fuck you think loser", Auto = {41}, Props = {} },
			{ Name = "None"}
		}
	},
	{
		Name = "Front Flashers",
		Options = {
			{ Name = "R/B", Auto = {42}, Props = {} },
			{ Name = "Blue", Auto = {43}, Props = {} },
			{ Name = "None", }
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
	},
	Illumination = {
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
	Category = "Emergency Vehicles",
	Author = "Officer Pringle",
	Model = "models/tokicars/2014_chrgr_toki.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TokisCars/14chargerppv_toki.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

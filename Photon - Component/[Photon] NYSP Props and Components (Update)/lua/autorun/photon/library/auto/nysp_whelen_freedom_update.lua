AddCSLuaFile()

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

local name = "NYSP Whelen Freedom Updated"

local COMPONENT = {}

COMPONENT.Model = "models/photon/whelen_freedom_nysp.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER",
}

COMPONENT.Meta = {
	nysp_main = {
		AngleOffset = 90,
		W = 5.8,
		H = 5.5,
		Sprite = "sprites/emv/freedom_main_dual",
		WMult = 2,
		Scale = 1
	},
	nysp_corn = {
		AngleOffset = 90,
		W = 9,
		H = 5.5,
		Sprite = "sprites/emv/freedom_main_dual",
		WMult = 2,
		Scale = 2
	},
	nysp_illum1 = {
		AngleOffset = 90,
		W = 4,
		H = 3.5,
		Sprite = "sprites/emv/emv_whelen_tri_dual",
		WMult = 1,
		Scale = 1.2
	},
	nysp_illum2 = {
		AngleOffset = 90,
		W = 6.2,
		H = 6,
		Sprite = "sprites/emv/freedom_main_dual",
		WMult = 1,
		Scale = 1,
		SourceOnly = true
	},
	nysp_illum3 = {
		AngleOffset = 90,
		W = 4,
		H = 3.5,
		Sprite = "sprites/emv/led_single_dual",
		WMult = 1,
		Scale = 1.2
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 12.8, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_main", 1 },
	[2] = { Vector( -12.8, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_main", 1 },
	[3] = { Vector( 18.8, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_main" , 1},
	[4] = { Vector( -18.9, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_main", 1 },
	--
	[5] = { Vector( 28.2, 5.1, 1.2 ), Angle( 0, 145, 0 ), "nysp_corn", 5 },
	[6] = { Vector( -28.2, 5.1, 1.2 ), Angle( 0, -145, 0 ), "nysp_corn", 5 },
	[7] = { Vector( 28.2, -5.1, 1.2 ), Angle( 0, 35, 0 ), "nysp_corn", 5 },
	[8] = { Vector( -28.2, -5.1, 1.2 ), Angle( 0, -35, 0 ), "nysp_corn", 5 },
	--
	[9] = { Vector( 16.3, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	[10] = { Vector( -16.3, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	[11] = { Vector( 10, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	[12] = { Vector( -10, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	[13] = { Vector( 3.3, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	[14] = { Vector( -3.5, -7.38, 1.2 ), Angle( 0, 0, 0 ), "nysp_main", 1 },
	--
	[15] = { Vector( 6.2, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_illum1", 10 },
	[16] = { Vector( -6.2, 7.38, 1.2 ), Angle( 0, 180, 0 ), "nysp_illum1", 10 },
	[17] = { Vector( -32.5, 0, 1.2 ), Angle( 0, -90, 0 ), "nysp_illum3", 10 },
	[18] = { Vector( 32.5, 0, 1.2 ), Angle( 0, 90, 0 ), "nysp_illum3", 10 },
	[19] = { Vector( 0, 7.38, 1.3 ), Angle( 0, 180, 0 ), "nysp_illum2", 10 },

}

COMPONENT.Sections = {
	["nysp_lib_rear"] = {
		[1] = { {9, B }, {13, R}, {12, B} },
		[2] = { {10, R }, {14, R}, {11, A} },
		[3] = { {10, R }, {14, R}, {11, A} },
		[4] = { {13, R}, {14, R}, {10, R} },
		--
		[5] = { {9, B}, {13, R}, {10, R} },
		[6] = { {14, R}, {12, B} }
	},
	["nysp_lib_corn"] = {
		[1] = { {6, R}, {7, R} },
		[2] = { {5, R}, {8, R} },
		[3] = { {7, R}, },
		[4] = { {8, R} },
		[5] = { {6, R}, {7, R}, {5, R}, {8, R} }
	},
	["nysp_lib_front"] = {
		[1] = { {1,R}, {4, R}, {6, R} },
		[2] = { {1,R}, {4, R},},
		[3] = { {1,R}, {4, R}, {7, R}},
		[4] = { {2,R}, {3, R},},
		[5] = { {2,R}, {4, R} },
		[6] = { {1,R}, {3, R} },
		[7] = { {3, R} },
		[8] = { {4, R} }
	},
	["nysp_lib_illum"] = {
		[1] = { {15, CW}, {17, CW} },
		[2] = { {16, CW}, {18, CW} }
	},
	["nsyp_rear_c_am"] = {
		[1] = { {11, A} }
	},
	["nysp_pull"] = {
		[1] = { {1, R}, {2, R}, {3, R}, {4, R} },
		[2] = { {5, R}, {6, R}, {3, R}, {4, R}}
	}
}

COMPONENT.Patterns = {
	["nysp_lib_rear"] = {
		["code1"] = {4,4,4,4,0,1,1,1,1,0,4,4,4,4,0,1,1,1,1,0,2,2,2,2,0,1,1,1,1,0,2,2,2,2,0,1,1,1,1,0,3,3,3,3,0,1,1,1,1,0,3,3,3,3,0,1,1,1,1,0},
		["code2"] = {4,4,4,0,1,1,1,1,0,4,4,4,0,1,1,1,0,2,2,2,0,1,1,1,0,2,2,2,0,1,1,1,0,3,3,3,0,1,1,1,0,3,3,3,0,1,1,1,0},
		["code3"] = {4,0,1,0,4,0,1,0,2,0,1,0,2,0,1,0,3,0,1,0,3,0,1,0},
		["cruise"] = {5,5,5,5,5,5,0,5,5,5,5,5,5,0,6,6,6,6,6,6,0,6,6,6,6,6,6}
	},
	["nysp_lib_corn"] = {
		["code1"] = {1,1,1,1,1,0,1,1,1,1,1,0,2,2,2,2,2,0,2,2,2,2,2},
		["code2"] = {1,1,1,0,1,1,1,0,2,2,2,0,2,2,2},
		["code3"] = {1,0,1,0,2,0,2},
		["cruise"] = {3,3,3,3,3,3,0,3,3,3,3,3,3,0,4,4,4,4,4,4,0,4,4,4,4,4,4,0},
	},
	["nysp_lib_front"] = {
		["code1"] = {5,5,5,5,0,5,5,5,5,0,6,6,6,6,0,6,6,6,6,1,1,1,1,2,2,2,2,4,4,4,4,1,1,1,1,2,2,2,2,4,4,4,4,1,1,1,1,2,2,2,2,4,4,4,4},
		["code2"] = {5,5,0,5,5,0,6,6,0,6,6,1,1,2,2,4,4,1,1,2,2,4,4,1,1,2,2,4,4},
		["code3"] = {5,0,5,0,6,0,6,1,2,4,1,2,4,1,2,4},
		["cruise"] = { 7,7,7,7,7,7,7,7,8,8,8,8,8,8,8,8 }

	},
	["nysp_lib_illum"] = {
		["main"] = {1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,},
	},
	["nsyp_rear_c_am"] = {
		["cruise"] = {1,1,0,1,1,0,0,0,0,0,0,0}
	},
	["nysp_pull"] = {
		["pullover"] = {1,1,1,1,1,1,1,2,2,2,2,2,2,2,}
	}
}

COMPONENT.TrafficDisconnect = { 
	--[[["auto_whelen_liberty_ii_traffic"] = {
		9, 11, 13, 14, 12, 10
	}]]
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["nysp_lib_rear"] = "code1",
				["nysp_lib_corn"] = "code1",
				["nysp_lib_front"] = "code1",
				["nysp_lib_illum"] = "main",
			},
			M2 = {
				["nysp_lib_rear"] = "code2",
				["nysp_lib_corn"] = "code2",
				["nysp_lib_front"] = "code2",
				["nysp_lib_illum"] = "main",
			},
			M3 = {
				["nysp_lib_rear"] = "code3",
				["nysp_lib_corn"] = "code3",
				["nysp_lib_front"] = "code3",
				["nysp_lib_illum"] = "main",
			},
			P = {
				["nysp_pull"] = "pullover",
				["nysp_lib_rear"] = "code1"
			}
		},
	Auxiliary = {
			C = {
				["nysp_lib_corn"] = "cruise",
				["nysp_lib_rear"] = "cruise",
				["nysp_rear_c_am"] = "cruise",
				["nysp_lib_front"] = "cruise"
				
			},
			L = {
				
			},
			R = {
				
			},
			D = {
				
			}
		},
	Illumination = {
		T = {
			{ 15, CW }, { 16, CW }
		},
		F = {
			{ 15, CW }, { 16, CW }, {19, CW}
		},
		L = {
			{18, CW}
		},
		R = {
			{17,CW}
		},
		A = {
			{ 15, CW }, { 16, CW }, {19, CW}, {17, CW}, {18, CW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
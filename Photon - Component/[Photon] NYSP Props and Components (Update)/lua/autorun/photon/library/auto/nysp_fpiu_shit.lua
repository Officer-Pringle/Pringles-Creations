AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"


local name = "NYSP FPIU17 Front Hideaway"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	fpiu17_front_hideaway = {
		AngleOffset = -90,
		W = 17,
		H = 15,
		Sprite = "sprites/emv/fpiu_hideaway",
		Scale = 1.5,
		WMult = 1.25
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -27.89, 103.5, 44.85 ), Angle( 1, 30, 0 ), "fpiu17_front_hideaway" },
	[2] = { Vector( 27.89, 103.5, 44.85 ), Angle( 179, -30, 165 ), "fpiu17_front_hideaway" },

}

COMPONENT.Sections = {
	["auto_fpiu17_front_hideaway"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_fpiu17_front_hideaway"] = {
		["CODE1"] = { 1, 1, 1, 2,0,2,0,2,0,3,0,3,0,3,0},
		["code2"] = { 3, 3, 3, 0, 2, 2, 2, 0 },
		["code3"] = { 3, 0, 3, 0, 0, 2, 0, 2, 0, 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fpiu17_front_hideaway"] = "CODE1", },
		M2 = { ["auto_fpiu17_front_hideaway"] = "code2", },
		M3 = { ["auto_fpiu17_front_hideaway"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYSP FPIU17 Front Turn Signal Hideaways"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
    front_turn_signal = {
		AngleOffset = -90,
		W = 10,
		H = 12,
		Sprite = "sprites/emv/fpiu_turnsignal",
		Scale = 1,
		WMult = 2
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -39, 95, 44.9 ), Angle( 1, 58.9, 14 ), "front_turn_signal" },
	[2] = { Vector( 39, 95, 44.9 ), Angle( 180-1, -58.9, 180-14 ), "front_turn_signal" },

}

COMPONENT.Sections = {
	["auto_fpiu17_front_turn_signal"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_2" }, }
	},
}

COMPONENT.Patterns = {
	["auto_fpiu17_front_turn_signal"] = {
		["code2"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,2,2,0 },
		["code3"] = { 1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = { ["auto_fpiu17_front_turn_signal"] = "code2", },
		M3 = { ["auto_fpiu17_front_turn_signal"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

local name = "NYSP FPIU17 Rear Turn Signal Hideaways"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	rear_turn = {
		AngleOffset = 90,
		W = 14,
		H = 14,
		Sprite = "sprites/emv/fpiu_rearturn",
		Scale = 2,
		WMult = 1
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -36.72, -116, 51 ), Angle( -5.19, -30.14, -6.99 ), "rear_turn" },
	[2] = { Vector( 36.72, -116, 51 ), Angle( 180+5.19, 30.14, 180+6.99 ), "rear_turn" },

}

COMPONENT.Sections = {
	["auto_fpiu17_rear_turn"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }},
	},
}


COMPONENT.Patterns = {
	["auto_fpiu17_rear_turn"] = {
		["code2"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = { ["auto_fpiu17_rear_turn"] = "code2", },
		M3 = { ["auto_fpiu17_rear_turn"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )


local name = "NYSP FPIU17 Reverse Hideaways"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	fpiu17_reverse = {
		AngleOffset = 90,
		W = 8,
		H = 8,
		Sprite = "sprites/emv/fpiu_reverse",
		Scale = 2,
		WMult = 1.25
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -34, -117.33, 58.25 ), Angle( 0, -30.14, 0 ), "fpiu17_reverse", 2 },
	[2] =  {Vector( 34, -117.33, 58.25 ), Angle( 180, 30.14, 180), "fpiu17_reverse", 2 },
}

COMPONENT.Sections = {
	["auto_fpiu17_reverse"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_fpiu17_reverse"] = {
		["code1"] = { 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2"] = { 2, 2, 2, 2, 2, 0, 3, 3, 3, 3, 3 },
		["code3"] = { 2, 2, 0, 2, 2, 0, 3, 3, 0, 3, 3, 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fpiu17_reverse"] = "code2" },
		M2 = { ["auto_fpiu17_reverse"] = "code2" },
		M3 = { ["auto_fpiu17_reverse"] = "code3" }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
-------------------------- END ------------------------------------
------------------------- START ----------------------------------
local name = "NYSP FPIU17 Fog Lamps"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	fpiu17_fog = {
		AngleOffset = 90,
		W = 18,
		H = 18,
		Sprite = "sprites/emv/fpiu_foglamp",
		Scale = 3,
		WMult = 2
	},
}

COMPONENT.Positions = {
	[1] = { 
		Vector( 40, 97.5, 33 ), 
		Angle( 0, 130, 0), 
		"fpiu17_fog" -- NAME
	},
	
	[2] = { 
		Vector( -40.58, 97.5, 33 ), 
		Angle( 180, -130, 180),
		"fpiu17_fog" -- NAME
	},

}

COMPONENT.Sections = {
	["auto_fpiu17_foglamps"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_2" } },
	},
}


COMPONENT.Patterns = {
	["auto_fpiu17_foglamps"] = {
		["code1"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code2"] = { 1,1,0,1,1,0,2,2,0,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fpiu17_foglamps"] = "code1" },
		M2 = { ["auto_fpiu17_foglamps"] = "code2" },
		M3 = { ["auto_fpiu17_foglamps"] = "code3"}
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
------------------------------------------------
------------------------------------------------
local name = "NYSP FPIU17 Wig-Wags"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
	[2] = "S_WHITE",
}

COMPONENT.Meta = {
	fpiu17_wig_wags = {
		AngleOffset = -90,
		W = 9,
		H = 10,
		Sprite = "sprites/emv/fpiu_headlight",
		Scale = 1.5,
		WMult = 1.25
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -30, 101.85, 47.75 ), 
		Angle( 1, 30, 0 ), 
		"fpiu17_wig_wags", 1, 10 },
	
	[2] = { 
		Vector( 30, 101.85, 47.75 ), 
		Angle( 179, -30, 165 ), 
		"fpiu17_wig_wags", 1, 10 },

}

COMPONENT.Sections = {
	["auto_fpiu17_wig_wags"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_fpiu17_wig_wags"] = {
		["CODE1"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3,0},
		["code2"] = { 2,2,0,2,2,0,3,3,0,3,3,0},
		["code3"] = { 2,0,2,0,3,0,3,0},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_fpiu17_wig_wags"] = "CODE1", },
		M2 = { ["auto_fpiu17_wig_wags"] = "code2", },
		M3 = { ["auto_fpiu17_wig_wags"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )


--[[-------------------------------------------------------------------------
FPIU 14
---------------------------------------------------------------------------]]
name = "NYSP FPIU14 FlashTails"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
}

COMPONENT.Meta = {
	explorer14_flashtail = {
		AngleOffset = 90,
		W = 6.9,
		H = 6.9,
		Sprite = "sprites/emv/explorer_turn",
		WMult = .5,
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -38.0, -120.9, 48.3 ), Angle( -2, -35, 0 ), "explorer14_flashtail", 1 },
	[2] = { Vector( 38.0, -120.9, 48.3 ), Angle( 182, 35, 180 ), "explorer14_flashtail", 1 },

}

COMPONENT.Sections = {
	["explorer14_flashtail"] = {
		[1] = {{1,"_1"},{2,"_2"}, },
		[2] = {{1,"_1"}, },
		[3] = {{2,"_2"}, },
	},
}

COMPONENT.Patterns = {
	["explorer14_flashtail"] = {
		["code1"] = {2,2,2,2,2,2,2,2,2,2,2,0,3,3,3,3,3,3,3,3,3,3,3},
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			          2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_flashtail"] = "code1" },
		M2 = { ["explorer14_flashtail"] = "code2" },
		M3 = { ["explorer14_flashtail"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
------------------------------
local name = "NYSP 14 Explorer Wig-Wags"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
	[2] = "S_WHITE",
}

COMPONENT.Meta = {
	left = {
		AngleOffset = -90,
		W = 4,
		H = 8,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 2.5,
		WMult = 1
	},
	right = {
		AngleOffset = -90,
		W = 4,
		H = 8,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 2.5,
		WMult = 1
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector(-33.9, 103.5, 42.3), 
		Angle( 0, 10, 0), 
		"left", 0, .5 
	},
	[2] = { 
		Vector(33.9, 103.5, 42.3), 
		Angle( 0, 10, 0), 
		"right", 0, .5  
	},
}

COMPONENT.Sections = {
	["auto_wig_wags"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_wig_wags"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_wig_wags"] = "code1", },
		M2 = { ["auto_wig_wags"] = "code2", },
		M3 = { ["auto_wig_wags"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )
--[[-------------------------------------------------------------------------
- Make Ultra Dome Lights choice for rear


---------------------------------------------------------------------------]]



AddCSLuaFile()

local VehicleName = "2014 FCV Ford Explorer"

local EMV = {}

EMV.Siren = 23
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

	{ 1, 0 }, -- clamped1
	{ 2, 0 }, -- clamped2
	{ 3, 0 }, -- clamped3
}

EMV.Props = {
	
}

EMV.Auto = {
	-- [[ PRINGLES LIBERTY SX LIGHTBARS ]]
	[1] = {
		ID = "Pringles Whelen Liberty SX",
		Scale = 1.1,
		Pos = Vector( 0, -15, 88.7 ),
		Ang = Angle( 0, 90, 0)
	},
	[2] = {
		ID = "Pringles Whelen Liberty SX Red",
		Scale = 1.1,
		Pos = Vector( 0, -15, 88.7 ),
		Ang = Angle( 0, 90, 0)
	},
	[3] = {
		ID = "Pringles Whelen Liberty SX Blue",
		Scale = 1.1,
		Pos = Vector( 0, -15, 88.7 ),
		Ang = Angle( 0, 90, 0)
	},
	[4] = {
		ID = "Pringles Whelen Liberty SX Amber",
		Scale = 1.1,
		Pos = Vector( 0, -15, 88.7 ),
		Ang = Angle( 0, 90, 0)
	},
	--[[ PRINGLES WHELEN JUSTICE LIGHTBAR ]]
	[5] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.18,
		Pos = Vector( 0, -18, 90 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = B
	},
	[6] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.18,
		Pos = Vector( 0, -18, 90 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[7] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.18,
		Pos = Vector( 0, -18, 90 ),
		Ang = Angle( 0, 90, 0),
		
	},
	[8] = {
		ID = "Pringles Whelen Justice SS",
		Scale = 1.18,
		Pos = Vector( 0, -18, 90 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	-- [[ SUPERMIGHTY WHELEN LIBERTY SX ]]
	[9] = {
		ID = "Whelen Liberty SX RB",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0)
	},
	[10] = {
		ID = "Whelen Liberty SX Red",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0)
	},
	[11] = {
		ID = "Whelen Liberty SX Blue",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0)
	},
	[12] = {
		ID = "Whelen Liberty SX Amber",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0)
	},
	[13] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0)
	},
	--[[ WHELEN LEGECY ]] --
	[14] = {
		ID = "Whelen Legacy",
		Scale = 1.1,
		Pos = Vector( 0, -15, 87.5 ),
		Ang = Angle( 0, 90, 0)
	},
	[15] = {
		ID = "Whelen Legacy",
		Scale = 1.1,
		Pos = Vector( 0, -15, 87.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R,
	},
	[16] = {
		ID = "Whelen Legacy",
		Scale = 1.1,
		Pos = Vector( 0, -15, 87.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[17] = {
		ID = "Whelen Legacy",
		Scale = 1.1,
		Pos = Vector( 0, -15, 87.5 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--[[ Whelen Liberty II ]]
	[18] = {
		ID = "Whelen Liberty II",
		Scale = 1.28,
		Pos = Vector( 0, -15, 89 ),
		Ang = Angle( 0, 90, 0),
	},
	[19] = {
		ID = "Whelen Liberty II",
		Scale = 1.28,
		Pos = Vector( 0, -15, 89 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[20] = {
		ID = "Whelen Liberty II",
		Scale = 1.28,
		Pos = Vector( 0, -15, 89 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[21] = {
		ID = "Whelen Liberty II",
		Scale = 1.28,
		Pos = Vector( 0, -15, 89 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	--
	[22] = {
		ID = "Whelen Liberty SX",
		Scale = 1.08,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 )
	},
	[23] = {
		ID = "Whelen Liberty SX",
		Scale = 1.08,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R,

	},
	[24] = {
		ID = "Whelen Liberty SX",
		Scale = 1.08,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[25] = {
		ID = "Whelen Liberty SX",
		Scale = 1.08,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	[26] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1.13,
		Pos = Vector( 0, -15, 89.5),
		Ang = Angle( 0, 90, 0 )
	},
	[27] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1.13,
		Pos = Vector( 0, -15, 89.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[28] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1.13,
		Pos = Vector( 0, -15, 89.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[29] = {
		ID = "Whelen Ultra Freedom",
		Scale = 1.13,
		Pos = Vector( 0, -15, 89.5),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	[30] = {
		ID = "Whelen Justice",
		Scale = 1.15,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0 )
	},
	[31] = {
		ID = "Whelen Justice",
		Scale = 1.15,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R
	},
	[32] = {
		ID = "Whelen Justice",
		Scale = 1.15,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[33] = {
		ID = "Whelen Justice",
		Scale = 1.15,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	--
	[34] = {
		ID = "Code 3 RX2700",
		Scale = 1.05,
		Pos = Vector( 0, -17, 88.8 ),
		Ang = Angle( 0, 90, 0)
	},
	[35] = {
		ID = "Code 3 RX2700 Red",
		Scale = 1.05,
		Pos = Vector( 0, -17, 88.8 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = R
	},
	[36] = {
		ID = "Code 3 RX2700 Blue",
		Scale = 1.05,
		Pos = Vector( 0, -17, 88.8 ),
		Ang = Angle( 0, 90, 0),
		Color1 = B,
		Color2 = B
	},
	[37] = {
		ID = "Code 3 RX2700 MC",
		Scale = 1.05,
		Pos = Vector( 0, -17, 88.8 ),
		Ang = Angle( 0, 90, 0),
		Color1 = A,
		Color2 = A
	},
	[38] = {
		ID = "Federal Signal Vision SLR",
		Scale = 1,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0)
	},
	[39] = {
		ID = "Federal Signal Vision SLR Clear",
		Scale = 1,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0)
	},
	--
	[40] = {
		ID = "Federal Signal Vision SLR R/B",
		Scale = 1,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0)
	},
	--
	[41] = {
		ID = "Federal Signal Vision SLR Amber",
		Scale = 1,
		Pos = Vector( 0, -15, 90),
		Ang = Angle( 0, 90, 0)
	},
	[42] = {
		ID = "Federal Signal Integrity",
		Scale = 1.05,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 )
	},
	[43] = {
		ID = "Federal Signal Integrity",
		Scale = 1.05,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2 = R,
	},
	[44] = {
		ID = "Federal Signal Integrity",
		Scale = 1.05,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[45] = {
		ID = "Federal Signal Integrity",
		Scale = 1.05,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	--
	[46] = {
		ID = "Federal Signal Legend",
		Scale = 1.1,
		Pos = Vector( 0, -20, 89 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[47] = {
		ID = "Federal Signal Legend Red",
		Scale = 1.1,
		Pos = Vector( 0, -20, 89 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[48] = {
		ID = "Federal Signal Legend Blue",
		Scale = 1.1,
		Pos = Vector( 0, -20, 89 ),
		Ang = Angle( 0, 90, 0)
	},
	--
	[49] = {
		ID = "Federal Signal Valor",
		Scale = 1,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 )
	},
	[50] = {
		ID = "Federal Signal Valor",
		Scale = 1,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = R,
		Color2= R
	},
	[51] = {
		ID = "Federal Signal Valor",
		Scale = 1,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = B,
		Color2 = B
	},
	[52] = {
		ID = "Federal Signal Valor",
		Scale = 1,
		Pos = Vector( 0, -15, 88),
		Ang = Angle( 0, 90, 0 ),
		Color1 = A,
		Color2 = A
	},
	--
	[53] = {
		ID = "Whelen Edge",
		Scale = 1.13,
		Pos = Vector( 0, -20, 84.5),
		Ang = Angle( 0, 270, 0)
	},
	--
	[54] = {
		ID = "Whelen Edge Red",
		Scale = 1.13,
		Pos = Vector( 0, -20, 84.5),
		Ang = Angle( 0, 270, 0)
	},
	--
	[55] = {
		ID = "Whelen Edge Blue",
		Scale = 1.13,
		Pos = Vector( 0, -20, 84.5),
		Ang = Angle( 0, 270, 0)
	},
	--
	[56] = {
		ID = "Whelen Edge Amber",
		Scale = 1.13,
		Pos = Vector( 0, -20, 84.5),
		Ang = Angle( 0, 270, 0)
	},
	[57] = {
		ID = "Code 3 MX7000",
		Scale = 1.17,
		Pos = Vector( 0, -15, 85),
		Ang = Angle( 0, -90, 0 )
	},
	[58] = {
		ID = "Code 3 MX7000 Blue",
		Scale = 1.17,
		Pos = Vector( 0, -15, 85),
		Ang = Angle( 0, -90, 0 )
	},
	[59] = {
		ID = "Code 3 MX7000 Amber",
		Scale = 1.17,
		Pos = Vector( 0, -15, 85),
		Ang = Angle( 0, -90, 0 )
	},
	[60] = {
		ID = "Code 3 MX7000 Red",
		Scale = 1.17,
		Pos = Vector( 0, -15, 85),
		Ang = Angle( 0, -90, 0 )
	},
	[61] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = W,
		Color2 = R
	},
	[62] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = W,
		Color2 = B
	},
	[63] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = W,
		Color2 = A
	},
	[64] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = R,
		Color2 = R
	},
	[65] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = B,
		Color2 = B
	},
	[66] = {
		ID = "Whelen Liberty SX Clear",
		Scale = 1.3,
		Pos = Vector( 0, -25, 87 ),
		Ang = Angle( 0, 270, 0),
		Color1 = A,
		Color2 = A
	},

	[67] = {
		ID = "Federal Signal UltraStar",
		Scale = 1.5,
		Pos = Vector( 15, -2, 85.1),
		Ang = Angle( 0, 90, 0 ),
		Phase = PB
	},
	[68] = {
		ID = "Federal Signal UltraStar Red",
		Scale = 1.5,
		Pos = Vector( 15, -2, 85.1),
		Ang = Angle( 0, 90, 0),
		Phase = PB
	},
	[69] = {
		ID = "Federal Signal UltraStar Amber",
		Scale = 1.5,
		Pos = Vector( 15, -2, 85.1),
		Ang = Angle( 0, 90, 0 ),
		Phase = PB
	},
	[70] = {
		ID = "CHP Whelen Liberty SX",
		Scale = 1.1,
		Pos = Vector( 0, -20, 88 ),
		Ang = Angle( 0, 90, 0),
	},
	[71] = {
		ID = "Federal Signal Valor",
		Scale = .98,
		Pos = Vector( 0, -12, 88.5 ),
		Ang = Angle( 0, 90, 0),
		Phase = PCA
	},
	[72] = {
		ID = "Pringle Federal Signal Valor",
		Scale = .98,
		Pos = Vector( 0, -12, 88.5 ),
		Ang = Angle( 0, 90, 0),
	},
	[73] = {
		ID = "NYSP Whelen Liberty",
		Scale = 1.20,
		Pos = Vector( 0, -17.5, 84.1 ),
		Ang = Angle( 0, -90, 0 )
	},
	[74] = {
		ID = "NYSP Whelen Freedom",
		Scale = 1,
		Pos = Vector( 0, -17.5, 84.5 ),
		Ang = Angle( -1.5, -90, 0 )
	},
	[75] = {
		ID = "Offroad LED Roof Lightbar",
		Scale = 1.20,
		Pos = Vector( 0, 8, 85 ),
		Ang = Angle( 0, 0, 0 )
	},
}


EMV.Selections = {
	{
		Name = "Lightbar",
		Options = {
			{ Name = "None" },
			{ Category = "Pringles Liberty SX", Name = "R/B", Auto = {1}, Props = {} },
			{ Category = "Pringles Liberty SX", Name = "Red", Auto = {2}, Props = {} },
			{ Category = "Pringles Liberty SX", Name = "Blue", Auto = {3}, Props = {} },
			{ Category = "Pringles Liberty SX", Name = "Amber", Auto = {4}, Props = {} },
			--
			{ Category = "Pringles Justice", Name = "R/B", Auto = {5}, Props = {} },
			{ Category = "Pringles Justice", Name = "Red", Auto = {6}, Props = {} },
			{ Category = "Pringles Justice", Name = "Blue", Auto = {7}, Props = {} },
			{ Category = "Pringles Justice", Name = "Amber", Auto = {8}, Props = {} },
			--
			{ Category = "SM Liberty SX", Name = "R/B", Auto = {9}, Props = {} },
			{ Category = "SM Liberty SX", Name = "Red", Auto = {10}, Props = {} },
			{ Category = "SM Liberty SX", Name = "Blue", Auto = {11}, Props = {} },
			{ Category = "SM Liberty SX", Name = "Amber", Auto = {12}, Props = {} },
			--
			{ Category = "SM Liberty SX Clear", Name = "R/B", Auto = {13}, Props = {} },
			{ Category = "SM Liberty SX Clear", Name = "R/W", Auto = {61}, Props = {} },
			{ Category = "SM Liberty SX Clear", Name = "B/W", Auto = {62}, Props = {} },
			{ Category = "SM Liberty SX Clear", Name = "A/W", Auto = {63}, Props = {} },
			--
			{ Category = "SM Liberty SX Clear", Name = "Red", Auto = {64}, Props = {} },
			{ Category = "SM Liberty SX Clear", Name = "Blue", Auto = {65}, Props = {} },
			{ Category = "SM Liberty SX Clear", Name = "Amber", Auto = {66}, Props = {} },
			--
			{ Category = "Whelen Legacy", Name = "R/B", Auto = {14}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Red", Auto = {15}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Blue", Auto = {16}, Props = {} },
			{ Category = "Whelen Legacy", Name = "Amber", Auto = {17}, Props = {} },
			--
			{ Category = "Whelen Liberty II", Name = "R/B", Auto = {18}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Red", Auto = {19}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Blue", Auto = {20}, Props = {} },
			{ Category = "Whelen Liberty II", Name = "Amber", Auto = {21}, Props = {} },
			--
			{ Category = "Whelen Liberty SX", Name = "R/B", Auto = {22}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Red", Auto = {23}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Blue", Auto = {24}, Props = {} },
			{ Category = "Whelen Liberty SX", Name = "Amber", Auto = {25}, Props = {} },
			--
			{ Category = "Whelen Ultra Freedom", Name = "R/B", Auto = {26}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Red", Auto = {27}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Blue", Auto = {28}, Props = {} },
			{ Category = "Whelen Ultra Freedom", Name = "Amber", Auto = {29}, Props = {} },
			--
			{ Category = "Whelen Justice", Name = "R/B", Auto = {30}, Props = {} },
			{ Category = "Whelen Justice", Name = "Red", Auto = {31}, Props = {} },
			{ Category = "Whelen Justice", Name = "Blue", Auto = {32}, Props = {} },
			{ Category = "Whelen Justice", Name = "Amber", Auto = {33}, Props = {} },
			--
			{ Category = "Code 3 RX2700", Name = "R/B", Auto = {34}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Red", Auto = {35}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Blue", Auto = {36}, Props = {} },
			{ Category = "Code 3 RX2700", Name = "Amber", Auto = {37}, Props = {} },
			--
			{ Category = "Federal Signal Vision SLR", Name = "NYPD", Auto = {38}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B Clear", Auto = {39}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "R/B", Auto = {40}, Props = {} },
			{ Category = "Federal Signal Vision SLR", Name = "Amber", Auto = {41}, Props = {} },
			--
			{ Category = "Federal Signal Integrity", Name = "R/B", Auto = {42}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Red", Auto = {43}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Blue", Auto = {44}, Props = {} },
			{ Category = "Federal Signal Integrity", Name = "Amber", Auto = {45}, Props = {} },
			--
			{ Category = "Federal Signal Legend", Name = "R/B", Auto = {46}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Red", Auto = {47}, Props = {} },
			{ Category = "Federal Signal Legend", Name = "Blue", Auto = {48}, Props = {} },
			--
			{ Category = "Federal Signal Valor", Name = "R/B", Auto = {49}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Red", Auto = {50}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Blue", Auto = {51}, Props = {} },
			{ Category = "Federal Signal Valor", Name = "Amber", Auto = {52}, Props = {} },
			---
			{ Category = "Whelen Edge", Name = "R/B", Auto = {53}, Props = {} },
			{ Category = "Whelen Edge", Name = "Red", Auto = {54}, Props = {} },
			{ Category = "Whelen Edge", Name = "Blue", Auto = {55}, Props = {} },
			{ Category = "Whelen Edge", Name = "Amber", Auto = {56}, Props = {} },
			--
			{ Category = "Code 3 MX7000", Name = "Red/Blue", Auto = {57}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Blue", Auto = {58}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Amber", Auto = {59}, Props = {} },
			{ Category = "Code 3 MX7000", Name = "Red", Auto = {60}, Props = {} },
			--
			{ Category = "FS UltraStar Single", Name = "Blue", Auto = {67}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Red", Auto = {68}, Props = {} },
			{ Category = "FS UltraStar Single", Name = "Amber", Auto = {69}, Props = {} },
			--
			{ Category = "Other", Name = "CHP Liberty", Auto = {70}, Props = {} },
			{ Category = "Other", Name = "CHP Valor", Auto = {71}, Props = {} },
			{ Category = "Other", Name = "Pringles Edited Valor", Auto = {72}, Props = {} },
			{ Category = "Other", Name = "NYSP Liberty", Auto = {73}, Props = {} },
			{ Category = "Other", Name = "NYSP Freedom", Auto = {74}, Props = {} },
			{ Category = "Other", Name = "Offroad LED Lightbar", Auto = {75}, Props = {} },

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
	Category = "Pringles: Customizable Photon",
	Author = "Officer Pringle",
	Model = "models/smcars/2014_ford_explorer_utility.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/14_explorer.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

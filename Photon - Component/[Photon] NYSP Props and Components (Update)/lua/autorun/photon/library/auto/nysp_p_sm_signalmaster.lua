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

local name = "NYSP FS Signalmaster"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/federal_signal_signalmaster.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
	[3] = "AMBER",
}


COMPONENT.Meta = {
	lightbar= {
		AngleOffset = 90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/fs_valor",
		Scale = 1,
		WMult = 1,
	},
}

COMPONENT.Positions = {		
   -- FRONT ILLUM --
	[1] = { Vector( 20.7, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar", 1 },
	[2] = { Vector( 16, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[3] = { Vector( 11.2, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar", 1 },
	[4] = { Vector( 6.6, 1.08, 0 ),Angle( 0, 0, 0 ), "lightbar" },
	[5] = { Vector( 1.9, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar", 1 },
	[6] = { Vector( -2.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[7] = { Vector( -7.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar", 1 },
	[8] = { Vector( -12.1, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },
	[9] = { Vector( -16.8, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar", 1 },
	[10] = { Vector( -21.4, 1.08, 0 ), Angle( 0, 0, 0 ), "lightbar" },

}

COMPONENT.Sections = {
	["lightbar"] = {
        [1] = { {1, A},{3, A},{5, A},{7, A},{9, A}, },
        [2] = { {2, A},{4, A},{6, A},{8, A},{10, A}, },
        [3] = { {1, A},{2, A},{4, A},{5, A},{7, A},{8, A} ,{10, A} },
        [4] = { {3, A},{2, A},{6, A},{5, A},{9, A},{8, A}, },

        [5] = {{1, A},{2, A},{5, A},{6, A},{9, A},{10,A} },
        [6] = {{2, A},{5, A},{10, A},{8, A} },
        [7] = {{1, A},{9, A},{6, A},{5, A},{7, A},},
        [8] = {{2, A},{8,A} },
        [9] = {{7, A},{3,A} },
        [10] = {{4, A},{9,A} }
    },
    ["traf"] = {
        [1] = { { 1,A}, { 2,A} },
        [2] = { { 2,A}, { 3,A} },
        [3] = { { 3,A}, {4 ,A} },
        [4] = { { 4,A}, {5 ,A} },
        [5] = { { 5,A}, { 6,A} },
        [6] = { { 6,A}, {7 ,A} },
        [7] = { { 7,A}, {8 ,A} },
        [8] = { { 8,A}, { 9,A} },
        [9] = { { 9,A}, { 10,A} },
        
        [10] = { {1, A},{3, A},{5, A},{7, A},{9, A}, },
        [11] = { {2, A},{4, A},{6, A},{8, A},{10, A}, },
        [12] = { {1, A},{2, A},{4, A},{5, A},{7, A},{8, A} ,{10, A} },
        [13] = { {3, A},{2, A},{6, A},{5, A},{9, A},{8, A}, },

	},
	["pull"] = {
		[1] = { {1, A},{3, A},{5, A},{7, A},{9, A}, },
		[2] = { {2, A},{4, A},{6, A},{8, A},{10, A}, },
		
		[3] = { {1, A}, {2, A}, {3, A}, {4,A }, {7,A },{8, A}, {9, A }, {10, A },},
		[4] = { {4, A}, {5, A}, {6,A}, {7, A} }
	},
	["othertraffic"] = {
		[1] = { {5,A}, {6,A}, },
		[2] = { { 5,A}, { 6,A},{ 4,A}, { 7,A}, },
		[3] = { { 5,A}, { 6,A},{ 4,A}, { 7,A},{ 3,A}, { 8,A}, },
		[4] = { { 5,A}, { 6,A},{4 ,A}, { 7,A},{ 3,A}, { 8,A},{ 2,A}, { 9,A}, },
		[5] = { { 5,A}, { 6,A},{ 4,A}, { 7,A},{ 3,A}, { 8,A},{ 2,A}, { 9,A},{ 1,A}, { 10,A}, },
		--
		[6] = { { 4,A}, { 7,A},{ 3,A}, { 8,A},{ 2,A}, { 9,A},{ 1,A}, { 10,A}, },
		[7] = { { 3,A}, { 8,A},{ 2,A}, { 9,A},{ 1,A}, { 10,A}, },
		[8] = { { 2,A}, { 9,A},{ 1,A}, { 10,A}, },
		[9] = { { 1,A}, { 10,A}, },
	}
}

COMPONENT.Patterns = {
	["lightbar"] = {
        ["c1"] = { 1,1,1,2,2,2,2},
        ["c2"] = {3,3,3,3,4,4,4,4,4},
        ["c3"] = {5,6,7,8,9,10}
    },
    ["traf"] = {
        ["cruise"] = {
        1,2,3,4,5,6,7,8,9,
        9,8,7,6,5,4,3,2,1,
        10,10,10,10,11,11,11,12,12,12,13,13,13,
        1,0,1,0,2,0,2,0,3,0,3,0,4,0,4,0,5,0,5,0,6,0,6,0,7,0,7,0,8,0,8,0,9,0,9,
        9,0,9,0,8,0,8,0,7,0,7,0,6,0,6,0,5,0,5,0,4,0,4,0,3,0,3,0,2,0,2,0,1,0,1,0,
        10,10,10,0,10,10,10,0,11,11,11,0,11,11,11,0
        },
		["right"] = {1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9},
		["left"] = {9,9,8,8,7,7,6,6,5,5,4,4,3,3,2,2,1,1}
	},
	["pull"] = {
		["main"] = {1,1,1,2,2,2,2,1,1,1,2,2,2,2,
			3,3,3,3,4,4,4,4,3,3,3,3,4,4,4,4
		}
	},
	["othertraffic"] = {
		["div"] = {1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,7,7,8,8,9,9}
	}
		
}

COMPONENT.TrafficDisconnect = {
	["traf"] = {1,2,3,4,5,6,7,8,9,10},
	["othertraffic"] = {1,2,3,4,5,6,7,8,9,10}
}

COMPONENT.Modes = {
	Primary = {
			M1 = { 
				["lightbar"] = "c1",
			},
			M2 = { 
                ["lightbar"] = "c2",
				
			},
			M3 = { 
                ["lightbar"] = "c3",
	          
			},
			P = {
				["pull"] = "main"
			}
		},
	Auxiliary = {
	        C = { 
	        	["traf"] = "cruise"
	            },
			L = {
                ["traf"] = "left"
                
			},
			R = {
				["traf"] = "right"
			},
			D = {
				["othertraffic"] = "div"
			},
		},
	Illumination = {
		T = {
		},
		L = {
		},
		R = {
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
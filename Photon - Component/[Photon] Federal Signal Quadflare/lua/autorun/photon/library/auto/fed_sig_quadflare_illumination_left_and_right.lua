
AddCSLuaFile()
 
local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
 
local name = "Federal Signal Quadflare Illumination Left"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 1
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 2,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 1.5
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },

        ["off"] = { 0 }
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "off",
        },
        M2 = {
            ["light_main"] = "off",
        },
        M3 = {
            ["light_main"] = "off",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
     Illumination = {
        T = {
        },
        L = {
             {1, CW}, {2,CW}
        },
        R = {
        },
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )
--[[-------------------------------------------------------------------------
                        END COMPONENT
---------------------------------------------------------------------------]]


--[[-------------------------------------------------------------------------
                        START COMPONENT
---------------------------------------------------------------------------]]
AddCSLuaFile()
 
local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
 
local name = "Fedral Signal Quadflare Illumination Right"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 1
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 2,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 1.5
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },

        ["off"] = { 0 }
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "off",
        },
        M2 = {
            ["light_main"] = "off",
        },
        M3 = {
            ["light_main"] = "off",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
     Illumination = {
        T = {
        },
        L = {
        },
        R = {
             {1, CW}, {2,CW}
        },
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )

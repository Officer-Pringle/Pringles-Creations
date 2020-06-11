AddCSLuaFile()

local VehicleName = "NYPD Unmarked 98 Crown Vic"

local EMV = {}

EMV.Siren = 3
EMV.Skin = 1
EMV.Color = Color(63,67,95)
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
	{ 0, 0 }, -- car
	{ 1, 4 }, -- pushbar
	{ 2, 0 }, -- camera
	{ 3, 6 }, -- lightbar
	{ 4, 1 }, -- rainguard
	{ 5, 0 }, -- trim
	{ 6, 2 }, -- grille
	{ 7, 0 }, -- spotlight_l
	{ 8, 0 }, -- spotlight_r
	{ 9, 0 }, -- runners
	{ 10, 0 }, -- extmirrorlights
	{ 11, 0 }, -- mirrorlights
	{ 12, 0 }, -- dashlights
	{ 13, 0 }, -- grillelights
	{ 14, 0 }, -- rwlights
	{ 15, 0 }, -- platelights
	{ 16, 0 }, -- windowbars
	{ 17, 0 }, -- antenna
	{ 18, 0 }, -- wheels
	{ 19, 0 }, -- clamped1
}

EMV.Auto = {
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 7, 22.1, 61.6 ),
		Ang = Angle( 0, 90, 0),
		Color1 = R,
		Color2 = W
	},
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 0, 42, 51),
		Ang = Angle( 180, 270, 0),
		Color1 = W,
		Color2 = R
	},
	{
		ID = "Whelen Ion",
		Scale = 1.,
		Pos = Vector( 11, 120, 33 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PA
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -10, 120, 33 ),
		Ang = Angle( 0, 0, 0),
		Color1 = R,
		Phase = PB
	},
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( 10, -68.8, 51.5 ),
		Ang = Angle( 180, 90, 0)
	},
	{
		ID = "Pringles Viper Dual 2",
		Scale = 1,
		Pos = Vector( -10, -68.8, 51.5 ),
		Ang = Angle( 180, 90, 0),
		Color1 = B,
		Color2 = R,

	},
	{
		ID = "FH3 CVPI Rear Hideaway",
		Scale = 1,
		Pos = Vector( 0, 17.8, -7.5),
		Ang = Angle( 0, 0, 0),
		Color1 = W,
		Color2 = W
	},
	{
		ID = "FH3 CVPI Wig-Wags",
		Scale = .98,
		Pos = Vector( 0, 10, -3 ),
		Ang = Angle( 0, 0, 0)
	},
	{
		ID = "CVPIFH3 FlashTail",
		Scale = 1,
		Pos = Vector( 0, 17.2, -7 ),
		Ang = Angle( 0, 0, 0)
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
	Category = "Emergency Vehicles",
	Author = "Officer Pringle",
	Model = "models/sentry/cvpi_new.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/sentry/cvpi_new.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

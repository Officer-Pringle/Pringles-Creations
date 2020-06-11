AddCSLuaFile()

local VehicleName = "2011 Retired Police Vic"

local EMV = {}

EMV.Siren = 0
EMV.Skin = 0
EMV.Color = Color(0,0,0)

EMV.BodyGroups = {
	{ 0, 0 }, -- 
	{ 1, 1 }, -- [EM] Spot Lights
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
	{ 18, 1 }, -- [EM] Interior Consoles Slot 2
	{ 19, 0 }, -- [EM] Cage
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
	{ 30, 1 }, -- Radio Antennas
	{ 31, 0 }, -- Wheels
	{ 32, 0 }, -- 
	{ 33, 0 }, -- 
	{ 34, 0 }, -- 
}

EMV.Props = {
	[1] = {
		Model = "models/tdmcars/emergency/equipment/pushbar.mdl",
		Scale = 1.2,
		Pos = Vector(0, 121.92, 17.5),
		Ang = Angle( 0, 270, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = .60,
		Pos = Vector(1.3, 11.2, 36),
		Ang = Angle( 0, 180, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	
}

EMV.Auto = {}

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
	Category = "Pringles Citizen Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

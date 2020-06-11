AddCSLuaFile()

local VehicleName = "Unmarked Jeep Cherokee"

local EMV = {}

EMV.Siren = 2
EMV.Skin = 0
EMV.Color = Color(255,255,255)

EMV.BodyGroups = {
	{ 0, 0 }, -- Body
	{ 1, 0 }, -- cockpit
	{ 2, 0 }, -- wheel
	{ 3, 0 }, -- wing
}

EMV.Props = {
	[1] = {
		Model = "models/schmal/laptop_stand.mdl",
		Scale = .65,
		Pos = Vector(9, 21, 38.2),
		Ang = Angle( 0, 130, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	[2] = {
		Model = "models/tdmcars/emergency/equipment/laptop.mdl",
		Scale = 1.2,
		Pos = Vector(2, 13, 53),
		Ang = Angle( 0, 120, 0 ),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},
	--[[ [3] = {
		Model = "models/schmal/motorola_car_radio.mdl",
		Scale = 1,
		Pos = Vector(0, 15, 50),
		Ang = Angle( 0, 180, 270),
		RenderGroup = RENDERGROUP_OPAQUE,
		RenderMode = RENDERMODE_NORMAL
	},]]
}

EMV.Auto = {
	-----------FRONT FOG LIGHTS---------------
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 33, 108, 32.5 ),
		Ang = Angle( -5, -43, 0 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 27.5, 112, 32),
		Ang = Angle( -5, -27, 0 ),
		Color1 = "RED",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -33, 108, 32.2 ),
		Ang = Angle( 5, 45, 0),
		Color1 = "BLUE",
		Phase = "CA"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -29, 111.2, 32 ),
		Ang = Angle( 5, 30.3, 0 ),
		Color1 = "BLUE",
		Phase = "CA"
	},
	---------------------HEADLIGHT FLASHERS---------------
	{
		ID = "Whelen Vertex",
		Scale = 3,
		Pos = Vector( 36.7, 98.9, 46.4 ),
		Ang = Angle( 0, 0, 270 ),
		Phase = "A"
	},
	{
		ID = "Whelen Vertex",
		Scale = 3,
		Pos = Vector( -36, 98.8, 46 ),
		Ang = Angle( 0, 0, 270 ),
		Phase = "B"
	},
	------------FRONT LIGHTBAR------------
	{
		ID = "TDM Front Interior Lightbar",
		Scale = 1.15,
		Pos = Vector( 0, 25, 75 ),
		Ang = Angle( 0, 90, 0 )
	},
	------------SKIRT LIGHTING DRIVER-------
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 38, 18.8 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 31.85, 18.9 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 25.66, 18.98 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "RED",
		Phase = "A"
		
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 19.5, 19.07 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 13.32, 19.15 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, 7.2, 19.25 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.02, 1, 19.34),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.04, -5.2, 19.45 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.04, -11.40, 19.55 ),
		Ang = Angle( 1, 90, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.04, -17.60, 19.75 ),
		Ang = Angle( 1, 90, 9),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.04, -23.80, 19.85 ),
		Ang = Angle( 1, 90, 9 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43, -30, 19.98 ),
		Ang = Angle( 1, 90, 3 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( -43.04, -36.19, 20.08 ),
		Ang = Angle( 1, 86, 0),
		Color1 = "RED",
		Phase = "A"
	},

	-----SKIRT LIGHTING PASSENGER------------
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 38, 18.8 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 31.85, 18.9 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 25.66, 18.98 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "RED",
		Phase = "A"
		
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 19.5, 19.07 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 13.32, 19.15 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, 7.2, 19.25 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.02, 1, 19.34),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.04, -5.2, 19.45 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.04, -11.40, 19.55 ),
		Ang = Angle( -1, 270, 10 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.04, -17.60, 19.75 ),
		Ang = Angle( -1, 270, 9),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.04, -23.80, 19.85 ),
		Ang = Angle( -1, 270, 9 ),
		Color1 = "RED",
		Phase = "A"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43, -30, 19.98 ),
		Ang = Angle( -1, 270, 3 ),
		Color1 = "BLUE",
		Phase = "B"
	},
	{
		ID = "Whelen Ion",
		Scale = 1,
		Pos = Vector( 43.04, -36.19, 20.08 ),
		Ang = Angle( -1, 270, 0),
		Color1 = "RED",
		Phase = "A"
	},
 ---------REAR Lights-------------
 -------------REAR BOTTOM LIGHTS----------
 	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( -35, -111.8, 32 ),
		Ang = Angle( 0, -26, 90 ),
		Color1 = "BLUE",
		Phase = "A"
	},
	{
		ID = "Whelen 700",
		Scale = 1,
		Pos = Vector( 35, -111.8, 32 ),
		Ang = Angle( 0, 26, 90 ),
		Color1 = "RED",
		Phase = "B"
	},
	------------REAR WINDOW-------
	{
		ID = "TDM Rear Interior Lightbar",
		Scale = 1.1,
		Pos = Vector( 0, -86, 81),
		Ang = Angle( 0, 270, 0 )
	},
	{
		ID = "Whelen CenCom Panel",
		Scale = 1.15,
		Pos = Vector( 0, 26.5, 58.4 ),
		Ang = Angle( 0, 0, 65)
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
	Category = "Pringles Unmarked Cars",
	Author = "Officer Pringle {1A-181}",
	Model = "models/tdmcars/jeep_grandche.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/grandche.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = "PHOTON_INHERIT"
}
list.Set( "Vehicles", VehicleName, V )

if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end

--[[-------------------------------------------------------------------------
SUPERMIGHTS 2012 Pursuit Vehicle Standard Lighting
---------------------------------------------------------------------------]]

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
		dc_left_far_bot = {
			AngleOffset = -90,
			W = 11,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_left_far_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
		},
		dc_left_far_top = {
			AngleOffset = -90,
			W = 10,
			H = 8,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_left_far_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_right_far_bot = {
			AngleOffset = -90,
			W = 10.95,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_right_far_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
		},
		dc_right_far_top = {
			AngleOffset = -90,
			W = 10.2,
			H = 8,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_right_far_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--
		--
		dc_mid_left_top = {
			AngleOffset = -90,
			W = 11.5,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_mid_left_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		dc_mid_left_bot = {
			AngleOffset = -90,
			W = 12,
			H = 10.5,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_mid_left_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_mid_left_top = {
			AngleOffset = -90,
			W = 17,
			H = 9.5,
			WMult = 2,
			Sprite = "sprites/emv/14_dc_mid_mid_left_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_mid_left_bot = {
			AngleOffset = -90,
			W = 16,
			H = 10.5,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_mid_left_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_mid_right_top = {
			AngleOffset = -90,
			W = 16.5,
			H = 11,
			WMult = 2,
			Sprite = "sprites/emv/14_dc_mid_mid_right_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_mid_right_bot = {
			AngleOffset = -90,
			W = 16,
			H = 11,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_mid_right_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_right_top = {
			AngleOffset = -90,
			W = 12,
			H = 10,
			WMult = 1.5,
			Sprite = "sprites/emv/14_dc_mid_right_top",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_right_bot = {
			AngleOffset = -90,
			W = 11.6,
			H = 12,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_right_bot",
			Scale = 5,
			SourceOnly = true,
			VisRadius = 5
			
		},
		--[[-------------------------------------------------------------------------
		
		---------------------------------------------------------------------------]]
		dc_headlight_marker = {
			AngleOffset = -90,
			W = 9,
			H = 7,
			WMult = 1,
			Sprite = "sprites/emv/tdm_charger_f_marker",
			Scale = 3,
			SourceOnly = false,
			VisRadius = 5
			
		},
		dc_tail3_brake = {
			AngleOffset = -90,
			W = 12,
			H = 15,
			WMult = 1,
			Sprite = "sprites/emv/tdm_fpis_brake",
			Scale = 3,
			SourceOnly = false,
			VisRadius = 5
			
		},
		--[[-------------------------------------------------------------------------
		TAILLIGHTS  BRAKE BRIGHT
		--------------------------- ------------------------------------------------]]
		dc_left_far_bot1 = {
			AngleOffset = -90,
			W = 11,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_left_far_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
		},
		dc_left_far_top1 = {
			AngleOffset = -90,
			W = 10,
			H = 8,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_left_far_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_right_far_bot1 = {
			AngleOffset = -90,
			W = 10.95,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_right_far_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
		},
		dc_right_far_top1 = {
			AngleOffset = -90,
			W = 10.2,
			H = 8,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_right_far_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--
		--
		dc_mid_left_top1 = {
			AngleOffset = -90,
			W = 11.5,
			H = 9,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_mid_left_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		dc_mid_left_bot1 = {
			AngleOffset = -90,
			W = 12,
			H = 10.5,
			WMult = 5,
			Sprite = "sprites/emv/14_dc_mid_left_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_mid_left_top1 = {
			AngleOffset = -90,
			W = 17,
			H = 9.5,
			WMult = 2,
			Sprite = "sprites/emv/14_dc_mid_mid_left_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_mid_left_bot1 = {
			AngleOffset = -90,
			W = 16,
			H = 10.5,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_mid_left_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_mid_right_top1 = {
			AngleOffset = -90,
			W = 16.5,
			H = 11,
			WMult = 2,
			Sprite = "sprites/emv/14_dc_mid_mid_right_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_mid_right_bot1 = {
			AngleOffset = -90,
			W = 16,
			H = 11,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_mid_right_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--
		dc_mid_right_top1 = {
			AngleOffset = -90,
			W = 12,
			H = 10,
			WMult = 1.5,
			Sprite = "sprites/emv/14_dc_mid_right_top",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
		},
		dc_mid_right_bot1 = {
			AngleOffset = -90,
			W = 11.6,
			H = 12,
			WMult = 1,
			Sprite = "sprites/emv/14_dc_mid_right_bot",
			Scale = 5,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		--[[-------------------------------------------------------------------------
		Title
		---------------------------------------------------------------------------]]
		headlight = {
			AngleOffset = -90,
			W = 7,
			H = 13,
			WMult = 5,
			Sprite = "sprites/emv/tdm_halogen2",
			Scale = 3,
			--SourceOnly = true,
			VisRadius = 5
			
		},
		blinkers_f = {
			AngleOffset = -90,
			W = 5,
			H = 10,
			WMult = 1,
			Sprite = "sprites/emv/tdm_halogen2",
			Scale = 3,
			--SourceOnly = true,
			VisRadius = 5
		},
		blinkers_r = {
			AngleOffset = -90,
			W = 7,
			H = 7,
			WMult = 1,
			Sprite = "sprites/emv/tdm_charger_reverse",
			Scale = 3,
			--SourceOnly = true,
			VisRadius = 5
		},



	}

	PI.Positions = {
		-- TRAILLIGHTS
		-- Left Far
		[1] = { Vector( -33, -112.5, 45.2 ),Angle( 1, 170, 0 ), "dc_left_far_top" },
		[2] = { Vector( -32.75, -112.8, 43.1),Angle( 1, 165, -2 ), "dc_left_far_bot" },
		--Right Far
		[3] = { Vector( 32.8, -112.5, 45.3 ),Angle( -.5, 190, -2 ), "dc_right_far_top" },
		[4] = { Vector( 32.72, -112.8, 43.01),Angle( -1, 195, -2 ), "dc_right_far_bot" },
		-- Left Mid
		[5] = { Vector( -21.9, -114.8, 46.9 ),Angle( 0, 170, 0 ), "dc_mid_left_top" },
		[6] = { Vector( -21, -115.2, 43.35 ),Angle( 1, 170, 0 ), "dc_mid_left_bot" },
		-- Left Mid Mid
		[7] = { Vector( -8.2, -116.2, 47.34 ),Angle( 0.6, 176, 0 ), "dc_mid_mid_left_top" },
		[8] = { Vector( -7.6, -116.65, 43.56 ),Angle( 1, 177, 0 ), "dc_mid_mid_left_bot" },
		-- Right Mid Mid
		[9] = { Vector( 7.55, -116.45, 47.30 ),Angle( -.5, 182.2, 0 ), "dc_mid_mid_right_top" },
		[10] = { Vector( 7.8, -116.8, 43.5 ),Angle( -1, 182, 0 ), "dc_mid_mid_right_bot" },
		-- Right Mid
		[11] = { Vector( 21.15, -115.4, 46.95 ),Angle( -.5, 188, 0 ), "dc_mid_right_top" },
		[12] = { Vector( 20.75, -115.8, 43.6 ),Angle( -1, 188.5, 0 ), "dc_mid_right_bot" },
		----------------
		[13] = { Vector( -29, 111, 32 ),Angle( 0, 25, 0 ), "dc_headlight_marker" },
		[14] = { Vector( 29, 111, 32 ),Angle( 180, -25, 180 ), "dc_headlight_marker" },
		--
		[15] = { Vector( 0, -117.5, 52 ),Angle( -1, 180, 0 ), "dc_tail3_brake" },

		-- Left Far
		[16] = { Vector( -33, -112.5, 45.2 ),Angle( 1, 170, 0 ), "dc_left_far_top" },
		[17] = { Vector( -32.75, -112.8, 43.1),Angle( 1, 165, -2 ), "dc_left_far_bot" },
		--Right Far
		[18] = { Vector( 32.8, -112.5, 45.3 ),Angle( -.5, 190, -2 ), "dc_right_far_top" },
		[19] = { Vector( 32.72, -112.8, 43.01),Angle( -1, 195, -2 ), "dc_right_far_bot" },
		-- Left Mid
		[20] = { Vector( -21.9, -114.8, 46.9 ),Angle( 0, 170, 0 ), "dc_mid_left_top" },
		[21] = { Vector( -21, -115.2, 43.35 ),Angle( 1, 170, 0 ), "dc_mid_left_bot" },
		-- Left Mid Mid
		[22] = { Vector( -8.2, -116.2, 47.34 ),Angle( 0.6, 176, 0 ), "dc_mid_mid_left_top" },
		[23] = { Vector( -7.6, -116.65, 43.56 ),Angle( 1, 177, 0 ), "dc_mid_mid_left_bot" },
		-- Right Mid Mid
		[24] = { Vector( 7.55, -116.45, 47.30 ),Angle( -.5, 182.2, 0 ), "dc_mid_mid_right_top" },
		[25] = { Vector( 7.8, -116.8, 43.5 ),Angle( -1, 182, 0 ), "dc_mid_mid_right_bot" },
		-- Right Mid
		[26] = { Vector( 21.15, -115.4, 46.95 ),Angle( -.5, 188, 0 ), "dc_mid_right_top" },
		[27] = { Vector( 20.75, -115.8, 43.6 ),Angle( -1, 188.5, 0 ), "dc_mid_right_bot" },
		-------------------------------------------------------------------------------------|
		-------------------------------------------------------------------------------------|
		[28] = { Vector( 36.5, 104, 36 ),Angle( -5, 0, 180 ), "headlight" },
		[29] = { Vector( -36.5, 104, 36 ),Angle( 5, 0, 180 ), "headlight" },

		[30] = { Vector( -29, 106, 36 ),Angle( 0, 0, 180 ), "blinkers_f" },
		[31] = { Vector( 29, 106, 36 ),Angle( 0, 0, 180 ), "blinkers_f" },

		[32] = { Vector( -23.5, -115, 44.5 ),Angle( -2, 170, 0 ), "blinkers_r" },
		[33] = { Vector( 23.5, -115, 44.5 ),Angle( -2, 190, 0 ), "blinkers_r" },

		[34] = { Vector( -23.5, -115, 44.5 ),Angle( -2, 170, 0 ), "blinkers_r" },
		[35] = { Vector( 23.5, -115, 44.5 ),Angle( -2, 190, 0 ), "blinkers_r" },

	}

	PI.States = {}

	PI.States.Headlights = {}

	PI.States.Brakes = {
		{15, R}, 
		{16 ,R}, { 17,R}, { 18,R}, { 19,R}, { 20,R}, { 21,R}, { 22,D}, { 23,R}, {24,R}, { 25,R}, { 26,R}, { 27,R},
	}
	PI.States.Blink_Left = {
		{30, A}, {32, A}
	}
	PI.States.Blink_Right = {
		{31, A}, {33, A}

	}
	PI.States.Reverse = {
		{34,SW}, {35, SW}
	}
	PI.States.Running = {
		{1 ,DR}, { 2,DR}, { 3,DR}, { 4,DR}, { 5,DR}, { 6,DR}, { 7,DR}, { 8,DR}, {9,DR}, { 10,DR}, { 11,DR}, { 12,DR},
		{13, A}, {14, A}, {28, CW}, {29, CW}
	}

	--[[-------------------------------------------------------------------------
	THIS CODE BELOW IS EXAMPLE.. ONLY C&P ABOVE
	---------------------------------------------------------------------------]]

	local V = {
		Name = VehicleName,
		Class = "prop_vehicle_jeep",
		Category = "A Test Car.exe",
		Author = "[CRPG] Officer Pringle",
		Model = "models/smcars/2012_dodge_charger_pursuit_2.mdl",
		KeyValues = { vehiclescript = "scripts/vehicles/SuperCars/dodge_charger12.txt" },
		IsEMV = true,
		EMV = EMV,
		HasPhoton = true,
		Photon = PI -- this needs to be changed
	}
	list.Set( "Vehicles", VehicleName, V )

	if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
	if Photon then Photon:OverwriteIndex( VehicleName, PI ) end -- This needs to be adde

--[[-------------------------------------------------------------------------
TDM 2011 Crown Victoria Standard Lighting
---------------------------------------------------------------------------]]
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
			Scale = 3,
		},
		cvpifh3_tail2 = {
			AngleOffset = -90,
			W = 8,
			H = 8,
			Sprite = "sprites/emv/crownvic_tail",
			Scale = 3,
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
			WMult = 2
		},
		out_markers = {
			AngleOffset = -90,
			W = 9,
			H = 9.8,
			Sprite = "sprites/emv/cvpi_corner_marker",
			//Sprite = "sprites/emv/blank",
			Scale = 5,
		},
		out_markers2 = {
			AngleOffset = -90,
			W = 9,
			H = 9.8,
			Sprite = "sprites/emv/cvpi_corner_marker",
			//Sprite = "sprites/emv/blank",
			Scale = 5,
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

	local V = {
	Name = VehicleName,
	Class = "prop_vehicle_jeep",
	Category = "A Test Car.exe",
	Author = "[CRPG] Officer Pringle",
	Model = "models/tdmcars/emergency/for_crownvic_fh3.mdl",
	KeyValues = { vehiclescript = "scripts/vehicles/TDMCars/for_crownvic_fh3.txt" },
	IsEMV = true,
	EMV = EMV,
	HasPhoton = true,
	Photon = PI -- Change this
	}
	list.Set( "Vehicles", VehicleName, V )

	if EMVU then EMVU:OverwriteIndex( VehicleName, EMV ) end
	if Photon then Photon:OverwriteIndex( VehicleName, PI ) end -- Add Thi
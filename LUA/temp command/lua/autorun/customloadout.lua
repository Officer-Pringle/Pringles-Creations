function c_loadout(ply , text , team)

	if text == "/fasloadout" then 

		ply:StripWeapons()
		ply:Give("weapon_physgun")
		ply:Give("weapon_physcannon")
		ply:Give("gmod_tool")
		ply:Give("weapon_empty_hands")
		ply:Give("stungun")
		ply:Give("weapon_r_handcuffs")
		ply:Give("fas2_glock20")
		ply:Give("weapon_stungun")
		ply:Give("fas2_m4a1")
		ply:Give("keys")
		ply:Give("door_ram")
		ply:Give("fine_list")
        ply:Give("weapon_arc_atmcard")
        ply:Give("itemstore_pickup")
	end

	if text == "/flashlight" then 
		Player:Flashlight(true)
	end

	if text == "/m9kloadout" then 

		ply:StripWeapons()
		ply:Give("weapon_physgun")
		ply:Give("weapon_physcannon")
		ply:Give("gmod_tool")
		ply:Give("weapon_empty_hands")
		ply:Give("stungun")
		ply:Give("weapon_r_handcuffs")
		ply:Give("m9k_sig_p229r")
		ply:Give("weapon_stungun")
		ply:Give("m9k_m16a4_acog")
		ply:Give("keys")
		ply:Give("door_ram")
		ply:Give("fine_list")
        ply:Give("weapon_arc_atmcard")
        ply:Give("itemstore_pickup")
        ply:Give("m9k_mossberg590")
	end
	

	if text == "/create" then

		ply:StripWeapons()
		ply:Give("weapon_physgun")
		ply:Give("weapon_empty_hands")
		ply:Give("gmod_tool")
	
	end

	if text == "/spike" then

		ply:Give("vc_spikestrip_wep")
		ply:ChatPrint("Spikestrip Given")
	
	end

	if text == "/radar" then 
		ply:Give("speed_gun")
	end

	if text == "/radaraway" then 
		ply:StripWeapon("speed_gun")
	end
    
    if text == "/finelist" then
    	ply:StripWeapon("weapon_ticketbook") 
    	ply:Give("fine_list")
    end

    if text == "/ticketbook" then
    	ply:StripWeapon("fine_list")
    	ply:Give("weapon_ticketbook")
    end

   if ( string.lower( text ) == "/fcv" ) then
		ply:ConCommand('gm_spawnvehicle "FCV 2011 FH3 Crown Victoria"')
		ply:ChatPrint( "Vehicle Spawned" )
		return( "" )
	end

end

hook.Add("PlayerSay" , "loadoutcommands" , c_loadout)
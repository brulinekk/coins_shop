--------------------------------------------------------------
--                   Snaily Development                     --
--                                                          --
--            Skrypt autorstwa Snaily Development,          --
--             zakazuje się go kopiowania,                  --
--    upubliczniania oraz używania bez pozwolenia autora.   --
--             Kontakt: MlodyR#9982 |  brulinekk#7070       --
--                                                          --
--               © Copyright Snaily Development             --
--------------------------------------------------------------
ESX = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('SnailyDEV:legalna')
AddEventHandler('SnailyDEV:legalna', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 10000
    if SnailyDEV then 
        xPlayer.addInventoryItem('legalna', 1) 
        xPlayer.removeInventoryItem('coins', 10000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Legal Chest ~b~za:~g~ 10000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:crimowa')
AddEventHandler('SnailyDEV:crimowa', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 15000
    if SnailyDEV then 
        xPlayer.addInventoryItem('crimowa', 1) 
        xPlayer.removeInventoryItem('coins', 15000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Illegal Chest~b~ za:~g~ 15000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:weaponchest')
AddEventHandler('SnailyDEV:weaponchest', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 30000
    if SnailyDEV then 
        xPlayer.addInventoryItem('weaponchest', 1) 
        xPlayer.removeInventoryItem('coins', 30000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Weapon Chest~b~ za:~g~ 30000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:carchest')
AddEventHandler('SnailyDEV:carchest', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 50000
    if SnailyDEV then 
        xPlayer.addInventoryItem('carchest', 1) 
        xPlayer.removeInventoryItem('coins', 50000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Car Chest ~b~za:~g~ 50000~y~ Smoczych Monet')
    else
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

--===================================== SKLEPY Illegal =====================================--

CenyBroni = {
    [1] = 50000,
    [2] = 25000,
    [3] = 120000,
    [4] = 120000,
    -- PAKIETY X5 
    [5] = 200000,  -- PAKIETY X5 PISTOL
    [6] = 100000,  -- PAKIETY X5 SNS
    [7] = 500000, -- PAKIETY X5 SNS_MK2
    [8] = 500000, -- PAKIETY X5 VINTAGE
}

RegisterServerEvent('SnailyDEV:pistol')
AddEventHandler('SnailyDEV:pistol', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[1] then
		xPlayer.removeMoney(CenyBroni[1])
		xPlayer.addInventoryWeapon('WEAPON_PISTOL', 1, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś ~g~Pistolet~b~ za:~g~ $'..CenyBroni[1])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[1]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:sns')
AddEventHandler('SnailyDEV:sns', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[2] then
		xPlayer.removeMoney(CenyBroni[2])
		xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL', 1, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś ~g~SNS ~b~za:~g~ $'..CenyBroni[2])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[2]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:sns_mk2')
AddEventHandler('SnailyDEV:sns_mk2', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[3] then
		xPlayer.removeMoney(CenyBroni[3])
		xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 1, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś ~g~SNS WER.2~b~ za:~g~ $'..CenyBroni[3])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[3]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:vintage')
AddEventHandler('SnailyDEV:vintage', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[4] then
		xPlayer.removeMoney(CenyBroni[4])
		xPlayer.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 1, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś ~g~Vintage ~b~za:~g~ $'..CenyBroni[4])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[4]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

--===================================== PAKIETY X5 =====================================--




RegisterServerEvent('SnailyDEV:pistol5')
AddEventHandler('SnailyDEV:pistol5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
    if xPlayer.getMoney() >= CenyBroni[5] then
		xPlayer.removeMoney(CenyBroni[5])
		xPlayer.addInventoryWeapon('WEAPON_PISTOL', 5, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś Pakiet ~g~PISTOLETOW ~b~za:~g~ $'..CenyBroni[5])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[5]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:sns5')
AddEventHandler('SnailyDEV:sns5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[6] then
		xPlayer.removeMoney(CenyBroni[6])
		xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL', 5, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś Pakiet ~g~SNS ~b~za:~g~ $'..CenyBroni[6])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[6]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:sns_mk25')
AddEventHandler('SnailyDEV:sns_mk25', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[7] then
		xPlayer.removeMoney(CenyBroni[7])
		xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 5, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś Pakiet ~g~SNS WER.2~b~ za:~g~ $'..CenyBroni[7])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[7]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:vintage5')
AddEventHandler('SnailyDEV:vintage5', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyBroni[8] then
		xPlayer.removeMoney(CenyBroni[8])
		xPlayer.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 5, 250)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Shop', '~b~Zakupiłeś Pakiet ~g~VINTAGE~b~ za:~g~ $'..CenyBroni[8])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyBroni[8]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

--===================================== PAKIETY X3 =====================================--

RegisterServerEvent('SnailyDEV:legalna3')
AddEventHandler('SnailyDEV:legalna3', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 20000
    if SnailyDEV then 
        xPlayer.addInventoryItem('legalna', 3) 
        xPlayer.removeInventoryItem('coins', 20000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Legal Chest ~b~za:~g~ 20000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:crimowa3')
AddEventHandler('SnailyDEV:crimowa3', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 35000
    if SnailyDEV then 
        xPlayer.addInventoryItem('crimowa', 3) 
        xPlayer.removeInventoryItem('coins', 35000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Illegal Chest ~b~za:~g~ 35000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:weaponchest3')
AddEventHandler('SnailyDEV:weaponchest3', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 80000
    if SnailyDEV then 
        xPlayer.addInventoryItem('weaponchest', 3) 
        xPlayer.removeInventoryItem('coins', 80000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Weapon Chest ~b~za:~g~ 80000~y~ Smoczych Monet')
    else
       TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)

RegisterServerEvent('SnailyDEV:carchest3')
AddEventHandler('SnailyDEV:carchest3', function()
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local SnailyDEV = xPlayer.getInventoryItem('coins').count >= 135000
    if SnailyDEV then 
        xPlayer.addInventoryItem('carchest', 3) 
        xPlayer.removeInventoryItem('coins', 135000)
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Zakupiłeś ~g~Snaily Car Chest ~b~za:~g~ 135000~y~ Smoczych Monet')
    else
        TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~SM Shop', '~b~Nie posiadasz wystarczającej ilości ~y~ Smoczych Monet')
    end
end)


--===================================== DODATKI =====================================--

CenyDod = {
    [1] = 100000,
    [2] = 200000,
    [3] = 150000,
    [4] = 200000, 
}

RegisterServerEvent('SnailyDEV:tlumik')
AddEventHandler('SnailyDEV:tlumik', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyDod[1] then
		xPlayer.removeMoney(CenyDod[1])
        xPlayer.addInventoryItem('suppressor', 1)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Dodatki', '~b~Zakupiłeś ~g~Tłumik ~b~za:~g~ $'..CenyDod[1])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyDod[1]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:magazynek')
AddEventHandler('SnailyDEV:magazynek', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyDod[2] then
		xPlayer.removeMoney(CenyDod[2])
        xPlayer.addInventoryItem('clip_extended', 1)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Dodatki', '~b~Zakupiłeś ~g~Powiększony Magazynek ~b~za:~g~ $'..CenyDod[2])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyDod[2]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:celownik')
AddEventHandler('SnailyDEV:celownik', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyDod[3] then
		xPlayer.removeMoney(CenyDod[3])
        xPlayer.addInventoryItem('scope', 1)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Dodatki', '~b~Zakupiłeś ~g~Celownik ~b~za:~g~ $'..CenyDod[3])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyDod[3]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

RegisterServerEvent('SnailyDEV:uchwyt')
AddEventHandler('SnailyDEV:uchwyt', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyDod[4] then
		xPlayer.removeMoney(CenyDod[4])
        xPlayer.addInventoryItem('grip', 1)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Dodatki', '~b~Zakupiłeś ~g~Uchwyt ~b~za:~g~ $'..CenyDod[4])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyDod[4]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)


--===================================== ZESTAWY =====================================--

CenyZestaw = {
    [1] = 750000,
    [2] = 2500000,
    [3] = 3000000,
    }

RegisterServerEvent('SnailyDEV:smallpack')
AddEventHandler('SnailyDEV:smallpack', function()
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        if xPlayer.getMoney() >= CenyZestaw[1] then
            xPlayer.removeMoney(CenyZestaw[1])
            xPlayer.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 5, 250)
            xPlayer.addInventoryWeapon('WEAPON_PISTOL', 5, 250)
            xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 5, 250)
            xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL', 5, 250)
            xPlayer.addInventoryItem('kawa', 10)
            xPlayer.addInventoryItem('krotkofalowka', 20)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Zestawy', '~b~Zakupiłeś ~g~Small-Pack ~b~za:~g~ $'..CenyZestaw[1])
        else
            TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyZestaw[1]..'$ ~b~udaj się do banku po daną kwote!')
        end
    end)
    


RegisterServerEvent('SnailyDEV:mediumpack')
AddEventHandler('SnailyDEV:mediumpack', function()
        local _source = source
        local xPlayer = ESX.GetPlayerFromId(_source)
        if xPlayer.getMoney() >= CenyZestaw[2] then
            xPlayer.removeMoney(CenyZestaw[2])
            xPlayer.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 20, 250)
            xPlayer.addInventoryWeapon('WEAPON_PISTOL', 20, 250)
            xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 20, 250)
            xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL', 20, 250)
            xPlayer.addInventoryItem('kawa', 20)
            xPlayer.addInventoryItem('krotkofalowka', 80)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Zestawy', '~b~Zakupiłeś ~g~Medium-Pack ~b~za:~g~ $'..CenyZestaw[2])
        else
            TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyZestaw[2]..'$ ~b~udaj się do banku po daną kwote!')
        end
    end)
    

RegisterServerEvent('SnailyDEV:highendpack')
AddEventHandler('SnailyDEV:highendpack', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getMoney() >= CenyZestaw[3] then
		xPlayer.removeMoney(CenyZestaw[3])
        xPlayer.addInventoryWeapon('WEAPON_VINTAGEPISTOL', 30, 250)
        xPlayer.addInventoryWeapon('WEAPON_PISTOL', 30, 250)
        xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL_MK2', 30, 250)
        xPlayer.addInventoryWeapon('WEAPON_SNSPISTOL', 30, 250)
        xPlayer.addInventoryItem('kawa', 100)
        xPlayer.addInventoryItem('krotkofalowka', 100)
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Illegal Zestawy', '~b~Zakupiłeś ~g~HighEnd-Pack ~b~za:~g~ $'..CenyZestaw[3])
	else
		TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'SnailyDEV', '~y~Błąd', '~b~Nie posiadasz danej kwoty ~g~'..CenyZestaw[3]..'$ ~b~udaj się do banku po daną kwote!')
	end
end)

--------------------------------------------------------------
--                   Snaily Development                     --
--                                                          --
--            Skrypt autorstwa Snaily Development,          --
--             zakazuje się go kopiowania,                  --
--    upubliczniania oraz używania bez pozwolenia autora.   --
--             Kontakt: MlodyR#9982 |  brulinekk#7070       --
--                                                          --
--               © Copyright Snaily Development             --
--------------------------------------------------------------
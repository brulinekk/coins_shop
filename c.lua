ESX = nil

CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(5)
        end
end)

RegisterCommand("sklep", function(source)
     OpenmCoinsMenu()
     ESX.ShowAdvancedNotification('~w~Nazwa Twojego Serwera', "~y~Coin Shop", '~g~Na ekranie ukazały ci się wszystkie dostępne sklepy.')
end)

function OpenmCoinsMenu()
    

    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'coinsmenu',
    {
        align    = 'center',
        title    = 'DOSTĘPNE SKLEPY',
        elements = {     			
        
            {label = '[Smocze Monety]', value = 'SMM'},
            {label = '[Organizacyjny]', value = 'ORGG'},
        }
    },
    function(data, menu)
        PlayerData = ESX.GetPlayerData()
    if data.current.value == 'SMM' then
            SM()
        elseif data.current.value == 'ORGG' and PlayerData.hiddenjob and string.find(PlayerData.hiddenjob.name, "org") then
            Orgg()
            menu.close()
        elseif data.current.value == 'ORGG' then	
            ESX.ShowAdvancedNotification('~w~Nazwa Twojego Serwera', "~y~Powiadomienie", '~r~Nie masz dostępu do tej kategori.')	
        end
    end,
    function(data, menu)
      menu.close()
    end)
end


-- SKLEP SM

function SM()


    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'sklepsmocze',
        {
            align    = 'center',
            title    = '[Smocze Monety]',
            elements = {     			
            
                {label = 'x1 Snaily Legal Chest - <span style="color: #ffff00;">10000SM</span>',  value = 'legalna'},
                {label = 'x1 Snaily Illegal Chest - <span style="color: #ffff00;">15000SM</span>',  value = 'crimowa'},
                {label = 'x1 Snaily Weapon Chest - <span style="color: #ffff00;">30000SM</span>',  value = 'weaponchest'},
                {label = 'x1 Snaily Car Chest - <span style="color: #ffff00;">50000SM</span>',  value = 'carchest'},
                {label = '---------- PAKIETY X3 ----------'},
                {label = 'x3 Snaily Legal Chest - <span style="color: #ffff00;">20000SM</span>',  value = 'legalna3'},
                {label = 'x3 Snaily Illegal Chest - <span style="color: #ffff00;">35000SM</span>',  value = 'crimowa3'},
                {label = 'x3 Snaily Weapon Chest - <span style="color: #ffff00;">80000SM</span>',  value = 'weaponchest3'},
                {label = 'x3 Snaily Car Chest - <span style="color: #ffff00;">135000SM</span>',  value = 'carchest3'},
                {label = 'WRÓC',  value = 'wroccoin'},
            
            }
        },
        function(data, menu)
           if data.current.value == 'legalna' then
            TriggerServerEvent('brulinekk:legalna')
           elseif data.current.value == 'crimowa' then
                TriggerServerEvent('brulinekk:crimowa')
            elseif data.current.value == 'weaponchest' then
                TriggerServerEvent('brulinekk:weaponchest')
            elseif data.current.value == 'carchest' then
                TriggerServerEvent('brulinekk:carchest')
            elseif data.current.value == 'legalna3' then -- PAKIETY X3
                TriggerServerEvent('brulinekk:legalna3')
            elseif data.current.value == 'crimowa3' then
                TriggerServerEvent('brulinekk:crimowa3')
            elseif data.current.value == 'weaponchest3' then
                TriggerServerEvent('brulinekk:weaponchest3')
            elseif data.current.value == 'carchest3' then
                TriggerServerEvent('brulinekk:carchest3')
           elseif data.current.value == 'wroccoin' then
            OpenmCoinsMenu()
           end
        end,
        function(data, menu)
            menu.close()
        end)
end

-- SKLEP ORG

function Orgg()
    
    
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'skleoorgs',
        {
            align    = 'center',
            title    = '[Organizacyjny]',
            elements = {     			
                
                {label = '[Bronie]  <span style="color: #ffff00;"></span>',  value = 'bron'},
                {label = '[Dodatki]  <span style="color: #ffff00;"></span>',  value = 'dodatk'},
                {label = '[Zestawy]  <span style="color: #ffff00;"></span>',  value = 'zestaw'},
                {label = 'WRÓĆ', value = 'wroccoin'},
                
            
            }
        },
        function(data, menu)
    if data.current.value == 'bron' then
        Orgbro()
        elseif data.current.value == 'dodatk' then
            Orgdod()
        elseif data.current.value == 'zestaw' then
            Orgzes()
        elseif data.current.value == 'wroccoin' then
            OpenmCoinsMenu()
           end
        end,
        function(data, menu)
            menu.close()
        end)
    end

function Orgzes()
    
    
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'skleoorgs',
        {
            align    = 'center',
            title    = '[Zestawy]',
            elements = {     			
            
                {label = 'Small-Pack -  <span style="color: #ffff00;">[PODGLĄD]</span>',  value = 'przegladajzestawsmall'},
                {label = 'Medium-Pack -  <span style="color: #ffff00;">[PODGLĄD]</span>',  value = 'przegladajzestawmedium'},
                {label = 'HighEnd-Pack -  <span style="color: #ffff00;">[PODGLĄD]</span>',  value = 'przegladajzestawhighendpack'},
                {label = 'WRÓC',  value = 'wroccoin'},
            
            }
        },
        function(data, menu)
        if data.current.value == 'przegladajzestawsmall' then
            brulinekk()
        elseif data.current.value == 'przegladajzestawmedium' then
            brulinekk2()
        elseif data.current.value == 'przegladajzestawhighendpack' then
            brulinekk3()
        elseif data.current.value == 'wroccoin' then
            Orgg()
           end
        end,
        function(data, menu)
            menu.close()
        end)
    end

    function brulinekk()
    
    
        ESX.UI.Menu.CloseAll()
    
        ESX.UI.Menu.Open(
            'default', GetCurrentResourceName(), 'skleoorgs',
            {
                align    = 'center',
                title    = '[Small-Pack]',
                elements = {     			
                
                    {label = 'Pistolet Vintage -  <span style="color: #ffff00;">X5</span>'},
                    {label = 'Pukawka wer.2 -  <span style="color: #ffff00;">X5</span>'},
                    {label = 'Pukawka -  <span style="color: #ffff00;">X5</span>'},
                    {label = 'Pistolet -  <span style="color: #ffff00;">X5</span>'},
                    {label = 'Kawa -  <span style="color: #ffff00;">X10</span>'},
                    {label = 'Krótkofalówka -  <span style="color: #ffff00;">X20</span>'},
                    {label = '------------------------------'},
                    {label = 'Kup -  <span style="color: #ffff00;">750.000$</span>',  value = 'smallpack'},
                    {label = 'WRÓC',  value = 'wroccoin'},
                
                }
            },
            function(data, menu)
            if data.current.value == 'smallpack' then
                TriggerServerEvent('brulinekk:smallpack')
            elseif data.current.value == 'wroccoin' then
                Orgzes()
               end
            end,
            function(data, menu)
                menu.close()
            end)
        end

        function brulinekk2()
    
    
            ESX.UI.Menu.CloseAll()
        
            ESX.UI.Menu.Open(
                'default', GetCurrentResourceName(), 'skleoorgs',
                {
                    align    = 'center',
                    title    = '[Medium-Pack]',
                    elements = {     			
                    
                        {label = 'Pistolet Vintage -  <span style="color: #ffff00;">X20</span>'},
                        {label = 'Pukawka wer.2 -  <span style="color: #ffff00;">X20</span>'},
                        {label = 'Pukawka -  <span style="color: #ffff00;">X20</span>'},
                        {label = 'Pistolet -  <span style="color: #ffff00;">X20</span>'},
                        {label = 'Kawa -  <span style="color: #ffff00;">X20</span>'},
                        {label = 'Krótkofalówka -  <span style="color: #ffff00;">X80</span>'},
                        {label = '------------------------------'},
                        {label = 'Kup -  <span style="color: #ffff00;">2.500.000$</span>',  value = 'mediumpack'},
                        {label = 'WRÓC',  value = 'wroccoin'},
                    
                    }
                },
                function(data, menu)
                    if data.current.value == 'mediumpack' then
                        TriggerServerEvent('brulinekk:mediumpack')
                elseif data.current.value == 'wroccoin' then
                    Orgzes()
                   end
                end,
                function(data, menu)
                    menu.close()
                end)
            end

            function brulinekk3()
    
    
                ESX.UI.Menu.CloseAll()
            
                ESX.UI.Menu.Open(
                    'default', GetCurrentResourceName(), 'skleoorgs',
                    {
                        align    = 'center',
                        title    = '[HighEnd-Pack]',
                        elements = {     			
                        
                            {label = 'Pistolet Vintage -  <span style="color: #ffff00;">X30</span>'},
                            {label = 'Pukawka wer.2 -  <span style="color: #ffff00;">X30</span>'},
                            {label = 'Pukawka -  <span style="color: #ffff00;">X30</span>'},
                            {label = 'Pistolet -  <span style="color: #ffff00;">X30</span>'},
                            {label = 'Kawa -  <span style="color: #ffff00;">X100</span>'},
                            {label = 'Krótkofalówka -  <span style="color: #ffff00;">X100</span>'},
                            {label = '------------------------------'},
                            {label = 'Kup -  <span style="color: #ffff00;">3.500.000$</span>',  value = 'highendpack'},
                            {label = 'WRÓC',  value = 'wroccoin'},
                        
                        }
                    },
                    function(data, menu)
                        if data.current.value == 'highendpack' then
                            TriggerServerEvent('brulinekk:highendpack')
                    elseif data.current.value == 'wroccoin' then
                        Orgzes()
                       end
                    end,
                    function(data, menu)
                        menu.close()
                    end)
                end

function Orgbro()
    
    
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
        'default', GetCurrentResourceName(), 'skleoorg',
        {
            align    = 'center',
            title    = '[Bronie]',
            elements = {     			
            
                {label = 'x1 Pistolet - <span style="color: #ffff00;">50000$</span>',  value = 'pistol'},
                {label = 'x1 Pukawka - <span style="color: #ffff00;">25000$</span>',  value = 'sns'},
                {label = 'x1 Pukawka wer.2 - <span style="color: #ffff00;">120.000$</span>',  value = 'sns_mk2'},
                {label = 'x1 Pistolet Vintage - <span style="color: #ffff00;">120.000$</span>',  value = 'vintage'},
                {label = '---------- PAKIETY ----------'},
                {label = 'x5 Pistolet - <span style="color: #ffff00;">200.000$</span>',  value = 'pistol5'},
                {label = 'x5 Pukawka - <span style="color: #ffff00;">100.000$</span>',  value = 'sns5'},
                {label = 'x5 Pukawka wer.2 - <span style="color: #ffff00;">500.000$</span>',  value = 'sns_mk25'},
                {label = 'x5 Pistolet Vintage - <span style="color: #ffff00;">500.000$</span>',  value = 'vintage5'},
                {label = 'WRÓC',  value = 'wroccoin'},
            
            }
        },
        function(data, menu)
        if data.current.value == 'sns' then
            TriggerServerEvent('brulinekk:sns')
        elseif data.current.value == 'pistol' then
            TriggerServerEvent('brulinekk:pistol')
        elseif data.current.value == 'sns_mk2' then
            TriggerServerEvent('brulinekk:sns_mk2')
        elseif data.current.value == 'vintage' then
            TriggerServerEvent('brulinekk:vintage')
        elseif data.current.value == 'sns5' then
                TriggerServerEvent('brulinekk:sns5')
            elseif data.current.value == 'pistol5' then
                TriggerServerEvent('brulinekk:pistol5')
            elseif data.current.value == 'sns_mk25' then
                TriggerServerEvent('brulinekk:sns_mk25')
            elseif data.current.value == 'vintage5' then
                TriggerServerEvent('brulinekk:vintage5')
        elseif data.current.value == 'wroccoin' then
            Orgg()
           end
        end,
        function(data, menu)
            menu.close()
        end)
    end

    function Orgdod()
    
    
        ESX.UI.Menu.CloseAll()
    
        ESX.UI.Menu.Open(
            'default', GetCurrentResourceName(), 'skleoorg',
            {
                align    = 'center',
                title    = '[Dodatki]',
                elements = {     			
                
                    {label = 'x1 Tłumik - <span style="color: #ffff00;">100.000$</span>',  value = 'tlumik'},
                    {label = 'x1 Powiększony Magazynek - <span style="color: #ffff00;">200.000$</span>',  value = 'magazynek'},
                    {label = 'x1 Celownik - <span style="color: #ffff00;">150.000$</span>',  value = 'celownik'},
                    {label = 'x1 Uchwyt - <span style="color: #ffff00;">200.000$</span>',  value = 'uchwyt'}, 
                    {label = 'WRÓC',  value = 'wroccoin'},
                
                }
            },
            function(data, menu)
            if data.current.value == 'tlumik' then
                TriggerServerEvent('brulinekk:tlumik')
                elseif data.current.value == 'magazynek' then
                    TriggerServerEvent('brulinekk:magazynek')
                elseif data.current.value == 'celownik' then
                    TriggerServerEvent('brulinekk:celownik')
                elseif data.current.value == 'uchwyt' then
                    TriggerServerEvent('brulinekk:uchwyt')
                elseif data.current.value == 'wroccoin' then
                    Orgg()
               end
            end,
            function(data, menu)
                menu.close()
            end)
        end
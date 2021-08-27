ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

cards = { "bulbasaur", "ivysaur", "charmander", "charmeleon", "squirtle", "wartortle", "caterpie", "metapod", "butterfree", "weedle", "kakuna", "beedrill", "pidgey",
"pidgeotto", "pidgeot", "rattata", "raticate", "spearow", "fearow", "ekans", "arbok", "raichu", "sandshrew", "sandslash", "nidoran", "nidorina", "nidoqueen", "nidorino", "nidoking", "clefairy",
"clefable", "vulpix", "ninetales", "jigglypuff", "wigglytuff", "zubat", "golbat", "oddish", "gloom", "vileplume", "paras", "parasect", "venonat", "venomoth", "diglett", "dugtrio", "meowth", "persian", "psyduck", 
"golduck", "mankey", "primeape", "growlithe", "poliwag", "poliwhirl", "poliwrath", "abra", "kadabra", "alakazam", "machop", "machoke", "machamp", "bellsprout", "weepinbell", "victreebel", "tentacool", 
"tentacruel", "geodude", "graveler", "golem", "ponyta", "rapidash", "slowpoke", "slowbro", "magnemite", "magneton", "farfetchd", "doduo", "dodrio", "seel", "dewgong", "grimer", "muk", "shellder", "cloyster", 
"gastly", "haunter", "onix", "drowzee", "hypno", "krabby", "kingler", "voltorb", "electrode", "exeggcute", "exeggutor", "cubone", "marowak", "hitmonlee", "hitmonchan", "lickitung", "koffing", "weezing", 
"rhyhorn", "rhydon", "chansey", "tangela", "kangaskhan", "horsea", "seadra", "goldeen", "seaking", "staryu", "starmie", "mr. mime", "scyther", "jynx", "electabuzz", "magmar", "pinsir", "tauros", "magikarp", 
 "lapras", "ditto", "eevee", "togepi", "vaporeon", "jolteon", "flareon", "porygon", "omanyte", "omastar", "kabuto", "kabutops", "aerodactyl", "snorlax", "dratini", "dragonair"}

total = #cards

rarecards = { "venusaur","charizard", "pikachu", "arcanine", "gengar", "gyarados", "dragonite", "articuno", "zapdos", "moltres", "mewtwo", "mew"}

total2 = #rarecards

--[[ESX.RegisterUsableItem('boosterpack', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
            xPlayer.addInventoryItem(cards[cardToGive])
        end
    end
    xPlayer.removeInventoryItem('boosterpack', 1)
end)]]--

--[[ESX.RegisterUsableItem('boosterpack', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(cards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.removeInventoryItem('boosterPack', 1)
end)
ESX.RegisterUsableItem('rarepack', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#rarecards)
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(rarecards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.removeInventoryItem('RarePack', 1)
end)--]]

ESX.RegisterUsableItem('boosterpack', function(source) 
    math.randomseed(os.time())
    local luck = math.random(0, 500)
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#rarecards)
    
    if luck >= 0 and luck <= 480 then
        xPlayer.addInventoryItem(cards[cardToGive],1)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
        xPlayer.removeInventoryItem('boosterpack', 1)
    end
    if luck >= 481 and luck <= 500 then
        xPlayer.addInventoryItem(rarecards[cardToGive2],1)
        TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a RARE card!'})
        xPlayer.removeInventoryItem('boosterpack', 1)
    end
    --local cardToGive2 = math.random(1,#cards)
    --local cardToGive3 = math.random(1,#cards)
    --TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
    -- xPlayer.addInventoryItem(rarecards[cardToGive], 1)
     --xPlayer.addInventoryItem(cards[cardToGive2], 1)
     --xPlayer.addInventoryItem(cards[cardToGive3], 1)
    --xPlayer.removeInventoryItem('TestPack', 1)
end)

--[[ESX.RegisterUsableItem('boosterbox', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#cards)
    local cardToGive3 = math.random(1,#cards)
    local cardToGive4 = math.random(1,#cards)
    local cardToGive5 = math.random(1,#cards)
    local cardToGive6 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
     xPlayer.addInventoryItem(cards[cardToGive], 1)
     xPlayer.addInventoryItem(cards[cardToGive2], 1)
     xPlayer.addInventoryItem(cards[cardToGive3], 1)
     xPlayer.addInventoryItem(cards[cardToGive4], 1)
     xPlayer.addInventoryItem(cards[cardToGive5], 1)
     xPlayer.addInventoryItem(cards[cardToGive6], 1)
    xPlayer.removeInventoryItem('boosterbox', 1)
end)
ESX.RegisterUsableItem('boostercrate', function(source) 
    local source = tonumber(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local cardToGive = math.random(1,#cards)
    local cardToGive2 = math.random(1,#cards)
    local cardToGive3 = math.random(1,#cards)
    local cardToGive4 = math.random(1,#cards)
    local cardToGive5 = math.random(1,#cards)
    local cardToGive6 = math.random(1,#cards)
    local cardToGive7 = math.random(1,#cards)
    local cardToGive8 = math.random(1,#cards)
    local cardToGive9 = math.random(1,#cards)
    local cardToGive10 = math.random(1,#cards)
    local cardToGive11 = math.random(1,#cards)
    local cardToGive12 = math.random(1,#cards)
    TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'You got a card!'})
    xPlayer.addInventoryItem(cards[cardToGive], 1)
    xPlayer.addInventoryItem(cards[cardToGive2], 1)
    xPlayer.addInventoryItem(cards[cardToGive3], 1)
    xPlayer.addInventoryItem(cards[cardToGive4], 1)
    xPlayer.addInventoryItem(cards[cardToGive5], 1)
    xPlayer.addInventoryItem(cards[cardToGive6], 1)
    xPlayer.addInventoryItem(cards[cardToGive7], 1)
     xPlayer.addInventoryItem(cards[cardToGive8], 1)
     xPlayer.addInventoryItem(cards[cardToGive9], 1)
     xPlayer.addInventoryItem(cards[cardToGive10], 1)
     xPlayer.addInventoryItem(cards[cardToGive11], 1)
     xPlayer.addInventoryItem(cards[cardToGive12], 1)
    xPlayer.removeInventoryItem('boostercrate', 1)
end)--]]

--[[ ITEM TRIGGERS ]] --

ESX.RegisterUsableItem('abra', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('abra:Show', source)
end)

ESX.RegisterUsableItem('aerodactyl', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('aerodactyl:Show', source)
end)

ESX.RegisterUsableItem('alakazam', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('alakazam:Show', source)
end)

ESX.RegisterUsableItem('arbok', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('arbok:Show', source)
end)

ESX.RegisterUsableItem('arcanine', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('arcanine:Show', source)
end)

ESX.RegisterUsableItem('articuno', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('articuno:Show', source)
end)

ESX.RegisterUsableItem('beedrill', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('beedrill:Show', source)
end)

ESX.RegisterUsableItem('blastoise', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('blastoise:Show', source)
end)

ESX.RegisterUsableItem('butterfree', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('butterfree:Show', source)
end)

ESX.RegisterUsableItem('caterpie', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('caterpie:Show', source)
end)

ESX.RegisterUsableItem('chansey', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('chansey:Show', source)
end)

ESX.RegisterUsableItem('charmander', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('charmander:Show', source)
end)

ESX.RegisterUsableItem('clefable', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('clefable:Show', source)
end)

ESX.RegisterUsableItem('clefairy', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('clefairy:Show', source)
end)

ESX.RegisterUsableItem('cloyster', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('cloyster:Show', source)
end)

ESX.RegisterUsableItem('cubone', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('cubone:Show', source)
end)

ESX.RegisterUsableItem('dewgong', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('dewgong:Show', source)
end)

ESX.RegisterUsableItem('ditto', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('ditto:Show', source)
end)

ESX.RegisterUsableItem('dodrio', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('dodrio:Show', source)
end)

ESX.RegisterUsableItem('doduo', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('doduo:Show', source)
end)

ESX.RegisterUsableItem('dragonair', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('dragonair:Show', source)
end)

ESX.RegisterUsableItem('dragonite', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('dragonite:Show', source)
end)

ESX.RegisterUsableItem('dratini', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('dratini:Show', source)
end)

ESX.RegisterUsableItem('drowzee', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('drowzee:Show', source)
end)

ESX.RegisterUsableItem('eevee', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('eevee:Show', source)
end)

ESX.RegisterUsableItem('ekans', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('ekans:Show', source)
end)

ESX.RegisterUsableItem('electabuzz', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('electabuzz:Show', source)
end)

ESX.RegisterUsableItem('electrode', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('electrode:Show', source)
end)

ESX.RegisterUsableItem('exeggcute', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('exeggcute:Show', source)
end)

ESX.RegisterUsableItem('exeggutor', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('exeggutor:Show', source)
end)

ESX.RegisterUsableItem('fearow', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('fearow:Show', source)
end)

ESX.RegisterUsableItem('flareon', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('flareon:Show', source)
end)

ESX.RegisterUsableItem('gastly', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('gastly:Show', source)
end)

ESX.RegisterUsableItem('gengar', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('gengar:Show', source)
end)

ESX.RegisterUsableItem('geodude', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('geodude:Show', source)
end)

ESX.RegisterUsableItem('gloom', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('gloom:Show', source)
end)

ESX.RegisterUsableItem('golbat', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('golbat:Show', source)
end)

ESX.RegisterUsableItem('golduck', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('golduck:Show', source)
end)

ESX.RegisterUsableItem('golem', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('golem:Show', source)
end)

ESX.RegisterUsableItem('graveler', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('graveler:Show', source)
end)

ESX.RegisterUsableItem('grimer', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('grimer:Show', source)
end)

ESX.RegisterUsableItem('growlithe', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('growlithe:Show', source)
end)

ESX.RegisterUsableItem('gyarados', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('gyarados:Show', source)
end)

ESX.RegisterUsableItem('haunter', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('haunter:Show', source)
end)

ESX.RegisterUsableItem('hitmonlee', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('hitmonlee:Show', source)
end)

ESX.RegisterUsableItem('horsea', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('horsea:Show', source)
end)

ESX.RegisterUsableItem('hunter', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('hunter:Show', source)
end)

ESX.RegisterUsableItem('hypno', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('hypno:Show', source)
end)

ESX.RegisterUsableItem('ivysaur', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('ivysaur:Show', source)
end)

ESX.RegisterUsableItem('jigglypuff', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('jigglypuff:Show', source)
end)

ESX.RegisterUsableItem('jolteon', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('jolteon:Show', source)
end)

ESX.RegisterUsableItem('kabuto', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kabuto:Show', source)
end)

ESX.RegisterUsableItem('kabutops', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kabutops:Show', source)
end)

ESX.RegisterUsableItem('kadabra', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kadabra:Show', source)
end)

ESX.RegisterUsableItem('kaknua', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kaknua:Show', source)
end)

ESX.RegisterUsableItem('kangaskhan', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kangaskhan:Show', source)
end)

ESX.RegisterUsableItem('kingler', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('kingler:Show', source)
end)

ESX.RegisterUsableItem('koffing', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('koffing:Show', source)
end)

ESX.RegisterUsableItem('lapras', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('lapras:Show', source)
end)

ESX.RegisterUsableItem('lickitung', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('lickitung:Show', source)
end)

ESX.RegisterUsableItem('machamp', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('machamp:Show', source)
end)

ESX.RegisterUsableItem('machoke', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('machoke:Show', source)
end)

ESX.RegisterUsableItem('machop', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('machop:Show', source)
end)

ESX.RegisterUsableItem('magikarp', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('magikarp:Show', source)
end)

ESX.RegisterUsableItem('magmar', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('magmar:Show', source)
end)

ESX.RegisterUsableItem('magneton', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('magneton:Show', source)
end)

ESX.RegisterUsableItem('mankey', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('mankey:Show', source)
end)

ESX.RegisterUsableItem('marowak', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('marowak:Show', source)
end)

ESX.RegisterUsableItem('meowth', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('meowth:Show', source)
end)

ESX.RegisterUsableItem('metapod', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('metapod:Show', source)
end)

ESX.RegisterUsableItem('mew', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('mew:Show', source)
end)

ESX.RegisterUsableItem('moltres', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('moltres:Show', source)
end)

ESX.RegisterUsableItem('mr_mime', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('mr_mime:Show', source)
end)

ESX.RegisterUsableItem('muk', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('muk:Show', source)
end)

ESX.RegisterUsableItem('nidoking', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('nidoking:Show', source)
end)

ESX.RegisterUsableItem('nidoqueen', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('nidoqueen:Show', source)
end)

ESX.RegisterUsableItem('nidoran', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('nidoran:Show', source)
end)

ESX.RegisterUsableItem('nidorina', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('nidorina:Show', source)
end)

ESX.RegisterUsableItem('ninetails', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('ninetails:Show', source)
end)

ESX.RegisterUsableItem('oddish', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('oddish:Show', source)
end)

ESX.RegisterUsableItem('omanyte', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('omanyte:Show', source)
end)

ESX.RegisterUsableItem('omastar', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('omastar:Show', source)
end)

ESX.RegisterUsableItem('onix', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('onix:Show', source)
end)

ESX.RegisterUsableItem('paras', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('paras:Show', source)
end)

ESX.RegisterUsableItem('parasect', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('parasect:Show', source)
end)

ESX.RegisterUsableItem('pidgeotto', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('pidgeotto:Show', source)
end)

ESX.RegisterUsableItem('pidgey', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('pidgey:Show', source)
end)

ESX.RegisterUsableItem('pikachu', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('pikachu:Show', source)
end)

ESX.RegisterUsableItem('pinsir', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('pinsir:Show', source)
end)

ESX.RegisterUsableItem('poliwag', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('poliwag:Show', source)
end)

ESX.RegisterUsableItem('poliwhirl', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('poliwhirl:Show', source)
end)

ESX.RegisterUsableItem('poliwrath', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('poliwrath:Show', source)
end)

ESX.RegisterUsableItem('porygon', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('porygon:Show', source)
end)

ESX.RegisterUsableItem('primeape', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('primeape:Show', source)
end)

ESX.RegisterUsableItem('psyduck', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('psyduck:Show', source)
end)

ESX.RegisterUsableItem('raichu', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('raichu:Show', source)
end)

ESX.RegisterUsableItem('rapidash', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('rapidash:Show', source)
end)

ESX.RegisterUsableItem('raticate', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('raticate:Show', source)
end)

ESX.RegisterUsableItem('rhydon', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('rhydon:Show', source)
end)

ESX.RegisterUsableItem('rhyhorn', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('rhyhorn:Show', source)
end)

ESX.RegisterUsableItem('sandshrew', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('sandshrew:Show', source)
end)

ESX.RegisterUsableItem('sandslash', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('sandslash:Show', source)
end)

ESX.RegisterUsableItem('scyther', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('scyther:Show', source)
end)

ESX.RegisterUsableItem('seadra', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('seadra:Show', source)
end)

ESX.RegisterUsableItem('seaking', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('seaking:Show', source)
end)

ESX.RegisterUsableItem('shellder', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('shellder:Show', source)
end)

ESX.RegisterUsableItem('slowbro', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('slowbro:Show', source)
end)

ESX.RegisterUsableItem('slowpoke', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('slowpoke:Show', source)
end)

ESX.RegisterUsableItem('snorlax', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('snorlax:Show', source)
end)

ESX.RegisterUsableItem('spearow', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('spearow:Show', source)
end)

ESX.RegisterUsableItem('squirtle', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('squirtle:Show', source)
end)

ESX.RegisterUsableItem('staryu', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('staryu:Show', source)
end)

ESX.RegisterUsableItem('tangela', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('tangela:Show', source)
end)

ESX.RegisterUsableItem('tauros', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('tauros:Show', source)
end)

ESX.RegisterUsableItem('tentacool', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('tentacool:Show', source)
end)

ESX.RegisterUsableItem('tentacruel', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('tentacruel:Show', source)
end)

ESX.RegisterUsableItem('togepi', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('togepi:Show', source)
end)

ESX.RegisterUsableItem('vaporeon', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('vaporeon:Show', source)
end)

ESX.RegisterUsableItem('venomoth', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('venomoth:Show', source)
end)

ESX.RegisterUsableItem('venonat', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('venonat:Show', source)
end)

ESX.RegisterUsableItem('venusaur', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('venusaur:Show', source)
end)

ESX.RegisterUsableItem('victreebel', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('victreebel:Show', source)
end)

ESX.RegisterUsableItem('vileplume', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('vileplume:Show', source)
end)

ESX.RegisterUsableItem('vulpix', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('vulpix:Show', source)
end)

ESX.RegisterUsableItem('wartortle', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('wartortle:Show', source)
end)

ESX.RegisterUsableItem('weedle', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('weedle:Show', source)
end)

ESX.RegisterUsableItem('weepinbell', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('weepinbell:Show', source)
end)

ESX.RegisterUsableItem('weezing', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('weezing:Show', source)
end)

ESX.RegisterUsableItem('wigglytuff', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('wigglytuff:Show', source)
end)

ESX.RegisterUsableItem('zapdos', function(source) 
    local xPlayer = ESX.GetPlayerFromId(source)
TriggerClientEvent('zapdos:Show', source)
end)



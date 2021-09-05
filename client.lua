local Animation = false

--MODIFIED PART --------------------------------------------------------------------------------------
RegisterNetEvent('pcards:Show')
AddEventHandler('pcards:Show', function(card)
    local display = true
    local startTime = GetGameTimer()
    local delay = 120000
	
	print(card)

   TriggerEvent('pcards:display', true, card)
if Animation then
    TriggerEvent('anima', true)
end
    while display do
      Citizen.Wait(1)
      ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        display = false
        TriggerEvent('pcards:display', false, card)
      end
      if (IsControlJustPressed(1, 51)) then  -- E
        display = false
        TriggerEvent('pcards:display', false, card)
        StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      end
    end
  end)
  
 RegisterNetEvent('pcards:display')
AddEventHandler('pcards:display', function(value, card)
  SendNUIMessage({
    type = card,
    display = value
  })
end)
  
  
RegisterNetEvent("anima")
AddEventHandler("anima", function(inputText) 
RequestAnimDict("amb@code_human_wander_clipboard@male@base")
TaskPlayAnim(PlayerPedId(),"amb@code_human_wander_clipboard@male@base", "static", 1.0,-1.0, 120000, 1, 1, true, true, true)
end)


function ShowInfo(text, state)
  SetTextComponentFormat("STRING")
  AddTextComponentString(text)
  DisplayHelpTextFromStringLabel(0, state, 0, -1)
end
--END MODIFIED PART --------------------------------------------------------------------------------------


-- RegisterNetEvent('abra:Show')
-- AddEventHandler('abra:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('abra:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end
    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('abra:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then  -- E
        -- display = false
        -- TriggerEvent('abra:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('abra:display')
-- AddEventHandler('abra:display', function(value)
  -- SendNUIMessage({
    -- type = "abra",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('aerodactyl:Show')
-- AddEventHandler('aerodactyl:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('aerodactyl:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('aerodactyl:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('aerodactyl:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('aerodactyl:display')
-- AddEventHandler('aerodactyl:display', function(value)
  -- SendNUIMessage({
    -- type = "aerodactyl",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('alakazam:Show')
-- AddEventHandler('alakazam:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('alakazam:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('alakazam:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('alakazam:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('alakazam:display')
-- AddEventHandler('alakazam:display', function(value)
  -- SendNUIMessage({
    -- type = "alakazam",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('arbok:Show')
-- AddEventHandler('arbok:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('arbok:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('arbok:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('arbok:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('arbok:display')
-- AddEventHandler('arbok:display', function(value)
  -- SendNUIMessage({
    -- type = "arbok",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('arcanine:Show')
-- AddEventHandler('arcanine:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('arcanine:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('arcanine:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('arcanine:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('arcanine:display')
-- AddEventHandler('arcanine:display', function(value)
  -- SendNUIMessage({
    -- type = "arcanine",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('articuno:Show')
-- AddEventHandler('articuno:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('articuno:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('articuno:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('articuno:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('articuno:display')
-- AddEventHandler('articuno:display', function(value)
  -- SendNUIMessage({
    -- type = "articuno",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('beedrill:Show')
-- AddEventHandler('beedrill:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('beedrill:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('beedrill:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('beedrill:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('beedrill:display')
-- AddEventHandler('beedrill:display', function(value)
  -- SendNUIMessage({
    -- type = "beedrill",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('bellsprout:Show')
-- AddEventHandler('bellsprout:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('bellsprout:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('bellsprout:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('bellsprout:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('bellsprout:display')
-- AddEventHandler('bellsprout:display', function(value)
  -- SendNUIMessage({
    -- type = "bellsprout",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('butterfree:Show')
-- AddEventHandler('butterfree:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('butterfree:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('butterfree:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('butterfree:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('butterfree:display')
-- AddEventHandler('butterfree:display', function(value)
  -- SendNUIMessage({
    -- type = "butterfree",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('caterpie:Show')
-- AddEventHandler('caterpie:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('caterpie:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('caterpie:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('caterpie:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('caterpie:display')
-- AddEventHandler('caterpie:display', function(value)
  -- SendNUIMessage({
    -- type = "caterpie",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('chansey:Show')
-- AddEventHandler('chansey:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('chansey:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('chansey:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('chansey:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('chansey:display')
-- AddEventHandler('chansey:display', function(value)
  -- SendNUIMessage({
    -- type = "chansey",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('charizard:Show')
-- AddEventHandler('charizard:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('charizard:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('charizard:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('charizard:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('charizard:display')
-- AddEventHandler('charizard:display', function(value)
  -- SendNUIMessage({
    -- type = "charizard",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('charmander:Show')
-- AddEventHandler('charmander:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('charmander:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('charmander:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('charmander:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('charmander:display')
-- AddEventHandler('charmander:display', function(value)
  -- SendNUIMessage({
    -- type = "charmander",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('charmeleon:Show')
-- AddEventHandler('charmeleon:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('charmeleon:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('charmeleon:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('charmeleon:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('charmeleon:display')
-- AddEventHandler('charmeleon:display', function(value)
  -- SendNUIMessage({
    -- type = "charmeleon",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('clefable:Show')
-- AddEventHandler('clefable:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('clefable:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('clefable:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('clefable:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('clefable:display')
-- AddEventHandler('clefable:display', function(value)
  -- SendNUIMessage({
    -- type = "clefable",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('clefairy:Show')
-- AddEventHandler('clefairy:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('clefairy:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('clefairy:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('clefairy:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('clefairy:display')
-- AddEventHandler('clefairy:display', function(value)
  -- SendNUIMessage({
    -- type = "clefairy",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('cloyster:Show')
-- AddEventHandler('cloyster:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('cloyster:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('cloyster:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('cloyster:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('cloyster:display')
-- AddEventHandler('cloyster:display', function(value)
  -- SendNUIMessage({
    -- type = "cloyster",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('cubone:Show')
-- AddEventHandler('cubone:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('cubone:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('cubone:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('cubone:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('cubone:display')
-- AddEventHandler('cubone:display', function(value)
  -- SendNUIMessage({
    -- type = "cubone",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('dewgong:Show')
-- AddEventHandler('dewgong:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('dewgong:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('dewgong:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('dewgong:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('dewgong:display')
-- AddEventHandler('dewgong:display', function(value)
  -- SendNUIMessage({
    -- type = "dewgong",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('diglett:Show')
-- AddEventHandler('diglett:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('diglett:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('diglett:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('diglett:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('diglett:display')
-- AddEventHandler('diglett:display', function(value)
  -- SendNUIMessage({
    -- type = "diglett",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('ditto:Show')
-- AddEventHandler('ditto:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('ditto:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('ditto:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('ditto:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('ditto:display')
-- AddEventHandler('ditto:display', function(value)
  -- SendNUIMessage({
    -- type = "ditto",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('dodrio:Show')
-- AddEventHandler('dodrio:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('dodrio:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('dodrio:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('dodrio:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('dodrio:display')
-- AddEventHandler('dodrio:display', function(value)
  -- SendNUIMessage({
    -- type = "dodrio",
    -- display = value
  -- })
-- end)

-- RegisterNetEvent('doduo:Show')
-- AddEventHandler('doduo:Show', function()
    -- local display = true
    -- local startTime = GetGameTimer()
    -- local delay = 120000

    -- TriggerEvent('doduo:display', true)
-- if Animation then
    -- TriggerEvent('anima', true)
-- end

    -- while display do
      -- Citizen.Wait(1)
      -- ShowInfo('Press ~INPUT_CONTEXT~ to put card away.', 0)
      -- if (GetTimeDifference(GetGameTimer(), startTime) > delay) then
        -- display = false
        -- TriggerEvent('doduo:display', false)
      -- end
      -- if (IsControlJustPressed(1, 51)) then
        -- display = false
        -- TriggerEvent('doduo:display', false)
        -- StopAnimTask(PlayerPedId(), 'amb@code_human_wander_clipboard@male@base', 'static', 1.0)
      -- end
    -- end
  -- end)


-- RegisterNetEvent('doduo:display')
-- AddEventHandler('doduo:display', function(value)
  -- SendNUIMessage({
    -- type = "doduo",
    -- display = value
  -- })
-- end)

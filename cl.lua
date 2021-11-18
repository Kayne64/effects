-- Variables
local player = GetPlayerPed(-1)
local player = PlayerPedId()

-- Functions
function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- Commands
RegisterCommand("drunk", function(source, args)
    alert("~g~You just drank some booze")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRINKING", 0, 1) 
    SetPedMotionBlur(player, true)
    AnimpostfxPlay ("DrugsMichaelAliensFight", 10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)

    --Waiting
    Citizen.Wait(100000)

    --Resets back to Normal
        SetPedIsDrunk(GetPlayerPed(-1), false)		
         SetPedMotionBlur(playerPed, false)
        ResetPedMovementClipset(GetPlayerPed(-1))
        AnimpostfxStopAll()
         ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)

RegisterCommand("weed", function(source, args)
    alert("~g~You just smoked some weed")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0

    --- Waiting
Citizen.Wait(100000)
    -- Resets Back to Normal
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
   ResetPedMovementClipset(GetPlayerPed(-1))
   AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)

RegisterCommand("lsd", function(source, args)
        alert("~g~You just took some LSD")
        TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRUG_DEALER", 0, 1)
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
        ShakeGameplayCam("DRUNK_SHAKE", 1.0
    
        --- Waiting
    Citizen.Wait(100000)
        -- Resets Back to Normal
        SetPedIsDrunk(GetPlayerPed(-1), false)		
        SetPedMotionBlur(playerPed, false)
       ResetPedMovementClipset(GetPlayerPed(-1))
       AnimpostfxStopAll()
        ShakeGameplayCam("DRUNK_SHAKE", 0.0)    
end)

RegisterCommand("cocaine", function(source, args)
    alert("~g~You just took some Cocaine")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRUG_DEALER", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0

    --- Waiting
Citizen.Wait(100000)
    -- Resets Back to Normal
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
   ResetPedMovementClipset(GetPlayerPed(-1))
   AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)    
end)

RegisterCommand("meth", function(source, args)
    alert("~g~You just took some meth")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRUG_DEALER", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0

    --- Waiting
Citizen.Wait(100000)
    -- Resets Back to Normal
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
   ResetPedMovementClipset(GetPlayerPed(-1))
   AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)    
end)

-- If player is dead, Reset all.
IsPlayerDead(GetPlayerPed(-1), true) then 
    SetPedIsDrunk(GetPlayerPed(-1), false)		
     SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
     ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)
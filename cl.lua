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
    SetRunSprintMultiplierForPlayer(player, 1.20)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)

    --Waiting
    Citizen.Wait(100000)

    --Resets back to Normal
    IsPlayerDead(GetPlayerPed(-1), true) then 
        SetPedIsDrunk(GetPlayerPed(-1), false)		
         SetPedMotionBlur(playerPed, false)
        ResetPedMovementClipset(GetPlayerPed(-1))
        AnimpostfxStopAll()
         ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)

RegisterCommand("weed", function(source, args)

end)


-- If player is dead, Reset all.
IsPlayerDead(GetPlayerPed(-1), true) then 
    SetPedIsDrunk(GetPlayerPed(-1), false)		
     SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
     ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)
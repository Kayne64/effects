-- Cocaine Command
RegisterCommand("cocaine", function(source, args)
    alert("~g~You just took some Cocaine")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRUG_DEALER", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0  
end)

RegisterCommand("resetcocaine", function(source, args)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
   ResetPedMovementClipset(GetPlayerPed(-1))
   AnimpostfxStopAll()
   SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", false)
    ShakeGameplayCam("DRUNK_SHAKE", 0.0) 
end)
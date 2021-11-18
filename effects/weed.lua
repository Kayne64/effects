-- Weed Command
RegisterCommand("weed", function(source, args)
    alert("~g~You just smoked some weed")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight",10000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK", true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0
end)

RegisterCommand("resetweed", function(source, args)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
   ResetPedMovementClipset(GetPlayerPed(-1))
   AnimpostfxStopAll()
   SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", false)
    ShakeGameplayCam("DRUNK_SHAKE", 0.0) 
end)
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
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@SLOW", true)
    SetRunSprintMultiplierForPlayer(player, 1.20)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
    Citizen.Wait(1000)
end)

RegisterCommand("weed", function(source, args)
    alert("~g~You just smoked some weed.")
TaskStartScenarioInPlace(player, "WORLD_HUMAN_SMOKING_POT", 0, 1) 
    SetPedMotionBlur(player, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@SLOW", true)
    SetRunSprintMultiplierForPlayer(player, 1.20)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
    Citizen.Wait(1000)
end)
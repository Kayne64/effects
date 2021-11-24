--Variables
local player = PlayerPedId()
local player = GetPlayerPed(-1)

--Functions
function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end 

function notify(msg)
    SetDescription("STRING")
    AddTextComponentString(msg)
    DrawNotification(true, false)
end

-- If player is dead//died, Reset all Effects
IsPedDeadOrDying(player, true)
SetPedIsDrunk(player, false)
SetPedMotionBlur(player, false)
ResetPedMovementClipset(player)
AnimpostfxStopAll()
ShakeGameplayCam(player, 0)
end)

--Requesting Animation Set
RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@MODERATEDRUNK") do
    Wait(0)
end

-- LSD Command
RegisterCommand("lsd", function(source, args)
    alert("~g~You just took some LSD")
    TaskStartScenarioInPlace(player, "WORLD_HUMAN_DRUG_DEALER", 0, 1)
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight", 1000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player,"MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
    ShakeGameplayCam("VIBRATE_SHAKE", 1.5)
end)

RegisterCommand("resetlsd", function(source, args)
    alert("~g~Your LSD has worn off")
    ClearPedTasks(player)
    SetPedMotionBlur(player, false)
    AnimpostfxStopAll()
    SetPedIsDrunk(player, false)
    ResetPedMovementClipset(player, 5.0)
    RemoveAnimSet("MOVE_M@DRUNK@MODERATEDRUNK")
    StopGameplayCamShaking()
end)

-- Weed Command

-- Cocaine Command

-- Meth Command

-- Drunk Command 

-- Ecstasy Command


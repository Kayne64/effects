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


--Requesting Animation Sets
RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@MODERATEDRUNK") do
    Wait(0)
end

RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do 
    Wait(0)
end 

RequestAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@SLIGHTLYDRUNK") do
    Wait(0)
end

RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP")
while not HasAnimSetLoaded( "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP") do
    Wait(0)
end


    -- LSD Command
RegisterCommand("lsd", function(source, args)
    alert("~g~You just took some LSD")
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsTrevorClownsFightIn", 1000001, true)
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player,"MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
    ShakeGameplayCam("VIBRATE_SHAKE", 10)
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
RegisterCommand("weed", function(source, args)
    alert("~b~You just smoked some Weed")
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFightIn")
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
    ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 5.0)
end)

RegisterCommand("resetweed", function(source, args)
        alert("~b~Your Weed has worn off")
        SetPedMotionBlur(player,true)
        AnimpostfxStopAll()
        ResetPedMovementClipset(player, 5.0)
        SetPedIsDrunk(player, false)
        RemoveAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
        StopGameplayCamShaking()
end)

-- Cocaine Command
RegisterCommand("cocaine", function(source, args)
    alert("~r~You just injected some Cocaine")
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsTrevorClownsFight")
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
    ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
end)

RegisterCommand("resetcocaine", function(source, args)
    alert("~r~Your cocaine has worn off")
    SetPedMotionBlur(player, false)
    AnimpostfxStopAll()
    ResetPedMovementClipset(player, 5.0)
    SetPedIsDrunk(player, false)
    RemoveAnimSet("MOVE_M@DRUNK@VERYDRUNK")
    StopGameplayCamShaking()
end)

-- Meth Command
RegisterCommand("meth", function(source, args)
    alert("~o~You just smoked some meth")
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsMichaelAliensFight")
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.5)
    ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
end)

RegisterCommand("resetmeth", function(source, args)
    alert("~o~Your meth has worn off")
    SetPedMotionBlur(player, false)
    AnimpostfxStopAll()
    ResetPedMovementClipset(player, 5.0)
    SetPedIsDrunk(player, false)
    RemoveAnimSet("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP")
    StopGameplayCamShaking()
end)

-- Drunk Command 
RegisterCommand("drunk", function(source, args)
    alert("~c~You are now drunk")
    SetPedMotionBlur(player, true)
    AnimpostfxPlay("DrugsTrevorClownsFightOut")
    SetPedIsDrunk(player, true)
    SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.5)
    ShakeGameplayCam("DRUNK_SHAKE")
end)

RegisterCommand("resetdrunk", function(source, args)
    alert("~c~You are no longer drunk")
    SetPedMotionBlur(player, false)
    AnimpostfxStopAll()
    ResetPedMovementClipset(player, 5.0)
    SetPedIsDrunk(player, false)
    RemoveAnimSet("MOVE_M@DRUNK@VERYDRUNK")
end)


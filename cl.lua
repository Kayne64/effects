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
while not HasAnimSetLoaded("MOVE_M@DRUNk@VERYDRUNK") do 
    Wait(0)
end 

RequestAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@SLIGHTLYDRUNK") do
    Wait(0)
end

RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP")
while not HasAnimSetLoaded("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP") do
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



-- Cocaine Command

-- Meth Command

-- Drunk Command 

-- Ecstasy Command


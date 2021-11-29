--Effects v1.0.3 by Kayne64--
--Don't edit any of this code without permission--

--Variables
local player = PlayerPedId()
local player = GetPlayerPed(-1)

--Function
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

--Requesting Animation Sets
RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@MODERATEDRUNK") do 
end

RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK")
end

RequestAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
while not HasAnimSetLoaded("MOVE_M@DRUNK@SLIGHTLYDRUNK")
end

--Code Don't Touch--
--Command will be /effect [effectname] [start or stop]
RegisterCommand("effect", function(source, args)
    local effect = args[1]
    if effect == "cocaine" then 
        alert("~r~You just injected some Cocaine")
        --Emotes--
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsTrevorClownsFight")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
        ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
    elseif effect == "meth" then 
        alert("~o~You just smoked some meth")
        --Emotes--
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsMichaelAliensFight")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.5)
        ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
    elseif effect == "drunk" then 
        alert("~c~You are now drunk")
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsTrevorClownsFightOut")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.5)
        ShakeGameplayCam("DRUNK_SHAKE")
    elseif effect == "lsd" then 
        alert("~g~You just took an LSD Pill")
        --Emotes--
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsTrevorClownsFightIn", 1000001, true)
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player,"MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
        ShakeGameplayCam("VIBRATE_SHAKE", 10) 
    elseif effect == "weed" then 
            alert("~b~You just used a Bong")
            --Emotes--
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsMichaelAliensFightIn")
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
            ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 5.0)
    local selection = args[2]
    if selection == "stop" then 
        SetPedMotionBlur(player, false)
        AnimpostfxsTOPaLL()
        ResetPedMovementClipset(player, 5.0)
        SetPedIsDrunk(player, false)
        RemoveAnimSet("MOVE_M@DRUNK@VERYDRUNK")
        RemoveAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
        RemoveAnimSet("MOVE_M@MODERATEDUNK")
        StopGameplayCamShaking()
    elseif selection == "start" then 
        if effect == "cocaine" then 
            alert("~r~You just injected some Cocaine")
            --Emotes--
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsTrevorClownsFight")
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
            ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
        if effect == "lsd" then 
            alert("~g~You just took an LSD Pill")
            --Emotes--
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsTrevorClownsFightIn", 1000001, true)
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player,"MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
            ShakeGameplayCam("VIBRATE_SHAKE", 10) 
        if effect == "drunk" then 
            alert("~c~You are now drunk")
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsTrevorClownsFightOut")
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.5)
            ShakeGameplayCam("DRUNK_SHAKE")
        if effect == "weed" then 
            alert("~b~You just used a Bong")
            --Emotes--
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsMichaelAliensFightIn")
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
            ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 5.0)
        if effect == "meth" then 
         alert("~o~You just smoked some meth")
        --Emotes--
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsMichaelAliensFight")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.5)
        ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
     elseif then 
        return;
end)

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/effect', 'Starts an Effect with /effect [Effect] [Start/Stop]')
end)
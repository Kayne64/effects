--Effects v1.0.3 by Kayne64--
--Don't edit any of this code without permission--

--Variables
local player = PlayerPedId()
local player = GetPlayerPed(-1)

--Emotes--
local emotes = {
	['smoke'] = "WORLD_HUMAN_SMOKING",
	['weed'] = "WORLD_HUMAN_SMOKING_POT"
}

--Function
function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
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
RegisterCommand("starteffect", function(source, args)
    local args[1] == 'cocaine' then 
        alert("~r~You just injected some Cocaine")
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsTrevorClownsFight")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.0)
        ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
            elseif args[1] == 'meth' then 
        alert("~o~You just smoked some meth")
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsMichaelAliensFight")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.5)
        ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 10.0)
            elseif args[1] == 'drunk' then 
        alert("~c~You are now drunk")
        Wait(30000) then 
        SetPedMotionBlur(player, true)
        AnimpostfxPlay("DrugsTrevorClownsFightOut")
        SetPedIsDrunk(player, true)
        SetPedMovementClipset(player, "MOVE_M@DRUNK@VERYDRUNK", 1.5)
        ShakeGameplayCam("DRUNK_SHAKE")
            elseif args[1] == 'lsd' then 
            alert("~g~You just took an LSD Pill")
             Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsTrevorClownsFightIn", 1000001, true)
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player,"MOVE_M@DRUNK@MODERATEDRUNK", 1.0)
            ShakeGameplayCam("VIBRATE_SHAKE", 10) 
            elseif args[1] == 'weed' then 
            alert("~b~You just used a Bong")
            Wait(30000) then 
            SetPedMotionBlur(player, true)
            AnimpostfxPlay("DrugsMichaelAliensFightIn")
            SetPedIsDrunk(player, true)
            SetPedMovementClipset(player, "MOVE_M@DRUNK@SLIGHTLYDRUNK", 1.0)
            ShakeGameplayCam("ROAD_VIBRATION_SHAKE", 5.0)
                        end 
                    end 
                end 
            end 
        end
    end 
end)

RegisterCommand("stopeffect", function(source, args)
    SetPedMotionBlur(player, false)
    AnimpostfxsTOPaLL()
    ResetPedMovementClipset(player, 5.0)
    SetPedIsDrunk(player, false)
    RemoveAnimSet("MOVE_M@DRUNK@VERYDRUNK")
    RemoveAnimSet("MOVE_M@DRUNK@SLIGHTLYDRUNK")
    RemoveAnimSet("MOVE_M@MODERATEDUNK")
    StopGameplayCamShaking()
end)

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/starteffect', 'Starts an Effect with /starteffect [Effect]')
    TriggerEvent('chat:addSuggestion', '/stopeffect', 'Stops all ongoing effects with /stopeffect')
end)
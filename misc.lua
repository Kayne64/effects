-- Variables
local player = GetPlayerPed(-1)
local player = PlayerPedId()

-- Functions
function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

-- If player is dead, Reset all.
IsPlayerDead(GetPlayerPed(-1), true) then 
    SetPedIsDrunk(GetPlayerPed(-1), false)		
     SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
     ShakeGameplayCam("DRUNK_SHAKE", 0.0)
end)
local dict = "missminuteman_1ig_2"
local handsup = false
RegisterCommand('handsup' ,function()
    local lPed = PlayerPedId()
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
		if not IsPedInAnyVehicle(lPed, false) and not IsPedSwimming(lPed) and not IsPedShooting(lPed) and not IsPedClimbing(lPed) and not IsPedCuffed(lPed) and not IsPedDiving(lPed) and not IsPedFalling(lPed) and not IsPedJumping(lPed) and not IsPedJumpingOutOfVehicle(lPed) and IsPedOnFoot(lPed) and not IsPedRunning(lPed) and not IsPedUsingAnyScenario(lPed) and not IsPedInParachuteFreeFall(lPed) then
                handsup = not handsup
                if not handsup then
                    TaskPlayAnim(lPed, dict, "handsup_enter", 8.0, 8.0, -1, 50, 0, false, false, false)
                else
                    ClearPedTasks(lPed)
                end
            end
        end)
        
 

RegisterKeyMapping('handsup',  'ruce nahoru', 'keyboard', 'X')
handsup = false

function getSurrenderStatus()
	return handsup
end
----- handsup
RegisterNetEvent('vk_handsup:getSurrenderStatusPlayer')
AddEventHandler('vk_handsup:getSurrenderStatusPlayer',function(event,source)
		if handsup then
			TriggerServerEvent("vk_handsup:reSendSurrenderStatus",event,source,true)
		else
			TriggerServerEvent("vk_handsup:reSendSurrenderStatus",event,source,false)
		end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local lPed = GetPlayerPed(-1)
		RequestAnimDict("random@mugging3")
		if not IsPedInAnyVehicle(lPed, false) and not IsPedSwimming(lPed) and not IsPedShooting(lPed) and not IsPedClimbing(lPed) and not IsPedCuffed(lPed) and not IsPedDiving(lPed) and not IsPedFalling(lPed) and not IsPedJumping(lPed) and not IsPedJumpingOutOfVehicle(lPed) and IsPedOnFoot(lPed) and not IsPedRunning(lPed) and not IsPedUsingAnyScenario(lPed) and not IsPedInParachuteFreeFall(lPed) then
			if IsControlPressed(1, 323) then
				if DoesEntityExist(lPed) then
					SetCurrentPedWeapon(lPed, 0xA2719263, true)
					Citizen.CreateThread(function()
						RequestAnimDict("random@mugging3")
						while not HasAnimDictLoaded("random@mugging3") do
							Citizen.Wait(100)
						end

						if not handsup then
							handsup = true
							TaskPlayAnim(lPed, "random@mugging3", "handsup_standing_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
						end   
					end)
				end
			end
		end
		if IsControlReleased(1, 323) then
			if DoesEntityExist(lPed) then
				Citizen.CreateThread(function()
					RequestAnimDict("random@mugging3")
					while not HasAnimDictLoaded("random@mugging3") do
						Citizen.Wait(100)
					end

					if handsup then
						handsup = false
						ClearPedSecondaryTask(lPed)
					end
				end)
			end
		end
	end
end)
----- cellphone

cellphone = false

function getCellphoneStatus()
	return cellphone
end

RegisterNetEvent('cellphone:getCellphoneStatusPlayer')
AddEventHandler('cellphone:getCellphoneStatusPlayer',function(event,source)
		if cellphone then
			TriggerServerEvent("cellphone:reSendCellphoneStatus",event,source,true)
		else
			TriggerServerEvent("cellphone:reSendCellphoneStatus",event,source,false)
		end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		local lPed = GetPlayerPed(-1)
		RequestAnimDict("cellphone@")
		if not IsPedInAnyVehicle(lPed, false) and not IsPedSwimming(lPed) and not IsPedShooting(lPed) and not IsPedClimbing(lPed) and not IsPedCuffed(lPed) and not IsPedDiving(lPed) and not IsPedFalling(lPed) and not IsPedJumping(lPed) and not IsPedJumpingOutOfVehicle(lPed) and IsPedOnFoot(lPed) and not IsPedRunning(lPed) and not IsPedUsingAnyScenario(lPed) and not IsPedInParachuteFreeFall(lPed) then
			if IsControlPressed(3, 56) then
				if DoesEntityExist(lPed) then
					SetCurrentPedWeapon(lPed, 0xA2719263, true)
					Citizen.CreateThread(function()
						RequestAnimDict("cellphone@")
						while not HasAnimDictLoaded("cellphone@") do
							Citizen.Wait(500)
						end

						if not cellphone then
							cellphone = true
							TaskPlayAnim(lPed, "cellphone@", "cellphone_call_listen_base", 8.0, -8, -1, 49, 0, 0, 0, 0)
						end   
					end)
				end
			end
		end
		if IsControlPressed(3, 177) then
			if DoesEntityExist(lPed) then
				Citizen.CreateThread(function()
					RequestAnimDict("cellphone@")
					while not HasAnimDictLoaded("cellphone@") do
						Citizen.Wait(500)
					end

					if cellphone then
						cellphone = false
						ClearPedSecondaryTask(lPed)
					end
				end)
			end
		end
	end
end)




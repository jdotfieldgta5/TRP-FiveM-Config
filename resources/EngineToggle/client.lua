-- CLIENTSIDED
-- Register a network event
RegisterNetEvent('Engine')

AddEventHandler('Engine', function()
	if IsPedInAnyVehicle(GetPlayerPed(-1), false) then 
		if (GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), -1) == GetPlayerPed(-1)) then
			if IsVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1), false)) then
				SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1), false), false)
				drawNotification("~r~Turned Engine Off!")
			else
				SetVehicleEngineOn(GetVehiclePedIsIn(GetPlayerPed(-1), false), true)
				drawNotification("~g~Turned Engine On!")
			end
		else 
			ShowNotification("You have to be in the driver's seat of a vehicle!")
		end 
    end 
end)

function drawNotification(text) --Just Don't Edit!
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end


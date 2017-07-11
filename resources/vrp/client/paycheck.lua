vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId(source)
		Citizen.Wait(600000) -- Every X ms you'll get paid (600000 = 10 min)
		TriggerServerEvent('paycheck:salary')
	end
end)

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId(source)
		Citizen.Wait(3600000) -- Every X ms you'll get paid (3600000 = 1 hr)
		TriggerServerEvent('paycheck:bonus')
	end
end)

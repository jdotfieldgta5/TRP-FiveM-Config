vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function ()
	while true do
	local user_id = vRP.getUserId(source)
		Citizen.Wait(600000) -- Every X ms you'll get paid (300000 = 5 min)
		TriggerServerEvent('paycheck:salary')
	end
end)
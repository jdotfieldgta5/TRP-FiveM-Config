local Proxy = require("resources/vrp/lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"police.paycheck") then
		vRP.giveMoney(user_id,750)
		vRPclient.notify(source,{"Pay day! +$250"})
	end		
	if vRP.hasPermission(user_id,"emergency.paycheck") then
		vRP.giveMoney(user_id,200)
		vRPclient.notify(source,{"Pay day! +$200"})
	end
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,100)
		vRPclient.notify(source,{"Pay day! +$100"})
	end
	if vRP.hasPermission(user_id,"taxi.paycheck") then
		vRP.giveMoney(user_id,100)
		vRPclient.notify(source,{"Pay day! +$100"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.getMoney(user_id,50)
		vRPclient.notify(source,{"Welfare has been added to your account. +$50"})
	end
end)
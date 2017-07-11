RegisterServerEvent('vk_handsup:getSurrenderStatus')
AddEventHandler('vk_handsup:getSurrenderStatus', function(event,targetID)
	TriggerClientEvent("vk_handsup:getSurrenderStatusPlayer",targetID,event,source)
end)

RegisterServerEvent('vk_handsup:sendSurrenderStatus')
AddEventHandler('vk_handsup:sendSurrenderStatus', function(event,targetID,handsup)
	TriggerClientEvent(event,targetID,handsup)
end)

RegisterServerEvent('vk_handsup:reSendSurrenderStatus')
AddEventHandler('vk_handsup:reSendSurrenderStatus', function(event,targetID,handsup)
	TriggerClientEvent(event,targetID,handsup)
end)
-----------------------------------------------------------------------------------------

RegisterServerEvent('cellphone:getCellphoneStatus')
AddEventHandler('cellphone:GetCellphoneStatus', function(event,targetID)
	TriggerClientEvent("cellphone:getCellphoneStatusPlayer",targetID,event,source)
end)

RegisterServerEvent('cellphone:sendCellphoneStatus')
AddEventHandler('cellphone:sendCellphoneStatus', function(event,targetID,cellphone)
	TriggerClientEvent(event,targetID,cellphone)
end)

RegisterServerEvent('cellphone:reSendCellphoneStatus')
AddEventHandler('cellphone:reSendCellphoneStatus', function(event,targetID,cellphone)
	TriggerClientEvent(event,targetID,cellphone)
end)
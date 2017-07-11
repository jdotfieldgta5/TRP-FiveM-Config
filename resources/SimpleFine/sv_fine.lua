RegisterServerEvent('ap:fine')
AddEventHandler('ap:fine', function(receiverid, fine)
		
			TriggerEvent('es:getPlayerFromId', receiverid, function(user)
				local player = user.identifier
				user:removeMoney((fine))
				TriggerClientEvent("rc:fine", receiverid, fine)
				
   end)
end)

TriggerEvent("es:addCommand", "fine", function(source, args, user)
	if (args[2] ~= nil and tonumber(args[3]) > 0) then
			local receiverid = tonumber(args[2])
			local fine = tonumber(args[3])
			TriggerEvent('ap:fine', receiverid, fine)
	end
end)

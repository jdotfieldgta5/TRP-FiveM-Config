-- SERVERSIDED

AddEventHandler('chatMessage', function(source, n, msg)
	local Message = string.lower(msg)
	if (Message == "/engine") then
		TriggerClientEvent('Engine', source)
		CancelEvent()
	end
end)
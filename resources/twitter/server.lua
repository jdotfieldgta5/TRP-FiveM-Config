AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/tweet" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "Twitter | " .. name, { 41, 171, 218 }, string.sub(msg,5))
	end
end)

function stringsplit(self, delimiter)
	local a = self:Split(delimiter)
	local t = {}
	
	for i = 0, #a - 1 do
		table.insert(t, a[i])
	end
	
	return t
end
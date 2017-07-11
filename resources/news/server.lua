AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/news" then
		CancelEvent()
		TriggerClientEvent('chatMessage', -1, "News Ad | " .. name, { 192, 3, 16 }, string.sub(msg,5))
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
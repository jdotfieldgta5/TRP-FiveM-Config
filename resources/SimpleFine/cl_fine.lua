RegisterNetEvent("rc:fine")
AddEventHandler("rc:fine", function(receiverid, fine)
  
		SetNotificationTextEntry("STRING");
        AddTextComponentString("~r~ You received a fine");
        DrawNotification(false, true);
		
  
end)

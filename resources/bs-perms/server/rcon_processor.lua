AddEventHandler('rconCommand',
  function(commandName, args)
    if commandName:lower() == 'perms' then
      if args[1] == 'reload' then
        refreshAdmins()
      end
      CancelEvent()
    end
  end
)

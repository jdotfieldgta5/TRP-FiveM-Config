AddEventHandler('onClientResourceStart',
  function(resource)
    if resource == 'bs-perms' then
      TriggerServerEvent('bs-perms:connected')
    end
  end
)

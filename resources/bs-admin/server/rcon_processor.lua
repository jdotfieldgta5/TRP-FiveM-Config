AddEventHandler('rconCommand',
  function(commandName, args)
    if commandName:lower() == 'announce' then
      announce(args)
      CancelEvent()
    end
    if commandName:lower() == 'kick' then
      kick(args)
      CancelEvent()
    end
    if commandName:lower() == 'ban' then
      ban(args)
      CancelEvent()
    end
    if commandName:lower() == 'freeze' then
      freeze(args)
      CancelEvent()
    end
    if commandName:lower() == 'unfreeze' then
      unfreeze(args)
      CancelEvent()
    end
    if commandName:lower() == 'slap' then
      slap(args)
      CancelEvent()
    end
    if commandName:lower() == 'slay' then
      slay(args)
      CancelEvent()
    end
  end
)

function announce(args)
  TriggerClientEvent('chatMessage', -1, 'ANNOUNCEMENT', {255, 0, 0}, table.concat(args, ' '))
end

function kick(args)
  local reason = args
  table.remove(reason, 1)

  if (#reason == 0) then
    reason = 'Kicked: You have been kicked from the server'
  else
    reason = 'Kicked: ' .. table.concat(reason, ' ')
  end

  local targetId = tonumber(args[1])

  adminMessage(-1, 'Player ' .. GetPlayerName(targetId) .. ' has been kicked (' .. reason .. ')')
  RconPrint('Player ' .. GetPlayerName(targetId) .. ' has been kicked (' .. reason .. ')')
  DropPlayer(targetId, reason)
end

function ban(args)
  local reason = args
  local targetId = tonumber(args[1])
  local playerName = GetPlayerName(targetId)
  local timeArg = args[2]

  local banEpoch = tonumber(tostring(os.time()))
  local timeUnit = timeArg:sub(-1):lower()
  local timeMultiplier = tonumber(timeArg:sub(1, -2))

  if timeUnit == 'h' then
    local additionalSeconds = timeMultiplier * 60 * 60
    banEpoch = banEpoch + additionalSeconds
  elseif timeUnit == 'd' then
    local additionalSeconds = timeMultiplier * 24 * 60 * 60
    banEpoch = banEpoch + additionalSeconds
  else
    RconPrint('Invalid time.  /ban 24h reason')
  end

  table.remove(reason, 1)
  table.remove(reason, 1)

  if (#reason == 0) then
    reason = 'Banned: You have been kicked from the server'
  else
    reason = 'Banned: ' .. table.concat(reason, ' ')
  end

  addBan(targetId, banEpoch, reason)

  adminMessage(-1, 'Player ' .. playerName .. ' has been banned (' .. reason .. ')')
  RconPrint('Player ' .. playerName .. ' has been banned (' .. reason .. ')')

  DropPlayer(targetId, reason)
end

function freeze(args)
  local targetId = tonumber(args[1])

  TriggerClientEvent('bs-admin:freezePlayer', targetId)

  adminMessage(targetId, 'You have been frozen by RCON.')
  RconPrint('You have froze '..GetPlayerName(targetId))
end

function unfreeze(args)
  local targetId = tonumber(args[1])

  TriggerClientEvent('bs-admin:unfreezePlayer', targetId)

  adminMessage(targetId, 'You have been unfrozen by RCON.')
  RconPrint('You have unfroze '..GetPlayerName(targetId))
end

function slap(args)
  local targetId = tonumber(args[1])

  TriggerClientEvent('bs-admin:slap', targetId)

  adminMessage(targetId, 'You have slapped by RCON.')
  RconPrint('Player ' .. GetPlayerName(targetId) .. ' has been slapped')
end

function slay(args)
  local targetId = tonumber(args[1])

  TriggerClientEvent('bs-admin:kill', targetId)

  adminMessage(targetId, 'You have been killed by RCON.')
  RconPrint('Player ' .. GetPlayerName(targetId) .. ' has been killed.')
end

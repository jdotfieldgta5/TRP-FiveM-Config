local config = loadConfig()

function adminMessage(who, message)
  TriggerClientEvent('chatMessage', who, 'BS-ADMIN', {255, 0, 0}, message)
end

function command_admin(who, args)
  if not config.admin.enabled then
    return
  end
  if args[2] == 'reload' then
    config = loadConfig()
    refreshBans()
  end
end

function command_announce(who, args)
  if not config.announce.enabled then
    return
  end
  table.remove(args, 1)
  TriggerClientEvent('chatMessage', -1, 'ANNOUNCEMENT', {255, 0, 0}, table.concat(args, ' '))
end

function command_car(who, args)
  if not config.car.enabled then
    return
  end
  TriggerClientEvent('bs-admin:spawnVehicle', who, args[2])
end

function command_report(who, args)
  if not config.report.enabled then
    return
  end
  table.remove(args, 1)
  adminMessage(who, 'REPORT: (' .. GetPlayerName(who) ..' | '..who..') ' .. table.concat(args, ' '))
  TriggerEvent('bs-perms:loopThroughAuthed',
    function(authed)
      if string.match(authed.flags, config.report.seeFlag) then
        adminMessage(authed.pid, 'REPORT: (' .. GetPlayerName(who) ..' | '..who..') ' .. table.concat(args, ' '))
      end
    end
  )
end

function command_pos(who, args)
  if not config.pos.enabled then
    return
  end
  TriggerClientEvent('bs-admin:getPlayerShowPos', who)
end

RegisterServerEvent('bs-admin:gotPlayerShowPos')
AddEventHandler('bs-admin:gotPlayerShowPos',
  function(pos)
    local posString = '{ x = ' .. pos.x .. ', y = ' .. pos.y .. ', z = ' .. pos.z .. ' }'
    adminMessage(source, posString)
  end
)

function command_savepos(who, args)
  if not config.savepos.enabled then
    return
  end
  table.remove(args, 1)
  TriggerClientEvent('bs-admin:getPlayerSavePos', who, table.concat(args, ' '))
end

RegisterServerEvent('bs-admin:gotPlayerSavePos')
AddEventHandler('bs-admin:gotPlayerSavePos',
  function(pos, note)
    local posString = '{ x = ' .. pos.x .. ', y = ' .. pos.y .. ', z = ' .. pos.z .. ' }'
    if IsDuplicityVersion and IsDuplicityVersion() then
      SaveResourceFile('bs-admin', 'dumps/coords.txt',
        LoadResourceFile('bs-admin', 'dumps/coords.txt') .. posString..' - '..note..'\n'
      , -1)
    else
      local file = io.open('resources/bs-admin/dumps/coords.txt', 'a')
      file:write(posString..' - '..note..'\n')
      file:flush()
      file:close()
    end
    adminMessage(source, posString..' | saved')
  end
)


function command_noclip(who, args)
  if not config.noclip.enabled then
    return
  end
  TriggerClientEvent('bs-admin:toggleNoClip', who)
end

function command_kick(who, args, auth, targetAuth)
  if not config.kick.enabled then
    return
  end
  local reason = args
  table.remove(reason, 1)
  table.remove(reason, 1)

  if (#reason == 0) then
    reason = 'Kicked: You have been kicked from the server'
  else
    reason = 'Kicked: ' .. table.concat(reason, ' ')
  end

  local targetId = tonumber(args[2])

  adminMessage(-1, 'Player ' .. GetPlayerName(targetId) .. ' has been kicked (' .. reason .. ')')
  DropPlayer(targetId, reason)
end

function command_ban(who, args, auth, targetAuth)
  if not config.ban.enabled then
    return
  end
  local reason = args
  local timeArg = args[3]

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
    adminMessage(who, 'Invalid time.  /ban 24h reason')
  end

  table.remove(reason, 1)
  table.remove(reason, 1)
  table.remove(reason, 1)

  if (#reason == 0) then
    reason = 'Banned: You have been kicked from the server'
  else
    reason = 'Banned: ' .. table.concat(reason, ' ')
  end

  local targetId = tonumber(args[2])
  local playerName = GetPlayerName(targetId)

  addBan(targetId, banEpoch, reason)
  adminMessage(-1, 'Player ' .. playerName .. ' has been banned (' .. reason .. ')')
  DropPlayer(targetId, reason)
end

function command_freeze(who, args, auth, targetAuth)
  if not config.freeze.enabled then
    return
  end

  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:freezePlayer', targetId)
  adminMessage(targetId, 'You have been frozen by '..GetPlayerName(who))
  adminMessage(who, 'You have froze '..GetPlayerName(targetId))
end

function command_unfreeze(who, args, auth, targetAuth)
  if not config.freeze.enabled then
    return
  end

  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:unfreezePlayer', targetId)
  adminMessage(targetId, 'You have been unfrozen by '..GetPlayerName(who))
  adminMessage(who, 'You have unfroze '..GetPlayerName(targetId))
end

function command_bring(who, args, auth, targetAuth)
  if not config.bring.enabled then
    return
  end

  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:teleportPlayer', targetId, who)

  adminMessage(targetId, 'You have brought by ' .. GetPlayerName(who))
  adminMessage(who, 'Player ' .. GetPlayerName(targetId) .. ' has been brought')
end

function command_slap(who, args, auth, targetAuth)
  if not config.slap.enabled then
    return
  end
  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:slap', targetId)

  adminMessage(targetId, 'You have slapped by ' .. GetPlayerName(who))
  adminMessage(who, 'Player ' .. GetPlayerName(targetId) .. ' has been slapped')
end

function command_tp(who, args, auth, targetAuth)
  if not config.tp.enabled then
    return
  end

  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:teleportPlayer', who, targetId)

  adminMessage(targetId, 'You have been teleported to by ' .. GetPlayerName(who))
  adminMessage(who, 'Teleported to player ' .. GetPlayerName(targetId) .. '')
end

function command_die(who, args)
  if not config.die.enabled then
    return
  end
  TriggerClientEvent('bs-admin:kill', who)
  adminMessage(who, 'You killed yourself.')
end

function command_slay(who, args, auth, targetAuth)
  if not config.slay.enabled then
    return
  end

  local targetId = tonumber(args[2])

  TriggerClientEvent('bs-admin:kill', targetId)

  adminMessage(targetId, 'You have been killed by ' .. GetPlayerName(who))
  adminMessage(who, 'Player ' .. GetPlayerName(targetId) .. ' has been killed.')
end

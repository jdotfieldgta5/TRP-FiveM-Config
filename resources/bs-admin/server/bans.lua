function loadBans()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return json.decode(LoadResourceFile('bs-admin', 'bans.json'))
  end

  local path = 'resources/bs-admin/bans.json'
  local file = io.open(path)
  local content = ''
  while true do
    local line = file.read()
    if not line then
      break
    end
    content = content .. line
  end
  file:close()
  if content == '' then
    return {}
  end
  return json.decode(content)
end

local bans = loadBans() or {}

function refreshBans()
  bans = loadBans() or {}
end

function addBan(who, epoch, reason)
  local ip = GetPlayerEP(who)
  local steam = getSteamFromId(who)
  local authString = steam or ip
  local ban = {
    time = epoch,
    reason = reason
  }
  bans[authString] = ban
  saveBans()
end

function removeBan(who)
  local ip = GetPlayerEP(source)
  local steam = getSteamFromId(source)
  local authString = steam or ip
  bans[authString] = nil
  saveBans()
end

function saveBans()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return SaveResourceFile('bs-admin', 'bans.json', json.encode(bans, {
      indent = true
    }), -1)
  end

  local path = 'resources/bs-admin/bans.json'
  local file = io.open(path, 'w+')
  file:write(json.encode(bans, {
    indent = true
  }))
  file:flush()
  file:close()
end

function getSteamFromId(playerId)
  for _, v in pairs(GetPlayerIdentifiers(playerId)) do
    if string.sub(v, 1, 6) == 'steam:' then
      return tostring(tonumber(string.sub(v, 7), 16))
    end
  end
  return nil
end

AddEventHandler('playerConnecting',
  function(playerName, setKickReason)
    local ip = GetPlayerEP(source)
    local steam = getSteamFromId(source)
    local authString = steam or ip
    local epoch = tonumber(tostring(os.time()))
    if bans[authString] ~= nil then
      local ban = bans[authString]
      if ban.time > epoch then
        setKickReason(ban.reason)
        CancelEvent()
      end
    end
  end
)

local test = json.decode('{"ugly": "hack"}')
local test2 = json.encode(test)

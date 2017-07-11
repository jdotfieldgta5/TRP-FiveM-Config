local API
TriggerEvent('bs-perms:getAPI',
  function(api)
    API = api
  end
)

RegisterServerEvent('bs-perms:reloadAdminCache')
AddEventHandler('bs-perms:reloadAdminCache',
  function()
    reloadAdmins()
  end
)

local admins
local groups
local overrides

function reloadAdmins()
  admins = getAdmins()
  groups = getGroups()
  overrides = getOverrides()
  TriggerEvent('bs-perms:gotCache', {
    admins = admins,
    groups = groups,
    overrides = overrides
  })
end

function getAdmins()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return json.decode(LoadResourceFile('bs-perms-json', 'config/Admin.json'))
  else
    local fileText = getFileText('resources/bs-perms-json/config/Admin.json')
    local admins = json.decode(fileText)
    return admins
  end
end

function saveAdmins()
  if IsDuplicityVersion and IsDuplicityVersion() then
    SaveResourceFile('bs-perms-json', 'config/Admin.json', json.encode(admins, {
      indent = true
    }), -1)
      return
  end

  local path = 'resources/bs-perms-json/config/Admin.json'
  local file = io.open(path, 'w+')
  file:write(json.encode(admins, {
    indent = true
  }))
  file:flush()
  file:close()
end

function addAdmin(alias, authType, authString, password)
  local admin = {
    alias = alias,
    authType = authType,
    authString = authString
  }
  if password ~= nil then
    admin.password = password
  end
  admins[#admin + 1] = admin
  saveAdmins()
end

function removeAdmin(alias)
  for i, admin in ipairs(admins) do
    if admin.alias == alias then
      table.remove(admins, i)
      break
    end
  end
  saveAdmins()
end

function setAdmin(alias, key, value)
  for i, admin in ipairs(admins) do
    if admin.alias == alias then
      if key == 'password' then
        value = GetPasswordHash(value)
      end
      if key == 'immunity' then
        value = tonumber(value)
      end
      if value == 'nil' then
        value = nil
      end
      admins[i][key] = value
      break
    end
  end
  saveAdmins()
end

function getGroups()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return json.decode(LoadResourceFile('bs-perms-json', 'config/Group.json'))
  else
    local fileText = getFileText('resources/bs-perms-json/config/Group.json')
    local groups = json.decode(fileText)
    return groups
  end
end

function saveGroups()
  if IsDuplicityVersion and IsDuplicityVersion() then
    SaveResourceFile('bs-perms-json', 'config/Group.json', json.encode(groups, {
      indent = true
    }), -1)
      return
  end

  local path = 'resources/bs-perms-json/config/Group.json'
  local file = io.open(path, 'w+')
  file:write(json.encode(groups, {
    indent = true
  }))
  file:flush()
  file:close()
end

function addGroup(name, flags, immunity)
  local group = {
    name = name,
    flags = flags,
    immunity = immunity
  }
  groups[#groups + 1] = group
  saveGroups()
end

function removeGroup(name)
  for i, group in ipairs(groups) do
    if group.name == name then
      table.remove(groups, i)
      break
    end
  end
  saveGroups()
end

function getOverrides()
  if IsDuplicityVersion and IsDuplicityVersion() then
    return json.decode(LoadResourceFile('bs-perms-json', 'config/Override.json'))
  else
    local fileText = getFileText('resources/bs-perms-json/config/Override.json')
    local overrides = json.decode(fileText)
    return overrides
  end
end

function saveOverrides()
  if IsDuplicityVersion and IsDuplicityVersion() then
    SaveResourceFile('bs-perms-json', 'config/Override.json', json.encode(overrides, {
      indent = true
    }), -1)
      return
  end

  local path = 'resources/bs-perms-json/config/Override.json'
  local file = io.open(path, 'w+')
  file:write(json.encode(overrides, {
    indent = true
  }))
  file:flush()
  file:close()
end

function addOverride(commandString, type, flag)
  local override = {
    commandString = commandString,
    type = type,
    flag = flag
  }
  overrides[#overrides + 1] = override
  saveOverrides()
end

function removeOverride(commandString)
  for i, override in ipairs(overrides) do
    if override.commandString == commandString then
      table.remove(overrides, i)
      break
    end
  end
  saveOverrides()
end

function getFileText(path)
  if IsDuplicityVersion and IsDuplicityVersion() then
    local resource, file = path:match('resources/([^/]+)/(.+)')

    return LoadResourceFile(resource, file)
  end

  local file = io.open(path)
  local content = ""
  while true do
    local line = file.read()
    if not line then
      break
    end
    content = content .. line
  end
  file:close()
  return content
end

API.addCommand({
  command = 'perms-api',
  flag = 'z',
  callback = function(who, args, auth)
    if args[2] == 'add' then
      local pid = tonumber(args[3])
      local flags = args[4]
      local immunity = args[5]
      local alias = args[6]
    end
  end
})

json.decode('{"ugly": "hack"}')

local API
TriggerEvent('bs-perms:getAPI',
  function(api)
    API = api
  end
)

function isValidAdminKey(key)
  return key == 'alias' or key == 'authType' or key == 'authString' or key == 'flags' or key == 'immunity' or key == 'password' or key == 'Group'
end

AddEventHandler('rconCommand',
  function(commandName, a)
    if commandName:lower() == 'perms-json' then
      CancelEvent()
      local argString = table.concat(a, ' ')
      local args = API.getArgsFromString(argString)
      if args[1] == 'admin' then
        local alias = args[3]

        if args[2] == 'add' then
          local authType = args[4]
          if authType ~= 'login' and authType ~= 'steam' and authType ~= 'ip' then
            RconPrint('Invalid Auth Type. login/steam/ip\n')
            return
          end
          local authString = args[5]
          local password = args[6]
          if authType == 'login' and password == nil then
            RconPrint('Missing password.\n')
            return
          end
          addAdmin(alias, authType, authString, GetPasswordHash(password))
          RconPrint('Added.\n')
        end

        if args[2] == 'remove' then
          removeAdmin(alias)
          RconPrint('Removed.\n')
        end

        if args[2] == 'set' then
          local key = args[4]
          local value = args[5]
          if isValidAdminKey(key) then
            setAdmin(alias, key, value)
            RconPrint('Set.\n')
          end
        end
      end

      if args[1] == 'group' then
        local name = args[3]
        if args[2] == 'add' then
          local flags = args[4]
          local immunity = tonumber(args[5])
          addGroup(name, flags, immunity)
          RconPrint('Added.\n')
        end
        if args[2] == 'remove' then
          removeGroup(name)
          RconPrint('Removed.\n')
        end
      end

      if args[1] == 'override' then
        if args[2] == 'add' then
          local commandString = args[3]
          local type = args[4]
          if type ~= 'full' and type ~= 'prefix' then
            RconPrint('Invalid Type. full/prefix\n')
            return
          end
          local flag = args[5]
          addOverride(commandString, type, flag)
          RconPrint('Added.\n')
        end
        if args[2] == 'remove' then
          local commandString = args[3]
          removeOverride(commandString)
          RconPrint('Removed.\n')
        end
      end
    end
  end
)

RegisterNetEvent('bs-admin:spawnVehicle')
AddEventHandler('bs-admin:spawnVehicle',
  function(modelName)
    local carHash = GetHashKey(modelName)
    local playerPed = GetPlayerPed(-1)
    if playerPed and playerPed ~= -1 then
      RequestModel(carHash)
      while not HasModelLoaded(carHash) do
        Citizen.Wait(0)
      end
      local playerCoords = GetEntityCoords(playerPed)
      veh = CreateVehicle(carHash, playerCoords, 0.0, true, false)
      TaskWarpPedIntoVehicle(playerPed, veh, - 1)
    end
  end
)

RegisterNetEvent('bs-admin:getPlayerShowPos')
AddEventHandler('bs-admin:getPlayerShowPos',
  function()
    local pos = GetEntityCoords(GetPlayerPed(-1))
    TriggerServerEvent('bs-admin:gotPlayerShowPos', {
      x = pos.x,
      y = pos.y,
      z = pos.z
    })
  end
)

RegisterNetEvent('bs-admin:getPlayerSavePos')
AddEventHandler('bs-admin:getPlayerSavePos',
  function(note)
    local pos = GetEntityCoords(GetPlayerPed(-1))
    TriggerServerEvent('bs-admin:gotPlayerSavePos', {
      x = pos.x,
      y = pos.y,
      z = pos.z
    }, note)
  end
)

local noClip = false
local heading = 0.0
local startHeading = false
RegisterNetEvent('bs-admin:toggleNoClip')
AddEventHandler('bs-admin:toggleNoClip',
  function()
    local msg = 'disabled'
    noClip = not noClip

    if noClip then
      startHeading = GetEntityHeading(GetPlayerPed(-1)) - 180
      noClip = GetEntityCoords(GetPlayerPed(-1), false)
      msg = 'enabled'
    else
      SetEntityHeading(GetPlayerPed(-1), heading)
    end

    TriggerEvent('chatMessage', 'BS-PERMS', {255, 0, 0}, 'no clip has been ' .. msg)
  end
)

Citizen.CreateThread(
  function()
    while true do
      Citizen.Wait(0)
      if (noClip) then
        SetEntityCoordsNoOffset(GetPlayerPed(-1), noClip.x, noClip.y, noClip.z, 0, 0, 0)

        if startHeading then
          SetEntityHeading(GetPlayerPed(-1), startHeading)
          startHeading = false
        end

        if (IsControlPressed(1, 34)) then
          heading = heading + 1.5
          if (heading > 360) then
            heading = 0
          end
          SetEntityHeading(GetPlayerPed(-1), heading)
        end

        if (IsControlPressed(1, 9)) then
          heading = heading - 1.5
          if (heading < 0) then
            heading = 360
          end
          SetEntityHeading(GetPlayerPed(-1), heading)
        end

        if (IsControlPressed(1, 8)) then
          noClip = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 1.0, 0.0)
        end

        if (IsControlPressed(1, 32)) then
          noClip = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, - 1.0, 0.0)
        end

        if (IsControlPressed(1, 22)) then
          noClip = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 0.0, 1.0)
        end

        if (IsControlPressed(1, 21)) then
          noClip = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 0.0, - 1.0)
        end
      end
    end
  end
)

RegisterNetEvent('bs-admin:teleportPlayer')
AddEventHandler('bs-admin:teleportPlayer',
  function(targetId)
    local target = GetPlayerFromServerId(targetId)
    local pos = GetEntityCoords(GetPlayerPed(target))
    RequestCollisionAtCoord(pos.x, pos.y, pos.z)
    while not HasCollisionLoadedAroundEntity(GetPlayerPed(-1)) do
      Citizen.Wait(0)
    end

    local ped = GetPlayerPed(-1)
    ClearPedTasksImmediately(ped)
    SetEntityCoords(ped, pos)
  end
)

RegisterNetEvent('bs-admin:slap')
AddEventHandler('bs-admin:slap',
  function()
    local ped = GetPlayerPed(-1)
    ApplyForceToEntity(ped, 1, 9500.0, 3.0, 7100.0, 1.0, 0.0, 0.0, 1, false, true, false, false)
  end
)

RegisterNetEvent('bs-admin:kill')
AddEventHandler('bs-admin:kill',
  function()
    SetEntityHealth(GetPlayerPed(-1), 0)
  end
)

local frozenCoords = false
RegisterNetEvent('bs-admin:unfreezePlayer')
AddEventHandler('bs-admin:unfreezePlayer',
  function()
    setPlayerFrozen(PlayerId(), false)
    frozenCoords = false
  end
)

RegisterNetEvent('bs-admin:freezePlayer')
AddEventHandler('bs-admin:freezePlayer',
  function()
    setPlayerFrozen(PlayerId(), true)
    frozenCoords = GetEntityCoords(GetPlayerPed(-1), false)
  end
)

Citizen.CreateThread(
  function()
    while true do
      Citizen.Wait(0)
      if frozenCoords then
        local ped = GetPlayerPed(-1)
        ClearPedTasksImmediately(ped)
        SetEntityCoords(ped, frozenCoords)
      end
    end
  end
)

function setPlayerFrozen(id, freeze)
  local player = id
  SetPlayerControl(player, not freeze, false)
  local ped = GetPlayerPed(player)

  if not freeze then
    if not IsEntityVisible(ped) then
      SetEntityVisible(ped, true)
    end

    if not IsPedInAnyVehicle(ped) then
      SetEntityCollision(ped, true)
    end

    FreezeEntityPosition(ped, false)
    SetPlayerInvincible(player, false)
  else
    if IsEntityVisible(ped) then
      SetEntityVisible(ped, false)
    end

    SetEntityCollision(ped, false)
    FreezeEntityPosition(ped, true)
    SetPlayerInvincible(player, true)

    if not IsPedFatallyInjured(ped) then
      ClearPedTasksImmediately(ped)
    end
  end
end

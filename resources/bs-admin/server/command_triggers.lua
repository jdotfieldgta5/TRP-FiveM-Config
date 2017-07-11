local config = loadConfig()
local API

TriggerEvent('bs-perms:getAPI', function(api)
  API = api
end)

local addCommand = API.addCommand

addCommand({
  command = 'admin',
  flag = config.admin.flag,
  callback = command_admin
})

addCommand({
  command = 'announce',
  flag = config.announce.flag,
  callback = command_announce
})

addCommand({
  command = 'car',
  flag = config.car.flag,
  callback = command_car
})

addCommand({
  command = 'report',
  flag = config.report.flag,
  callback = command_report
})

addCommand({
  command = 'pos',
  flag = config.pos.flag,
  callback = command_pos
})

addCommand({
  command = 'savepos',
  flag = config.savepos.flag,
  callback = command_savepos
})

addCommand({
  command = 'noclip',
  flag = config.noclip.flag,
  callback = command_noclip
})

addCommand({
  command = 'kick',
  flag = config.kick.flag,
  callback = command_kick,
  target = true
})

addCommand({
  command = 'ban',
  flag = config.ban.flag,
  callback = command_ban,
  target = true
})

addCommand({
  command = 'freeze',
  flag = config.freeze.flag,
  callback = command_freeze,
  target = true
})

addCommand({
  command = 'unfreeze',
  flag = config.freeze.flag,
  callback = command_unfreeze,
  target = true
})

addCommand({
  command = 'bring',
  flag = config.bring.flag,
  callback = command_bring,
  target = true
})

addCommand({
  command = 'slap',
  flag = config.slap.flag,
  callback = command_slap,
  target = true
})

addCommand({
  command = 'tp',
  flag = config.tp.flag,
  callback = command_tp,
  target = true
})

addCommand({
  command = 'die',
  flag = config.die.flag,
  callback = command_die
})

addCommand({
  command = 'slay',
  flag = config.slay.flag,
  callback = command_slay,
  target = true
})

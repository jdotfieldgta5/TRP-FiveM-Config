
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["superadmin"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"You are superadmin."}) end},
    "player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem",
    "emergency.revive"
  },
  ["admin"] = {
    "admin.tickets",
    "admin.announce",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
    "player.tpto"
  },
  -- the group user is auto added to all logged players
  ["user"] = {
    "player.phone",
    "player.calladmin",
    "police.askid",
    "police.store_weapons",
    "police.seizable", -- can be seized
	"user.paycheck"
  },
  ["police"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "police.cloakroom",
    "police.pc",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "emergency.revive",
    "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.whitelisted",
	"police.paycheck"
  },
  ["emergency"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"emergency.cloakroom",
	"emergency.vehicle",
	"emergency.market",
	"emergency.whitelisted",
	"emergency.paycheck"
  },
  ["repair"] = {
    _config = { gtype = "job"},
    "vehicle.repair",
    "vehicle.replace",
    "repair.service",
	"repair.paycheck"
  },
  ["taxi"] = {
    _config = { gtype = "job" },
    "taxi.service",
	"taxi.vehicle",
	"taxi.paycheck"
  },
  ["citizen"] = {
    _config = { gtype = "job" }
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [11] = { -- give superadmin and admin group to James
    "superadmin",
    "admin",
    "emergency",
    "police"
  },
 [14] = { -- give superadmin and admin group to Nate
    "superadmin",
    "admin",
    "emergency",
    "police"
  },
 [12] = { -- give superadmin and admin group to Stone
    "superadmin",
    "admin",
    "emergency",
    "police"
  },
 [13] = { -- give superadmin and admin group to Reggie
    "superadmin",
    "admin",
    "emergency",
    "police"
  },
 [16] = { -- give superadmin and admin group to Blaze's bitchass
   "superadmin",
   "admin",
   "emergency",
   "police"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Job Selector"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
    "police",
    "emergency",
    "taxi",
    "repair",
    "citizen"
  }
}

return cfg


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
    "player.giveitem"
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
    "police.seizable",	-- can be seized
	"user.paycheck"
  },
  ["police"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end,
	  onspawn = function(player) vRPclient.notify(player,{"You are a Police Officer."}) end
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
    "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"cop.whitelisted",
	"police.paycheck"
  },
  ["emergency"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are EMS/Paramedic."}) end
	},
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"emergency.cloakroom",
	"emergency.vehicle",
	"emergency.market",
	"ems.whitelisted",
	"emergency.paycheck"
  },
  ["repair"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Mechanic."}) end
	},
    "vehicle.repair",
    "vehicle.replace",
    "repair.service",
	"mission.repair.satellite_dishes",
	"mission.repair.wind_turbines",
	"repair.paycheck"
  },
  ["taxi"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Taxi driver."}) end
	},
    "taxi.service",
	"taxi.vehicle",
	"taxi.paycheck"
  },
  ["citizen"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are Unemployed."}) end
	}
  },
  ["delivery"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You are a Delivery Driver."}) end
	},
	"mission.delivery.food",
	"delivery.vehicle",
	"delivery.paycheck"
  },
  ["president"] = {
    _config = { gtype = "job",
	onspawn = function(player) vRPclient.notify(player,{"You the President."}) end
	},
	"player.group.add",
    "player.group.remove",
	"player.list",
    "player.whitelist",
    "player.unwhitelist",
	"president.vehicle",
	"president.whitelisted",
	"president.cloakroom",
	"president.paycheck"
  },
  ["fbi"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end,
	  onspawn = function(player) vRPclient.notify(player,{"You are a Federal Agent."}) end
    },
    "fbi.cloakroom",
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
    "-police.store_weapons",
    "-police.seizable",	-- negative permission, police can't seize itself, even if another group add the permission
	"police.vehicle",
	"police.loadshop",
	"cop.whitelisted",
	"fbi.paycheck"
  },
  -- whitelist group for police, emergency and president jobs / add player to this group and user can view the job selection / search in the map
  -- moderator=president / president is guy from the server give a player group cop ems moderator when admin is offline / sallary : $10.000
  ["cop"] = {
    "cop.whitelisted"
  },
  ["ems"] = {  
    "ems.whitelisted"
  },
  ["moderator"] = {
    "president.whitelisted"
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Job Selector"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
    "taxi",
    "repair",
	"delivery",
    "citizen"
  },
  ["Police Job"] = {
    _config = {x = 441.203308105469, y = -981.135131835938, z = 30.6896057128906, blipid = 351, blipcolor = 1, permissions = {"cop.whitelisted"} },
	"police",
	"fbi",
	"citizen"
  },
  ["Emergency job"] = {
    _config = {x = 362.950988769531, y = -582.060119628906, z = 28.8373031616211, blipid = 351, blipcolor = 3, permissions = {"ems.whitelisted"} },
	"emergency",
	"citizen"
  },
  ["President job"] = {
    _config = {x = 109.550834655762, y = -1090.01123046875, z = 29.3024768829346, blipid = 351, blipcolor = 7, permissions = {"president.whitelisted"} },
    "president",
    "citizen"
  }
  
}

return cfg


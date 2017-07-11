
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["sandyshores1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""}
  },

  ["vinewood1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["vespuccibeach1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["paletobay1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["tataviammountains1"] = {
    _config = {blipid=154,blipcolor=2},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["chumash1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["eastlossantos1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["midlossantosrange"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["greatchaparral1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  },

  ["cypressflatsrange1"] = {
    _config = {blipid=154,blipcolor=1},
    ["WEAPON_STUNGUN"] = {"Stungun",1000,0,""},
    ["WEAPON_BOTTLE"] = {"Bottle",500,0,""},
    ["WEAPON_BAT"] = {"Bat",500,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",500,0,""},
    ["WEAPON_KNIFE"] = {"Knife",500,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",500,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",500,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nightstick",500,0,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Blade",500,0,""},
    ["WEAPON_MARKSMANPISTOL"] = {"Marksman Pistol",2000,15,""},
    ["WEAPON_SNSPISTOL"] = {"SNS Pistol",960,15,""},
    ["WEAPON_VINTAGEPISTOL"] = {"Vintage Pistol",950,15,""},
    ["WEAPON_PISTOL"] = {"Pistol",1000,15,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",1200,15,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1700,15,""},
    ["WEAPON_PISTOL50"] = {".50 Pistol",1800,15,""},
    ["WEAPON_HEAVYREVOLVER"] = {"Heavy Revolver",1500,15,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Saw Shotgun",8000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",6500,70,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",700,10,""},
    ["WEAPON_FLARE"] = {"Flare",250,5,""},
    ["WEAPON_FIREEXTINGUISHER"] = {"Fire Extinguisher",100,0,""},
    ["WEAPON_FLASHLIGHT"] = {"FlashLight",200,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",350,0,""} 
  }
}

-- list of gunshops positions

cfg.gunshops = {
  {"sandyshores1", 1692.41, 3758.22, 34.7053},
  {"vinewood1", 252.696, -48.2487, 69.941},
  {"eastlossantos1", 844.299, -1033.26, 28.1949},
  {"paletobay1", -331.624, 6082.46, 31.4548},
  {"vespuccibeach1", -664.147, -935.119, 21.8292},
  {"delperro1", -1320.983, -389.260, 36.483},
  {"greatchaparral1", -1119.48803710938,2697.08666992188,18.5541591644287},
  {"tataviammountains1", 2569.62, 294.453, 108.735},
  {"chumash1", -3172.60375976563,1085.74816894531,20.8387603759766},
  {"midlossantosrange", 21.70, -1107.41, 29.79},
  {"cypressflatsrange1", 810.15, -2156.88, 29.61}
}

return cfg

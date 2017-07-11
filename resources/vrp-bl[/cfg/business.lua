
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 25000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {431,70} 

-- positions of commerce chambers
cfg.commerce_chambers = {
	{-262.834899902344,-977.478454589844,31.2194175720215}
}

return cfg


-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local emergency_male = { model = "s_m_m_paramedic_01" }
local emergency_female = { model = "s_f_y_scrubs_01" }
local fbi_male = { model = "s_m_m_ciasec_01" }
local fbi_female = { model = "ig_michelle" }
--s_m_m_paramedic_01
--s_f_y_scrubs_01
--mp_m_freemode_01
--mp_f_freemode_01


for i=0,19 do
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["police"] = {
    _config = { permissions = {"police.cloakroom"} },
    ["Male uniform"] = {
      [3] = {30,0},
      [4] = {25,2},
      [6] = {24,0},
      [8] = {58,0},
      [11] = {55,0},
      ["p2"] = {2,0}
    },
    ["Female uniform"] = {
      [3] = {35,0},
      [4] = {30,0},
      [6] = {24,0},
      [8] = {6,0},
      [11] = {48,0},
      ["p2"] = {2,0}
    }
  },
  ["president"] = {
    _config = { permissions = {"president.cloakroom"} },
    ["Male uniform"] = {
	  [3] = {1,0},
	  [4] = {10,0},
	  [6] = {10,0},
	  [8] = {4,0},
	  [11] = {10,0},
	  ["p2"] = {-1,0}       
    },
    ["Female uniform"] = {
	  [3] = {0,0},
	  [4] = {37,0},
	  [6] = {13,0},
	  [8] = {21,1},
	  [11] = {24,3},
	  ["p2"] = {-1,0}
    }
},
  ["surgery"] = {
    _config = { not_uniform = true },
    ["Male"] = surgery_male,
    ["Female"] = surgery_female
  },
  ["emergency"] = {
    _config = { permissions = {"emergency.cloakroom"} },
    ["Male"] = emergency_male,
    ["Female"] = emergency_female
  },
  ["fbi"] = {
    _config = { permissions = {"fbi.cloakroom"} },
    ["FBI Male"] = fbi_male,
    ["FBI Female"] = fbi_female
  }
}

cfg.cloakrooms = {
  {"police", 1848.21, 3688.51, 34.2671},
  {"police", 444.743347167969, -975.502624511719, 30.6895961761475},
  {"police", 369.9228515625,-1607.12976074219,29.291934967041},
  {"president",105.48087310791,-1088.82177734375,29.3024787902832},
  {"surgery",1849.7425,3686.5759,34.2670},
  {"emergency",358.404418945313,-588.177612304688,28.8007564544678},
  {"fbi", 443.086456298828,-975.58447265625,30.6895999908447},
}

return cfg

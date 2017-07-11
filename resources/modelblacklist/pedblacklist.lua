-- CONFIG --

-- Blacklisted ped models
pedblacklist = {
	"CSB_BallasOG",
	"a_c_chimp",
	"a_c_chop",
	"a_c_cormorant",
	"a_c_cow",
	"a_c_coyote",
	"a_c_crow",
	"a_c_deer",
	"a_c_fish",
	"a_c_hen",
	"a_c_husky",
	"a_c_mtlion",
	"a_c_pig",
	"a_c_pigeon",
	"a_c_rat",
	"a_c_retriever",
	"a_c_rhesus",
	"a_c_rottweiler",
	"a_c_seagull",
	"a_c_sharktiger",
	"a_c_shepherd",
	"csb_cop",
	"s_m_y_hwaycop_01",
	"s_m_y_cop_01",
	"s_m_m_snowcop_01",
	"s_f_y_cop_01",
	"s_m_y_sheriff_01",
	"s_f_y_sheriff_01"
}

-- Defaults to this ped model if an error happened
defaultpedmodel = "a_m_y_skater_01"

-- CODE --

Citizen.CreateThread(function()
	while true do
		Wait(1)

		playerPed = GetPlayerPed(-1)
		if playerPed then
			playerModel = GetEntityModel(playerPed)

			if not prevPlayerModel then
				if isPedBlacklisted(prevPlayerModel) then
					SetPlayerModel(PlayerId(), GetHashKey(defaultpedmodel))
				else
					prevPlayerModel = playerModel
				end
			else
				if isPedBlacklisted(playerModel) then
					SetPlayerModel(PlayerId(), prevPlayerModel)
					sendForbiddenMessage("This ped model is blacklisted!")
				end

				prevPlayerModel = playerModel
			end
		end
	end
end)

function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(pedblacklist) do
		if model == GetHashKey(blacklistedPed) then
			return true
		end
	end

	return false
end
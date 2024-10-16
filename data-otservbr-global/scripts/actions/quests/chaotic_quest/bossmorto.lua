local bosses = {
	["legolas"] = { storage = Storage.chaotic.legolasdead },
	["gandalf"] = { storage = Storage.chaotic.gandalfdead },
	["eowyn"] = { storage = Storage.chaotic.eowyndead },
	["saruman"] = { storage = Storage.chaotic.sarumandead },
}

local bosseschaotic = CreatureEvent("chaoticbossdead")
function bosseschaotic.onDeath(creature)
	local bossConfig = bosses[creature:getName():lower()]
	if not bossConfig then
		return true
	end
	onDeathForDamagingPlayers(creature, function(creature, player)
		if bossConfig.storage then
			player:setStorageValue(bossConfig.storage, 1)
		end
		local bossesKilled = 0
		for value in pairs(bosses) do
			if player:getStorageValue(bosses[value].storage) > 0 then
				bossesKilled = bossesKilled + 1
			end
		end
		if bossesKilled >= 4 then -- number of mini bosses
			player:setStorageValue(Storage.chaotic.acessotorre, 1)
		end
	end)
	return true
end

bosseschaotic:register()
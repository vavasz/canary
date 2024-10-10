local bosses = {
	["immortal goshnar's spite"] = { storage = Storage.soul_war2.immortalgoshnarspitekilled },
}

local immortalgoshnarspitekilled = CreatureEvent("immortalgoshnarspitekilled")
function immortalgoshnarspitekilled.onDeath(creature)
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
		if bossesKilled >= 1 then -- number of mini bosses
			player:setStorageValue(Storage.soul_war2.immortalgoshnarspitekilled, 1)
		end
	end)
	return true
end

immortalgoshnarspitekilled:register()
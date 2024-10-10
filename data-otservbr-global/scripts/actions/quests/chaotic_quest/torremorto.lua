local bosses = {
	["lurtz"] = { storage = Storage.chaotic.lurtzdead },
	["gothmog"] = { storage = Storage.chaotic.gothmogdead },
}

local bossestorreboss = CreatureEvent("torrebossdeath")
function bossestorreboss.onDeath(creature)
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
		if bossesKilled >= 2 then -- number of mini bosses
			player:setStorageValue(Storage.chaotic.acessosauron, 1)
		end
	end)
	return true
end

bossestorreboss:register()
local bosses = {
	["immortal goshnar's malice"] = { storage = Storage.soul_war2.immortalgoshnarmalicekilled },
	["immortal goshnar's hatred"] = { storage = Storage.soul_war2.immortalgoshnarhatredkilled },
	["immortal goshnar's spite"] = { storage = Storage.soul_war2.immortalgoshnarspitekilled },
	["immortal goshnar's cruelty"] = { storage = Storage.soul_war2.immortalgoshnarcrueltykilled },
	["immortal goshnar's greed"] = { storage = Storage.soul_war2.immortalgoshnargreedkilled },
	["immortal goshnar's megalomania"] = { storage = Storage.soul_war2.immortalgoshnarmegalomaniakilled },
}

local immortalbossesSoulwar = CreatureEvent("immortalsoulwarsbossdeath")
function immortalbossesSoulwar.onDeath(creature)
	local bossConfig = bosses[creature:getName():lower()]
	if not bossConfig then
		return true
	end
	onDeathForDamagingPlayers(creature, function(creature, player)
		if bossConfig.storage then
			player:setStorageValue(bossConfig.storage, 1)
		end
	end)
	return true
end

immortalbossesSoulwar:register()

-- The Enhanced Primal Menace Death Event
local theEnhancedPrimalMenaceDeath = CreatureEvent("TheEnhancedPrimalMenaceDeath")

function theEnhancedPrimalMenaceDeath.onDeath(creature)
	local damageMap = creature:getMonster():getDamageMap()
	local enhancedHazard = Hazard.getByName("hazard.enhanced-gnomprona-gardens")
	if not enhancedHazard then
		return
	end
	local _, hazardPoints = enhancedHazard:getHazardPlayerAndPoints(damageMap)
	onDeathForDamagingPlayers(creature, function(creature, player)
		if player:getStorageValue(Storage.Quest.U12_90.PrimalOrdeal.Bosses.ThePrimalMenaceKilled) < 1 then
			player:setStorageValue(Storage.Quest.U12_90.PrimalOrdeal.Bosses.ThePrimalMenaceKilled, 1)
		end

		if enhancedHazard:getPlayerMaxLevel(player) == hazardPoints then
			enhancedHazard:levelUp(player)
		end
	end)
end

theEnhancedPrimalMenaceDeath:register()
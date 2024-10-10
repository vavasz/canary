local ifritdeath = CreatureEvent("ifritdeath")

local function hasOutfit(player)
	return player:hasOutfit(1723) or player:hasOutfit(1722)
end

function ifritdeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como ifrit para continuar sua batalha")
				player:addOutfit(1723, 0)
				player:addOutfit(1722, 0)
			end
		end
	end
end

ifritdeath:register()

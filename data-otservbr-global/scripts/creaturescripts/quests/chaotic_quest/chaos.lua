local chaosdeath = CreatureEvent("chaosdeath")

local function hasOutfit(player)
	return player:hasOutfit(1445) or player:hasOutfit(1444)
end

function chaosdeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Chaos para continuar sua batalha")
				player:addOutfit(1445, 0)
				player:addOutfit(1444, 0)
			end
		end
	end
end

chaosdeath:register()

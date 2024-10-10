local animadeath = CreatureEvent("animadeath")

local function hasOutfit(player)
	return player:hasOutfit(1203) or player:hasOutfit(1202)
end

function animadeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Anima para continuar sua batalha")
				player:addOutfit(1203, 0)
				player:addOutfit(1202, 0)
			end
		end
	end
end

animadeath:register()

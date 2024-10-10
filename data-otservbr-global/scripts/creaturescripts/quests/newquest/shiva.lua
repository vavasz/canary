local shivadeath = CreatureEvent("shivadeath")

local function hasOutfit(player)
	return player:hasOutfit(1613) or player:hasOutfit(1612)
end

function shivadeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como shiva para continuar sua batalha")
				player:addOutfit(1613, 0)
				player:addOutfit(1612, 0)
			end
		end
	end
end

shivadeath:register()

local hadesdeath = CreatureEvent("hadesdeath")

local function hasOutfit(player)
	return player:hasOutfit(1501) or player:hasOutfit(1500)
end

function hadesdeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como hades para continuar sua batalha")
				player:addOutfit(1501, 0)
				player:addOutfit(1500, 0)
			end
		end
	end
end

hadesdeath:register()

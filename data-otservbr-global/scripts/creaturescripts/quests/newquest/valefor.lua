local valefordeath = CreatureEvent("valefordeath")

local function hasOutfit(player)
	return player:hasOutfit(1187) or player:hasOutfit(1186)
end

function valefordeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como valefor para continuar sua batalha")
				player:addOutfit(1187, 0)
				player:addOutfit(1186, 0)
			end
		end
	end
end

valefordeath:register()

local gandalfdead = CreatureEvent("gandalfdead")

local function hasOutfit(player)
	return player:hasOutfit(1775) or player:hasOutfit(1774)
end
local function hasMount(player)
	return player:hasMount(202)
end

function gandalfdead.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Gandalf para continuar sua batalha")
				player:addOutfit(1775, 0)
				player:addOutfit(1774, 0)
				player:addOutfitAddon(1775, 1)
				player:addOutfitAddon(1774, 1)
				player:addOutfitAddon(1775, 2)
				player:addOutfitAddon(1774, 2)
			end
		end
		if player then
			if not hasMount(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Gandalf para continuar sua batalha")
				player:addMount(202)
			end
		end
	end
end

gandalfdead:register()
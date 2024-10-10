local eowyndead = CreatureEvent("eowyndead")

local function hasOutfit(player)
	return player:hasOutfit(1676) or player:hasOutfit(1675)
end
local function hasMount(player)
	return player:hasMount(216)
end

function eowyndead.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Eowyn para continuar sua batalha")
				player:addOutfit(1676, 0)
				player:addOutfit(1675, 0)
				player:addOutfitAddon(1676, 1)
				player:addOutfitAddon(1675, 1)
				player:addOutfitAddon(1676, 2)
				player:addOutfitAddon(1675, 2)
			end
		end
		if player then
			if not hasMount(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Eowyn para continuar sua batalha")
				player:addMount(216)
			end
		end
	end
end

eowyndead:register()
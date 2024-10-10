local sarumandead = CreatureEvent("sarumandead")

local function hasOutfit(player)
	return player:hasOutfit(1681) or player:hasOutfit(1680)
end
local function hasMount(player)
	return player:hasMount(217)
end

function sarumandead.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Saruman para continuar sua batalha")
				player:addOutfit(1681, 0)
				player:addOutfit(1680, 0)
				player:addOutfitAddon(1681, 1)
				player:addOutfitAddon(1680, 1)
				player:addOutfitAddon(1681, 2)
				player:addOutfitAddon(1680, 2)
			end
		end
		if player then
			if not hasMount(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Saruman para continuar sua batalha")
				player:addMount(217)
			end
		end
	end
end

sarumandead:register()

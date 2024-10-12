local legolasdead = CreatureEvent("legolasdead")

local function hasOutfit(player)
	return player:hasOutfit(1450) or player:hasOutfit(1449)
end
local function hasMount(player)
	return player:hasMount(50)
end

function legolasdead.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Legolas para continuar sua batalha")
				player:addOutfit(1450, 0)
				player:addOutfit(1449, 0)
				player:addOutfitAddon(1450, 1)
				player:addOutfitAddon(1449, 1)
				player:addOutfitAddon(1450, 2)
				player:addOutfitAddon(1449, 2)
			end
		end
		if player then
			if not hasMount(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Legolas para continuar sua batalha")
				player:addMount(50)
			end
		end
	end
end

legolasdead:register()
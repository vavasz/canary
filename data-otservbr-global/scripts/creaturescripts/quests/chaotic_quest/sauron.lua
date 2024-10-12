local saurondead = CreatureEvent("saurondead")

local function hasOutfit(player)
	return player:hasOutfit(664) or player:hasOutfit(665)
end
local function hasMount(player)
	return player:hasMount(223)
end

function saurondead.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Saruman para continuar sua batalha")
				player:addOutfit(664, 0)
				player:addOutfit(665, 0)
				player:addOutfitAddon(664, 1)
				player:addOutfitAddon(665, 1)
				player:addOutfitAddon(664, 2)
				player:addOutfitAddon(665, 2)
			end
		end
		if player then
			if not hasMount(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Saruman para continuar sua batalha")
				player:addMount(223)
			end
		end
	end
end

saurondead:register()

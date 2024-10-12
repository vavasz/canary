local bahamuthdeath = CreatureEvent("bahamuthdeath")

local function hasOutfit(player)
	return player:hasOutfit(1714) or player:hasOutfit(1713)
end

function bahamuthdeath.onDeath(creature, corpse, killer, mostDamage, unjustified, mostDamage_unjustified)
	if not creature then
		return
	end

	local damageMap = creature:getMonster():getDamageMap()
	for key, value in pairs(damageMap) do
		local player = Player(key)
		if player then
			if not hasOutfit(player) then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Parabens! Vista-se como Anima para continuar sua batalha")
				player:addOutfit(1714, 0)
				player:addOutfit(1713, 0)
			end
		end
	end
end

bahamuthdeath:register()

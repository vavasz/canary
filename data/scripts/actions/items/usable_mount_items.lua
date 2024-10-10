local config = {
	[23538] = { name = "vortexion", mountId = 94, tameMessage = "You receive the permission to ride a sparkion." },
	[23684] = { name = "neon sparkid", mountId = 98, tameMessage = "You receive the permission to ride a neon sparkid." },
	[23685] = { name = "vortexion", mountId = 99, tameMessage = "You receive the permission to ride a vortexion." },
	[32629] = { name = "haze", mountId = 162, achievement = "Nothing but Hot Air", tameMessage = "You are now versed to ride the haze!" },
	[49609] = { name = "Bulltar Mount", mountId = 231, tameMessage = "Voce adquiriu a montaria: Bulltar!" },
	[49623] = { name = "Dargka Mount", mountId = 232, tameMessage = "Voce adquiriu a montaria: Darkga!" },
	[49610] = { name = "Dusk Prayer", mountId = 165, tameMessage = "Voce adquiriu a montaria: Dusk Prayer!" },
	[48515] = { name = "Mutated Abomination", mountId = 206, tameMessage = "Voce adquiriu a montaria: Mutated Abomination!" },
	[49624] = { name = "Void Watcher", mountId = 179, tameMessage = "Voce adquiriu a montaria: Void Watcher!" },
	[49626] = { name = "Wrathfire Pegasus", mountId = 225, tameMessage = "Voce adquiriu a montaria: Wrathfire Pegasus!" },
	[48512] = { name = "Glacier Wyrm", mountId = 228, tameMessage = "Voce adquiriu a montaria: Clacier Wyrm!" },
	[49702] = { name = "Cerberus Champion", mountId = 146, tameMessage = "Voce adquiriu a montaria: Cerberus Champion!" },
	[48510] = { name = "Radiant Reaven", mountId = 193, tameMessage = "Voce adquiriu a montaria: Radiant Reaven!" },
	[48509] = { name = "Jousting Eagle", mountId = 145, tameMessage = "Voce adquiriu a montaria: Jousting Eagle!" },
	[49611] = { name = "Antelope", mountId = 163, tameMessage = "Voce adquiriu a montaria: Antelope!" },
	[49625] = { name = "MegaHydra", mountId = 234, tameMessage = "Voce adquiriu a montaria: MegaHydra!" },

}

local usableItemMounts = Action()

function usableItemMounts.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player:isPremium() then
		player:sendCancelMessage(RETURNVALUE_YOUNEEDPREMIUMACCOUNT)
		return true
	end

	local useItem = config[item.itemid]
	if player:hasMount(useItem.mountId) then
		return false
	end

	if useItem.achievement then
		player:addAchievement(useItem.achievement)
	end

	if table.contains({ 23538, 23684, 23685 }, item.itemid) then
		player:addAchievementProgress("Vortex Tamer", 3)
	end

	player:addMount(useItem.mountId)
	player:addAchievement("Natural Born Cowboy")
	player:say(useItem.tameMessage, TALKTYPE_MONSTER_SAY)
	item:remove(1)
	return true
end

for k, v in pairs(config) do
	usableItemMounts:id(k)
end

usableItemMounts:register()

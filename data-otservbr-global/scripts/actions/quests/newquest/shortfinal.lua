local storagesTable = {
	{ storage = Storage.newquest.ifritdeath, bossName = "ifrit" },
	{ storage = Storage.newquest.chaosdeath, bossName = "chaos" },
	{ storage = Storage.newquest.animadeath, bossName = "anima" },
	{ storage = Storage.newquest.shivadeath, bossName = "shiva" },
	{ storage = Storage.newquest.bahamuthdeath, bossName = "bahamuth" },
	{ storage = Storage.newquest.yojimbodeath, bossName = "yojimbo" },
	{ storage = Storage.newquest.valefordeath, bossName = "valefor" },
}

local shortcutfinal = MoveEvent()
function shortcutfinal.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getLevel() < 4000 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 4000 to enter.")
		player:teleportTo(fromPosition, true)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		return false
	end
	local text = ""
	for value in pairs(storagesTable) do
		if player:getStorageValue(storagesTable[value].storage) < 0 then
			text = text .. "\n" .. storagesTable[value].bossName
		end
	end
	if text == "" then
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce ainda nao matou todos os bosses para ter este atalho. Derrote:" .. text)
		player:teleportTo(fromPosition, true)
		return false
	end
end

shortcutfinal:type("stepin")
shortcutfinal:position({ x = 116, y = 3110, z = 0 })
shortcutfinal:register()
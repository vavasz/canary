local storagesTable = {
	{ storage = Storage.newquest.shivashort, bossName = "shiva" },
}

local shortcutshiva = MoveEvent()
function shortcutshiva.onStepIn(creature, item, position, fromPosition)
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
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce ainda nao liberou este atalho para o boss. Derrote:" .. text)
		player:teleportTo(fromPosition, true)
		return false
	end
end

shortcutshiva:type("stepin")
shortcutshiva:position({ x = 116, y = 3094, z = 0 })
shortcutshiva:register()
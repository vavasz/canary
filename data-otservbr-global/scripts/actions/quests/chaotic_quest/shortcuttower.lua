local storagesTable = {
	{ storage = Storage.chaotic.lurtzdead, bossName = "lurtz" },
	{ storage = Storage.chaotic.gothmogdead, bossName = "gothmog" },
}

local shortcuttower = MoveEvent()
function shortcuttower.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getLevel() < 250 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 250 to enter.")
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
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce nao pulverizou a horda Orc! Derrote:" .. text)
		player:teleportTo(fromPosition, true)
		return false
	end
end

shortcuttower:type("stepin")
shortcuttower:position({ x = 50, y = 1544, z = 1 })
shortcuttower:register()

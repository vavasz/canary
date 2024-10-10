local storagesTable = {
	{ storage = Storage.chaotic.legolasdead, bossName = "legolas" },
	{ storage = Storage.chaotic.gandalfdead, bossName = "gandalf" },
	{ storage = Storage.chaotic.eowyndead, bossName = "eowyn" },
	{ storage = Storage.chaotic.sarumandead, bossName = "saruman" },
}

local portaltorre = MoveEvent()
function portaltorre.onStepIn(creature, item, position, fromPosition)
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
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce ainda precisa pulverizar e recrutar:" .. text)
		player:teleportTo(fromPosition, true)
		return false
	end
end

portaltorre:type("stepin")
portaltorre:position({ x = 31888, y = 32348, z = 5 })
portaltorre:register()
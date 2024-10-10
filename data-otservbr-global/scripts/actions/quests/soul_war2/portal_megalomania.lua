local storagesTable = {
	{ storage = Storage.soul_war2.immortalgoshnarmalicekilled, bossName = "immortal goshnar's malice" },
	{ storage = Storage.soul_war2.immortalgoshnarhatredkilled, bossName = "immortal goshnar's hatred" },
	{ storage = Storage.soul_war2.immortalgoshnarspitekilled, bossName = "immortal goshnar's spite" },
	{ storage = Storage.soul_war2.immortalgoshnarcrueltykilled, bossName = "immortal goshnar's cruelty" },
	{ storage = Storage.soul_war2.immortalgoshnargreedkilled, bossName = "immortal goshnar's greed" },
}

local portalimmortalmegalomania = MoveEvent()
function portalimmortalmegalomania.onStepIn(creature, item, position, fromPosition)
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
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You still need to defeat:" .. text)
		player:teleportTo(fromPosition, true)
		return false
	end
end

portalimmortalmegalomania:type("stepin")
portalimmortalmegalomania:position({ x = 335, y = 4305, z = 0 })
portalimmortalmegalomania:register()

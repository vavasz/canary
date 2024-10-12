local checkvip = MoveEvent()

function checkvip.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	if player:getStorageValue(Storage.VipAccess) == -1 then
		player:teleportTo(fromPosition, true)
		fromPosition:sendMagicEffect(CONST_ME_HOLYDAMAGE)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You don't have a Vip Access.")
		return true
	end

	local vipteleport = Position(32360, 32240, 7)
	player:teleportTo(vipteleport)
	player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Welcome to Vip Island, have fun!")
	return true
end

checkvip:type("stepin")
checkvip:uid(12011)
checkvip:register()
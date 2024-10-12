local portalRewardImmortal = MoveEvent()
function portalRewardImmortal.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end
	if player:getStorageValue(Storage.soul_war2.immortalgoshnarmegalomaniakilled) < 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Only warriors who defeated Immortal Goshnar's Megalomania can access this area.")
		player:teleportTo(fromPosition, true)
		return false
	end

	player:teleportTo(Position(345, 4286, 0))
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

portalRewardImmortal:type("stepin")
portalRewardImmortal:position({ x = 345, y = 4291, z = 0 })
portalRewardImmortal:register()

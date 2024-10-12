
local setting = {
	[5001] = {
		position = Position(31862, 32360, 6),
		minLevel = 0,
		needVip = false,
		requiredKeyValue = "first-access",
	},
}

local portalTeleportEvent = MoveEvent()

function portalTeleportEvent.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return true
	end

	local portalConfig = setting[item.actionid]
	if not portalConfig then
		return true
	end

	-- Check if the player meets the minimum level requirement
	if portalConfig.minLevel and player:getLevel() < portalConfig.minLevel then
		player:sendTextMessage(MESSAGE_STATUS, "You need to be at least level " .. portalConfig.minLevel .. " to enter this portal.")
		player:teleportTo(fromPosition, true)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	-- Check if the player has VIP access
	if portalConfig.needVip and not player:isVip() then
		player:sendTextMessage(MESSAGE_STATUS, "You need to be a VIP to enter this portal.")
		player:teleportTo(fromPosition, true)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	-- Check if the player has the required key value
	if portalConfig.requiredKeyValue and not player:kv():get(portalConfig.requiredKeyValue) then
		player:sendTextMessage(MESSAGE_STATUS, "You need to have access to enter this portal.")
		player:teleportTo(fromPosition, true)
		fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
		return true
	end

	-- Set a key value if not already set, with a customizable value
	if portalConfig.keyValueToSet and not player:kv():get(portalConfig.keyValueToSet.key) then
		player:kv():set(portalConfig.keyValueToSet.key, portalConfig.keyValueToSet.value)
	end

	-- Teleport the player to the configured position
	local teleportPosition = portalConfig.position
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:teleportTo(teleportPosition)
	teleportPosition:sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

portalTeleportEvent:type("stepin")

for index, _ in pairs(setting) do
	portalTeleportEvent:aid(index)
end

portalTeleportEvent:register()


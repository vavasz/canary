----------- Bakragore Entrance Check -----------
local entrance = {
	position = Position(484, 4891, 1),
	destination = Position(558, 4842, 1), -- Bakragore lever room
}

local bakragoreEntrance = MoveEvent()

function bakragoreEntrance.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return false
	end

	if player:getLevel() < 250 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need at least level 250 to enter.")
		player:teleportTo(fromPosition, true)
		return false
	end

	local now, text = os.time(), ""
	for _, bossName in pairs({ "unbreakable murcion", "unbreakable chagorz", "unbreakable ichgahal", "unbreakable vemiath" }) do
		local cooldown = player:kv():scoped("rotten-blood-quest"):scoped(bossName):get("cooldown") or 0
		if cooldown <= now then
			text = text .. "\n" .. bossName:titleCase()
		end
	end

	if text ~= "" then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You still need to defeat: " .. text)
		player:teleportTo(fromPosition, true)
		return false
	end

	local taints = player:kv():scoped("rotten-blood-quest"):get("taints") or 0
	if taints < 4 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have %i taints.", taints))
		player:teleportTo(fromPosition, true)
		return false
	end

	if entrance.position == position then
		player:teleportTo(entrance.destination)
		player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	end

	return true
end

bakragoreEntrance:type("stepin")
bakragoreEntrance:position(entrance.position)
bakragoreEntrance:register()

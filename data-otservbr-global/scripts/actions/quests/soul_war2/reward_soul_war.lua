local rewards = {
	[64901] = 49592,
}

local soulwar2questreward = Action()
function soulwar2questreward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.soul_war2.immortalquestreward) < 1 then
		player:setStorageValue(Storage.soul_war2.immortalquestreward, 1)
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Aqui esta seu premio." .. ItemType(rewards[item.uid]):getName() .. ".")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	soulwar2questreward:uid(uniqueId)
end

soulwar2questreward:register()
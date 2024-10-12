local rewards = {
	[61890] = 47374,
	[61891] = 47375,
	[61892] = 47376,
	[61893] = 47371,
	[61894] = 47372,
	[61895] = 45643,
	[61896] = 45644,
	[61907] = 45639,
	[61908] = 45641,
}

local umanelreward = Action()
function umanelreward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.chaotic.questumanel) < 1 then
		player:setStorageValue(Storage.chaotic.questumanel, 1)
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce nos ajudou a pulverizar o caos do mundo! Junto a isso, recebeu um " .. ItemType(rewards[item.uid]):getName() .. ".")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	umanelreward:uid(uniqueId)
end

umanelreward:register()

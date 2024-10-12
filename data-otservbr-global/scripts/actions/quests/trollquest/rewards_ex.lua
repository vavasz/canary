local rewards = {
	[62401] = {19373, 3394, 3390, 44759, 3365, 5903, 3393, 3437, 3278}
}

local exquestreward = Action()
function exquestreward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.exquest.rewardex) < 1 then
		player:setStorageValue(Storage.exquest.rewardex, 1)
		for _, rewardId in ipairs(rewards[item.uid]) do
			player:addItem(rewardId, 1)
		end
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Muito bom! Voce ganhou alguns itens interessantes.")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, _ in pairs(rewards) do
	exquestreward:uid(uniqueId)
end

exquestreward:register()



local rewards = {
	[1000] = 49703,
}

local iniciobibi = Action()
function iniciobibi.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.exquest.iniciobibi) < 1 then
		player:setStorageValue(Storage.exquest.iniciobibi, 1)
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce achou o que nao deveria ser achado. Leve ao Gabrienzo este " .. ItemType(rewards[item.uid]):getName() .. ".")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	iniciobibi:uid(uniqueId)
end

iniciobibi:register()
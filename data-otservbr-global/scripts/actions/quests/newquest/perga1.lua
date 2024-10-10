local rewards = {
	[64600] = 49424,
}

local perga1 = Action()
function perga1.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.newquest.item1) < 1 then
		player:setStorageValue(Storage.newquest.item1, 1)
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce achou um pergaminho! Com ele, talvez voce consiga acessar um certo local" .. ItemType(rewards[item.uid]):getName() .. ".")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	perga1:uid(uniqueId)
end

perga1:register()

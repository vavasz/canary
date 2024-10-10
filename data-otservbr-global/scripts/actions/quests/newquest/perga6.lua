local rewards = {
	[64605] = 49429,
}

local perga6 = Action()
function perga6.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(Storage.newquest.item6) < 1 then
		player:setStorageValue(Storage.newquest.item6, 1)
		player:addItem(rewards[item.uid], 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Voce achou um pergaminho! Com ele, talvez voce consiga acessar um certo local" .. ItemType(rewards[item.uid]):getName() .. ".")
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
	end
	return true
end

for uniqueId, info in pairs(rewards) do
	perga6:uid(uniqueId)
end

perga6:register()
local items = Action()
local levers = {
	[1523] = {id = 37110, count = 50, value = 1000000000}, -- Exalted core
	[1524] = {id = 22721, count = 5, value = 1000000000}, -- paralyze rune
	[1525] = {id = 22723, count = 5, value = 1000000000}, -- firebomb rune
}

function items.onUse(player, item, fromPosition, target, toPosition, isHotkey)

	local choose = levers[item.actionid]

	if not choose then
		return false
	end

	--[[if player:getStorageValue(77124) >= os.time() then
		player:sendCancelMessage("Você precisa esperar 1 segundo entre uma compra e outra.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end]]--

	local userItem = ItemType(choose.id)
	local itemWeight = userItem:getWeight() * choose.count

	if player:getFreeCapacity() < itemWeight then
		player:sendCancelMessage("Voc3 nao tem espaço suficiente.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end

	if not player:removeMoney(choose.value) then
		player:sendCancelMessage("Voc3 nao tem dinheiro suficiente.")
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		return true
	end
	
	local buy = Game.createItem(choose.id, choose.count)
	if player:addItemEx(buy) == RETURNVALUE_CONTAINERNOTENOUGHROOM then
		sendMailbox(player:getId(), choose.id, choose.count)
		player:sendTextMessage(MESSAGE_STATUS_BLUE_LIGHT, "Voce nao possui espaço em sua backpack e seu item foi enviado para o mailbox.")
	end

	player:sendCancelMessage("Voce comprou ".. choose.count .."x ".. userItem:getName() ..".")
	player:addItem(choose.id,choose.count)
	player:getPosition():sendMagicEffect(29)
	--player:setStorageValue(77124, os.time() + 1)

	item:transform(item.itemid == 2773 and 2772 or 2773)

	return true
end

items:aid(1522,1523,1524,1525,1526,1527,1528,1517,1518,1519,1520,1521,1529,1530,1531)
items:register()

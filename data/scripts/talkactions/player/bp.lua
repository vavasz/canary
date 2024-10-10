local aol = TalkAction("!bp")

function aol.onSay(player, words, param)
	local totalCost = 10000 + (configManager.getNumber(configKeys.BUY_AOL_COMMAND_FEE) or 0)
	if player:removeMoneyBank(totalCost) then
		player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
		player:addItem(2854, 1)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have bought a backpack for %i gold!", totalCost))
	else
		player:getPosition():sendMagicEffect(CONST_ME_POFF)
		player:sendCancelMessage(string.format("You do not have enough money. You need %i gold to buy a backpack!", totalCost))
	end
	return true
end

aol:groupType("normal")
aol:register()

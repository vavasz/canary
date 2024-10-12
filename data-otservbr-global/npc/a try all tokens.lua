local internalNpcName = "test npc"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName
npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
    lookType = 1722,
    lookHead = 1,
    lookBody = 114,
    lookLegs = 114,
    lookFeet = 114,
    lookAddons = 3,
}

npcConfig.flags = {
    floorchange = false,
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.voices = {
    interval = 15000,
    chance = 50,
    { text = "Compre seus itens valiosos aqui!" }
}

npcConfigcastle.currency = 49888 	
npcConfigcastle.shop = {
{ itemName = "greater mystic gem", clientId = 44613, buy = 50, count = 1 },
}
npcConfigboss.currency = 49921 	
npcConfigcastle.shop = {
{ itemName = "greater mystic gem", clientId = 44613, buy = 50, count = 1 },
}
npcConfigtask.currency = 49891 	
npcConfigcastle.shop = {
{ itemName = "greater mystic gem", clientId = 44613, buy = 50, count = 1 },
}
npcConfighunting.currency = 49919  
npcConfigcastle.shop = {
{ itemName = "greater mystic gem", clientId = 44613, buy = 50, count = 1 },
}
npcConfigbosstask.currency = 49916 
npcConfigcastle.shop = {
{ itemName = "greater mystic gem", clientId = 44613, buy = 50, count = 1 },
}


npcType.onSay = function(npc, creature, type, message)
    if message then
        if MsgContains(message, "castle") then
            npcHandler:say({"Vamos aos negocios,"}, npc, creature)
			npc:openShopWindow(creature)
        elseif MsgContains(message, "boss") then
            npcHandler:say({"Vamos aos negocios,"}, npc, creature)
			npc:openShopWindow(creature)
        elseif MsgContains(message, "task") then
            npcHandler:say({"Vamos aos negocios,"}, npc, creature)
			npc:openShopWindow(creature)
        elseif MsgContains(message, "hunting") then
            npcHandler:say({"Vamos aos negocios,"}, npc, creature)
			npc:openShopWindow(creature)
        elseif MsgContains(message, "boss task") then
            npcHandler:say({"Vamos aos negocios,"}, npc, creature)
			npc:openShopWindow(creature)
        end
    end
end

npcHandler:setMessage(MESSAGE_GREET, "Bem vindo. Vamos negociar {castle}, {boss}, {hunting}, {task} ou {boss task} points?")
	npcHandler:setMessage(MESSAGE_FAREWELL, "Adios.")
	npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")
	
	npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
	npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)

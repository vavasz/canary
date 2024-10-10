local internalNpcName = "Utilities"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1663,
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

npcConfig.shop = {
	{ itemName = "axe ring", clientId = 3092, buy = 500 },
	{ itemName = "Enhanced Paladin Boots", clientId = 49497, sell = 10000000 },
	{ itemName = "Enhanced Druid Boots", clientId = 49537, sell = 10000000 },
	{ itemName = "Immortal Knight Boots", clientId = 49660, sell = 10000000 },
	{ itemName = "Unfireing Sorcerer Boots", clientId = 49694, sell = 10000000 },
	{ itemName = "Unfreezing Druid Boots", clientId = 49690, sell = 10000000 },
	{ itemName = "Unholy Paladin Boots", clientId = 49686, sell = 10000000 },
	{ itemName = "Undyeing Knight Boots", clientId = 49677, sell = 10000000 },
	{ itemName = "Enhanced Sorcerer Boots", clientId = 49535, sell = 10000000 },
	{ itemName = "Enhanced Knight Boots", clientId = 49536, sell = 10000000 },
	{ itemName = "Immortal Sorcerer Boots", clientId = 49672, sell = 10000000 },
	{ itemName = "Immortal Druid Boots", clientId = 49668, sell = 10000000 },
	{ itemName = "Immortal Paladin Boots", clientId = 49664, sell = 10000000 },
	{ itemName = "exalted core", clientId = 37110, buy = 10000000 },
	{ itemName = "soulbastion", clientId = 34099, sell = 10000000 },
	{ itemName = "spectral bolt", clientId = 35902, buy = 150 },
	{ itemName = "stone skin amulet", clientId = 3081, buy = 500 },
	{ itemName = "pair of soulwalkers", clientId = 34097, sell = 10000000 },
	{ itemName = "apair of soulstalkers", clientId = 34098, sell = 10000000 },
	{ itemName = "charged spiritthorn ring", clientId = 39177, sell = 10000000 },
	{ itemName = "spiritthorn ring", clientId = 39179, sell = 10000000 },
	{ itemName = "charged arcanomancer sigil", clientId = 39183, sell = 10000000 },
	{ itemName = "arcanomancer sigil", clientId = 39185, sell = 10000000 },
	{ itemName = "charged arboreal ring", clientId = 39186, sell = 10000000 },
	{ itemName = "arboreal ring", clientId = 39188, sell = 10000000 },
	{ itemName = "arboreal tome", clientId = 39154, sell = 10000000 },
	{ itemName = "alicorn quiver", clientId = 39150, sell = 10000000 },
	{ itemName = "arcanomancer folio", clientId = 39152, sell = 10000000 },
	{ itemName = "brown mushroom", clientId = 3725, buy = 10 },
	{ itemName = "prismatic necklace", clientId = 16113, buy = 100000 },
	{ itemName = "prismatic ring", clientId = 16114, buy = 1000000 },
	{ itemName = "backpack", clientId = 2854, buy = 10 },
	{ itemName = "bronze amulet", clientId = 3056, buy = 100, count = 200 },
	{ itemName = "club ring", clientId = 3093, buy = 500 },
	{ itemName = "dragon necklace", clientId = 3085, buy = 1000, count = 200 },
	{ itemName = "dwarven ring", clientId = 3097, buy = 3000 },
	{ itemName = "elven amulet", clientId = 3082, buy = 500, count = 50 },
	{ itemName = "energy ring", clientId = 3051, buy = 5000 },
	{ itemName = "garlic necklace", clientId = 3083, buy = 100, count = 150 },
	{ itemName = "life ring", clientId = 3052, buy = 900 },
	{ itemName = "might ring", clientId = 3048, buy = 5000, count = 20 },
	{ itemName = "power ring", clientId = 3050, buy = 100 },
	{ itemName = "protection amulet", clientId = 3084, buy = 700, count = 250 },
	{ itemName = "ring of healing", clientId = 3098, buy = 2000 },
	{ itemName = "silver amulet", clientId = 3054, buy = 100, count = 200 },
	{ itemName = "stealth ring", clientId = 3049, buy = 5000 },
	{ itemName = "stone skin amulet", clientId = 3081, buy = 5000, count = 5 },
	{ itemName = "strange talisman", clientId = 3045, buy = 100, count = 200 },
	{ itemName = "sword ring", clientId = 3091, buy = 500 },
	{ itemName = "time ring", clientId = 3053, buy = 5000 },
	{ itemName = "exercise axe", clientId = 28553, buy = 262500, count = 500 },
	{ itemName = "exercise bow", clientId = 28555, buy = 262500, count = 500 },
	{ itemName = "exercise club", clientId = 28554, buy = 262500, count = 500 },
	{ itemName = "exercise shield", clientId = 44065, buy = 262500, count = 500 },
	{ itemName = "exercise sword", clientId = 28552, buy = 262500, count = 500 },
	{ itemName = "durable exercise axe", clientId = 35280, buy = 945000, count = 1800 },
	{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, count = 1800 },
	{ itemName = "durable exercise club", clientId = 35281, buy = 945000, count = 1800 },
	{ itemName = "durable exercise shield", clientId = 44066, buy = 945000, count = 1800 },
	{ itemName = "durable exercise sword", clientId = 35279, buy = 945000, count = 1800 },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise club", clientId = 35287, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise shield", clientId = 44067, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 7560000, count = 14400 },
}
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

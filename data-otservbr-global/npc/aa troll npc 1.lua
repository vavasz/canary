local internalNpcName = "A famosa Ex"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 136,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 1,
	lookAddons = 1,
	lookMount = 0,
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

local function creatureSayCallback(npc, creature, type, message)
	local player = Player(creature)
	local playerId = player:getId()

	if not npcHandler:checkInteraction(npc, creature) then
		return false
	end

	if npcHandler:getTopic(playerId) == 0 then
		if MsgContains(message, "chavecar") then
			npcHandler:say({
				"Misericordia, que odio. Eu sei, eu gosto que ele fique me chavecando porque ne, quem nao gosta, mas meu deus. Sai do meu pe",
				"Eu lembro da epoca que ele ficava falando sobre fazer coisas nos joguinhos dele de mim, e ao inves de me dar um presente, ficava la 'olha criei voce'. Meu deus....",
				"Aparentemente o fascinio dele trouxe voce ate aqui... Que coragem, porque nocao nao tem.",
				"Mas se quiser, a gente pode um dia tomar uma {cachaca}, o que acha?",
			}, npc, creature)
		end
	end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "cachaca") then
					npcHandler:say({
						"SIMMMMM muito bom, principalmente aqueles de sabor. Ai ai, meu deus que delicia.",
						"As vezes eu tomo ate antes do trabalho uns golinhos, so pra acordar. 6h da manha ja e hora, ne?",
						"Mas, se a gente for sair a noite, vamos pra um lugar que amanheca aberto, por favor",
						"Eu realmente nao consigo ficar {sem isso}.",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "sem isso") then
					npcHandler:say({
						"Se for pra ficar boa, eu tomo remedio. Se eu saio, eu quero cachaca e nao me importo, nem com voce no caso rs.",
						"Se voce puder me dar um de cada sabor, eu agradeco. NAO ESQUECE DO MEU LANCHE.",
						"Se voce nao conseguir me dar um de cada sabor de uma vez so, mistura todos, da nada. O resultado final tem que ser o de TUTTI-FRUTTI, eu adoro ele. Sai misturando tudo que uma hora voce consegue.",
					}, npc, creature)
				end
			end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "MIGO VEM AQUI, antes que o corno venha me {chavecar} de novo")
npcHandler:setMessage(MESSAGE_FAREWELL, "Meu cigarro acabou, droga.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

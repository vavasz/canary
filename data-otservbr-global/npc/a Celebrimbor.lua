local internalNpcName = "Celebrimbor"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 48,
	lookHead = 78,
	lookBody = 76,
	lookLegs = 19,
	lookFeet = 38,
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
		if MsgContains(message, "contar") then
			npcHandler:say({
				"Caso voce tenha entrado nos portais desses seres caoticos, notou que as coisas nao andam muito boas por aqui. O caos tem dominado ate mesmo os mais puros. ...",
				"Nossos quartro grandes guerreiros foram corrompidos pelo caos. Porem, ha uma maneira de conseguirmos lidar com isso, e chegarmos ate Sauron. ...",
				"Dentro destes portais, em algum lugar, ha um teleport. Nele voce enfrentara pessoalmente os grandes guerreiros. Tente uma batalha digna com eles. ...",
				"Eu vi nos pensamentos deles, que eles so querem uma prova, que voce e mais forte que Sauron. Se voce {derrota-los}, eles se aliarao a nossa causa. ...",
			}, npc, creature)
		end
	end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "derrota-los") then
					npcHandler:say({
						"Os quatro grandes guerreiros sao muito orgulhosos. Quando notaram que nossas tropas estavam se dissipando, eles decidiram se aliar a Sauron. ...",
						"Porem, a bondade em seus coracoes ainda existe. Eles no fundo, querem apenas um adversario digno. ...",
						"Se voce enfrenta-los, eles lhe fornecerao suas vestes e montarias. Alem disso, se aliarao a nossa causa.",
						"Apos derrota-los, me informe. Posso ter mais informacoes {uteis}",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "uteis") then
					npcHandler:say({
						"Agora que voce provavelmente ja se aliou aos quatro grandes guerreiros, as torres sao seu destino. ...",
						"As hordas de orcs invadiram os 7 andares do nosso castelo, corrompendo tudo o que viam. ...",
						"Desca todos os 7 andares, e encontrara seus lideres. Derrote-os, e estara a um passo de enfrentar {Sauron}, e nos livrar de tanta maldade.",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "sauron") then
					npcHandler:say({
						"Sauron se apoderou de armas e de um anel portadores do Caos. Sao armas extremamente fortes, mais ainda do que as que conhecemos como Sanguine. ...",
						"Eu tenho certeza que voce e capaz de derrota-lo. Por favor, faça isso. Reinvidique nosso trono, e receba sua reocmpensa.",
					}, npc, creature)
				end
			end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Entao voce tem lutado contra as forcas do mal. Eu posso lhe {contar} o que sei caso tenha interesse em entender como funcionam as coisas.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adios.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

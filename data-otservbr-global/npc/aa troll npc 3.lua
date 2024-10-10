local internalNpcName = "Psiquiatra"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
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
		if MsgContains(message, "objetivo") then
			npcHandler:say({
				"Aparentemente voce esta passando por um momento delicado, pra estar aqui. Eu diria que vai piorar, mas seria antietico.",
				"com mais alguns meses comigo, garanto que talvez voce se sinta melhor. Em caso de indicacao, nao, calma...",
				"Me lembrei de um caso que prefiro nao comentar muito, mas voce parece legal.",
				"Posso te contar sobre esse {caso}, se quiser",
			}, npc, creature)
		end
	end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "caso") then
					npcHandler:say({
						"Eu tratei de um rapaz uma vez, que estava sofrendo por nao saber como sair da situacao em que se encontrava... Todos passamos por isso, nao?",
						"O problema e que ele era um cliente fixo, e acabou indicando a antiga companheira dele. Uma tragedia.",
						"Infelizmente, voce ja sabe o que aconteceu. Acabamos nos aproximando, e...",
						"Bom. Voce nao veio ate aqui pra isso. Acredito que queira {ajuda-lo} de alguma forma.",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "ajuda-lo") then
					npcHandler:say({
						"Fale com o coitado por ali. Ele vai te explicar um pouco, mas ja digo, ele e louco.",
						"Se voce entender o que esta acontecendo neste local, talvez consiga prosseguir. Recomendo paciencia, e muita agua.",
						"Lembre-se: O fruto do trabalho e esforco e a riqueza. O fruto do carinho e paixao e o amor. Juntando os dois, voce tera felicidade. Adeus.",
					}, npc, creature)
				end
			end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Boa tarde. Sendo {objetivo}, me diga o que procura.")
npcHandler:setMessage(MESSAGE_FAREWELL, "A sessao custou 120 reais.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

local internalNpcName = "Balthier"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1725,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
	lookMount = 1632,
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
		if MsgContains(message, "ilha nova") then
			npcHandler:say({
				"Entao voce busca novos ares, interessante. Se voce nao ler com atencao tudo o que eu vou dizer, voce vai ficar mais perdido que surdo em bingo.",
				"Caso voce tenha notado, aparentemente seus esforcos nos ajudaram. O caos nao domina mais nossa dimensao, porem, algo muito pior esta por vir.",
				"Antes de tudo, voce notou que nao ha bosses sanguine no servidor. Errado estava voce.",
				"Ao sul, ha um teleport que lhe colocara a prova, se voce merece realmente continuar nossa jornada. Me retorne com sucesso, e lhe informarei {mais}",
			}, npc, creature)
		end
	end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "mais") then
					npcHandler:say({
						"Ou voce e uma mula alada que nao leu absolutamente nada do que eu disse, ou voce derrotou o chefe Heavy Bakragore. Em ambos os casos, lhe explicarei o que esta acontecendo.",
						"O administrador desse server e meio idiota, e ele criou uma rotacao de bosses nova pro servidor. Porem, nao e tao simlpes como parece.",
						"Caso voce tenha derrotado de fato o boss Heavy Bakragore, voce notare que em sua sala de alavanca ha um teleport, que lhe levara a uma ilha familiar, porem, corrompida.",
						"Aparentemente o ADM gosta de Final Fantasy, e decidiu criar uma situacao diferente. Caso queira {saber}, me informe",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "saber") then
					npcHandler:say({
						"Existem 6 ilhas que foram invadidas pelo fogo no rabo do ADM. Em cada uma delas, ha um item escondido, que lhe permitira acessar o boss da ilha.",
						"Esses itens estao espalhados dentro de baus e caixas dentro das ilhas. Nao ha dicas, nao ha sorte. Voce precisara de paciencia e persistencia.",
						"Estes itens possuem funcionalidades unicas, que lhe permitirao o acesso ao teleport dos {bosses}. Sem eles, voca nao podera acessa-los.",
					}, npc, creature)
				end
			end
			if npcHandler:getTopic(playerId) == 0 then
				if MsgContains(message, "bosses") then
					npcHandler:say({
						"Cada boss tem a chance minima de dropar um item completamente novo, acima dos proprios sanguine. Tente sua sorte, muchacho.",
						"E ah, obrigado por ler tudo. Eu nao sou criativo, deu uma trabalheira. Ultima coisa. Caso queira saber sobre as PAREDES da ultima sala... Nem tudo e indestrutivel. Adeus",
					}, npc, creature)
				end
			end
	return true
end

npcHandler:setMessage(MESSAGE_GREET, "Cara, voce e meio doente de estar aqui. Caso seja de fato, me pergunte sobre a {ilha nova}, e por favor, LEIA.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Cegueta.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Boa sorte, meu bom")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

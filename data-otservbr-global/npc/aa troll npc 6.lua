local internalNpcName = "Waldir"
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
 

		if MsgContains(message, "falar") then
			npcHandler:say("Meu bom, primeiramente, obrigado por estar aqui com a gente.", npc, creature)
			npcHandler:say("As vezes, a gente se pergunta: O que e diversao? O que me faz me sentir... Bem?", npc, creature)
			npcHandler:say("No meu caso, sempre foi o ato de prover.", npc, creature)
			npcHandler:say("O que eu sempre quis, foi conseguir fazer para os outros, o que eu realmente queria que fosse {feito} para mim.", npc, creature)
		elseif MsgContains(message, "feito") then
			npcHandler:say("Essa historia de Karma, a gente colhe o que planta, e bem real. Eu sou prova bem viva disso, porem pelo lado negativo.", npc, creature)
			npcHandler:say("Claro, pessoas sempre entram e saem das nossas vidas. Porem, eu vacilei algumas vezes.", npc, creature)
			npcHandler:say("Todo esse lance de ex, psiquiatra e etc, foi um absoluto meme, pra te manter entretido ate aqui.", npc, creature)
			npcHandler:say("O mapa preto, as traps, os bosses. Tudo isso e pra mostrar a voce, que absolutamente TUDO e {possivel} aqui.", npc, creature)
		elseif MsgContains(message, "possivel") then
			npcHandler:say("Se voce chegou ate aqui, voce ja entendeu como minha mente funciona. Eu nao vou parar tao cedo.", npc, creature)
			npcHandler:say("Entenda. Isso nao e um server pra apenas cacar e rushar top level. Isso aqui e pra ser intrigante.", npc, creature)
			npcHandler:say("Bom. Chega de mimimi. O que eu quero que voce entenda, e que eu vou fazer de tudo, TUDO, pra voce ter conteudo.", npc, creature)
			npcHandler:say("Entao, muito obrigado por ter se esforcado tanto pra chegar ate aqui. No bau, ha algumas recompensas. Espero que tenha valido a pena pra voce!", npc, creature)
		end
	end
	


npcHandler:setMessage(MESSAGE_GREET, "Ah, que bom que voce chegou ate aqui. Deixa eu te {falar} uma coisa.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Tomara que tenha se divertido?.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ate logo, meu bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

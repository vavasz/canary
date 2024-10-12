local internalNpcName = "Vavasz"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1288,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 3,
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

    if player:getStorageValue(Storage.exquest.itensex) > 0 then
        npcHandler:say("Ja te expliquei toda a situacao. Fale com ela, ou com o maldito ali em cima.", npc, creature)
        npcHandler:removeInteraction(npc, creature)
        return
    end

    if MsgContains(message, "ajudar") then
        npcHandler:say({
            "Cara, fico feliz por ter voce aqui, antes de tudo. Voce esta me ajudando a conseguir lidar com tanta coisa...",
            "Eu vou te dar uma luz sobre esse lugar, mas preciso que preste atencao.",
            "Voce fez a quest nova, certo? Dos outfits. Voce viu as paredes, os pisos, etc. Aqui haverao coisas piores.",
            "E o que mais vai te irritar, e o {caminho}. Fiz de proposito, me odeie.",
        }, npc, creature)
    elseif MsgContains(message, "caminho") then
        npcHandler:say({
            "Neste local, tudo e invisivel. Eu fiz como teste, para experimentar umas coisas. Aparentemente consegui.",
            "Voce sera trolado diversas vezes, diversas, mas vai conseguir. Eu confio em voce.",
            "Use sua cabeca, entenda as mensagens, preste atencao nelas. Tudo aqui e spoiler, tudo aqui vale algo.",
            "Diferente {dela}, eu espero que voce goste.",
        }, npc, creature)
    elseif MsgContains(message, "dela") then
        npcHandler:say("Vou te contar um pouco sobre como conseguir lidar com ela, mas tu trouxe o {bongue do pai}? Preciso me acalmar.", npc, creature)
    elseif MsgContains(message, "bongue do pai") then
        npcHandler:say("Tu ta com ele ai meu bom? se {yes}, manda pra mim", npc, creature)
    elseif MsgContains(message, "yes") then
        if player:removeItem(49709, 1) then
            npcHandler:say("Obrigado. Na real, nao preciso te falar muito sobre ela. Com isso em maos, e conversando com ela, tu vai entender. Agora sobre o {psico}, e diferente", npc, creature)
            player:addItem(49703, 1)
            player:addItem(49704, 1)
            player:addItem(49708, 1)
            player:setStorageValue(Storage.exquest.itensex, 1)
        else
            npcHandler:say("Cade meu bongue cara? Preciso relaxar.", npc, creature)
        end
    elseif MsgContains(message, "psico") then
        npcHandler:say({
            "O filho da mae so pensa em dinheiro. Uma vez, ele me disse: O fruto do trabalho e esforco e a riqueza. O fruto do carinho e paixao e o amor. Juntando os dois frutos, voce tem a felicidade.",
            "0 sentido, nao? Bom, pra ele faz. Recomendo que se lembre bem disso.",
        }, npc, creature)
        npcHandler:removeInteraction(npc, creature)
    end
end


npcHandler:setMessage(MESSAGE_GREET, "E ai, meu bom. Como posso te {ajudar}?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adios.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

local internalNpcName = "Gugao"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1206,
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

    if not npcHandler:checkInteraction(npc, creature) then
        return false
    end

    -- Check if the player has the storage value first
    if player:getStorageValue(Storage.exquest.darkacesso) > 0 then
        if MsgContains(message, "role") then
            npcHandler:say("Voce ja tem o acesso cara. Vai la nos rotworms, ao norte de thais. Tu vai se achar", npc, creature)
            npcHandler:removeInteraction(npc, creature)
            return
        end
    end

    -- If the player doesn't have access, continue the conversation
    if MsgContains(message, "role") then
        npcHandler:say("Cara, falar pra tu. Temos tres regras: Nao ser preso, nao ter filho e nao se apaixonar. Eu falhei nos tres, mas tenho um amigo... O {Vava} me impressiona", npc, creature)
    elseif MsgContains(message, "vava") then
        npcHandler:say("Esse cara e doente. Ele leva muito a serio a politica do olhou sorriu, mandioca no bombril. E cada dragao, meua migo. Principalmente aquela {tal de ex} dele", npc, creature)
    elseif MsgContains(message, "tal de ex") then
        npcHandler:say({
            "Por onde posso comecar... Ta, to inicio.",
            "O cara e um gado gigantesco, mas assim, MUITO gado. O cara mudou a vida pra fazer ela feliz, e no fim... Tu ja sabe.",
            "Foi ai que ele se enfiou em jogos. Ele sempre jogou RPG de mesa, mas caiu nos dark souls e afins da vida, e eu nunca vi ele se divertindo tanto.",
            "Coisas como PAREDES INVISIVEIS, TASKS e coisas do tipo... O que me irritava, e que o maldito sempre conseguia, e sempre fazia do jeito mais troll possivel.",
            "O cara era tao nerd em jogos, que ele se chamava de 'spender crusher'. Ele nao gastava um real, e tava sempre pelos tops dos {jogos} que caia pra dentro.",
		}, npc, creature)
	elseif MsgContains(message, "jogos") then
        npcHandler:say({
            "O que nos traz ao proximo topico: A loucura dele. O cara e um doente mano, se liga.",
            "Sempre que ele via quests nos jogos, ele achava padrao demais. Nada muito... Audacioso? Nao sei a palavra certa.",
            "Ele me contou sobre uma tal 'quest do cubo' uma vez com tanto amor nos olhos, que eu fui ver o que era. Mano, que retardo.",
            "Aparentemente, um dia ele vai tentar fazer algo do tipo. De alguma forma, nao sei como, ele vai.",
            "Se algum dia voce se deparar com algo do tipo, procure por PAREDES e PISOS. E se prepare, ele vai te trolar.",
            "Porem, caso tu tenha interesse nos roles antigos, eu preciso de uma {prova} antes."
        }, npc, creature)
    elseif MsgContains(message, "prova") then
        npcHandler:say("Bom demais irmao. Fala pra mim, tu e dos bons? Olhou sorriu, dentro? Quero ver se tu curte uns dragao mesmo. Me traz 20 provas que tu ja pegou uns trambolho por ai, em forma de {dragon leathers}", npc, creature)
    elseif MsgContains(message, "dragon leathers") or MsgContains(message, "leathers") then
        npcHandler:say("Tu consegue me provar que ja pegou uns 20 treco feio? Homem, mulher, o que for? Cade as 20 fatias verdes dos dragao horrivel?", npc, creature)
    elseif MsgContains(message, "yes") then
        if player:removeItem(5877, 20) then
            npcHandler:say("Interessante... Tu e dos meus. Da um pulo nos rotworms ali do norte, tu vai ver uma passagem esquisita, mal feita. Tu vai encontrar o Vava por la. Leva esse item, o Vava curte umas coisas assim.", npc, creature)
            player:addItem(49709, 1)
            player:setStorageValue(Storage.exquest.darkacesso, 1)
        else
            npcHandler:say("Tu ainda nao se aventurou o suficiente em seres humanos feios. Va pegar uns treco do avesso e volta aqui.", npc, creature)
				npcHandler:removeInteraction(npc, creature)
        end
    end
end

npcHandler:setMessage(MESSAGE_GREET, "HAHAHAHAHAHA ENTAO E HOJE O ROLE DOS BONS. Me diga mais sobre o {role} de hoje")
npcHandler:setMessage(MESSAGE_FAREWELL, "Vai la irmao")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

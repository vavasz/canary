local internalNpcName = "Gabrienzo"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 1500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 154,
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

    if not npcHandler:checkInteraction(npc, creature) then
        return false
    end

    -- Check if the player has the storage value
    if player:getStorageValue(Storage.exquest.removecorote) > 0 then
        npcHandler:say("Ja te disse tudo o que eu podia, meu caro. Voce deveria ir visitar o Vava", npc, creature)
        npcHandler:removeInteraction(npc, creature)
        return
    end

    -- If the player does not have the storage value, continue the conversation
    if MsgContains(message, "quimica") then
        npcHandler:say("Vamos la, vou te {explicar} o que sei.", npc, creature)
    elseif MsgContains(message, "explicar") then
        npcHandler:say({
            "Cara, eu sou das antigas. Eu curto misturar uns negocio bao e ver no que da. Sempre de carona, claro.",
            "Mas nao sou muito sociavel. Me faz um favor. Eu fui entrar no role e larguei umas coisas escondidas, pra pegar depois, mas perdi.",
            "Ate aonde eu sei, eu deixei perto do rei, em um bau, na cidade de Thais. Traz pra mim o que eu preciso meu bom: Aquela {cachacinha} amargurada."
        }, npc, creature)
    elseif MsgContains(message, "cachacinha") then
        if player:removeItem(49703, 1) then
            npcHandler:say("Cara, muito obrigado. Me da um {alo} que te explico o que sei.", npc, creature)
            player:setStorageValue(Storage.exquest.removecorote, 1)
        else
            npcHandler:say("Tu nao me trouxe o que preciso cara. Cade meu negocio perdido?", npc, creature)
            npcHandler:removeInteraction(npc, creature)
        end
    elseif MsgContains(message, "alo") then
        npcHandler:say({
            "Sabe mano, eu to jogando aqui tambem. Sou do TeamFarm, entao craftar e minha pegada, mas enfim.",
            "Esse doente ate comecou academia por causa do server. A cabeca fritando, mas ta fazendo um bem danado pra ele, acredite em mim.",
            "Ele me contou sobre o que planeja fazer, e mano... E tanta coisa nova, que eu fiquei pasmo, sabia?",
            "Esses dias, ele estava me falando sobre uma quest no {vazio} absoluto. Talvez eu consiga te ajudar com uns spoilers mano."
        }, npc, creature)
    elseif MsgContains(message, "vazio") then
        npcHandler:say({
            "Tu provavelmente passou pela quest da rotacao de boss, ne? De pegar os outfits e tals. Enfim, tu viu aquelas paredes... Cara doente.",
            "Aparentemente, ele fez pior. Ele criou um negocio inteiro no vacuo. Tudo escuro, impossivel de saber pra onde ir, ou o que fazer... Desgracado.",
            "Se liga, eu sei algumas coisas que podem te ajudar, mas nao detalhes extremos.",
            "Me da um {toque} se quiser saber."
        }, npc, creature)
    elseif MsgContains(message, "toque") then
        npcHandler:say({
            "Pelo que ele me falou na academia, ele vai fazer um monte de coisa troll. Caminhos que voltam pro inicio, um monte de coisa invisivel... Ai ai.",
            "Se liga. O que eu sei, e que voce tem que matar uma certa quantidade de criaturas em algum lugar, de depois tipos diferentes. Depois disso um acesso vai ser liberado.",
            "Dentro desse acesso, a unica coisa que eu sei e que tem uma alavanca, que desbloqueia uma escada. Me perdoa, eu nao tenho muita coisa, mas acho que isso vai {ajudar}."
        }, npc, creature)
    elseif MsgContains(message, "ajudar") then
        npcHandler:say({
            "Como ultima info, conversa com o Vava e com o talarico que ta la com ele. Recomendo ir logo, vai dar briga.",
            "Procura o Gugao tambem, ele ta por ai, cacando uns dragao que ele gosta. O bixo ruim."
        }, npc, creature)
    end
end


				
				

npcHandler:setMessage(MESSAGE_GREET, "Cara, antes de tudo, obrigado. Se voce esta aqui, o sonho daquele corno esta sendo realizado. Me da uma {quimica} que te explico.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Adios.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Ta bom.")

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)

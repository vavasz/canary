local function checkBlood(position)
    local tile = Tile(position)
    local items = tile:getItems()
    for i = 1, #items do
        local item = items[i]
        if not ItemType(item):isMovable() then
            item:remove()
        end
    end
end

------ functions ------

local exfunctions = CreatureEvent("exfunctions")
function exfunctions.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "atal da ex" then
        creature:say("VOCE REALMENTE VAI ME DEIXAR SEM BEBER? EU NAO CONSIGO NEM TE OLHAR ASSIM", TALKTYPE_MONSTER_SAY)
        Game.createMonster("ex sem corote", creature:getPosition(), true, true)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    elseif creature:getName():lower() == "ex sem corote" then
        creature:say("MAS QUE INFERNO. Pelo menos me da comida entao.", TALKTYPE_MONSTER_SAY)
        Game.createMonster("ex depois de comer lanche", creature:getPosition(), true, true)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    elseif creature:getName():lower() == "ex depois de comer lanche" then
        creature:say("Fica dificil namorar alguem assim, que nao tem nada pra oferecer.", TALKTYPE_MONSTER_SAY)
        Game.createMonster("ex pos-termino", creature:getPosition(), true, true)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
    return true
end
exfunctions:register()

local psicofunctions = CreatureEvent("psicofunctions")
function psicofunctions.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "psiquiatra farmer" then
        creature:say("Cara, essa sessao custou uns 300 reais e TU NAO VAI ME PAGAR???", TALKTYPE_MONSTER_SAY)
        Game.createMonster("Psiquiatra contrariado", creature:getPosition(), true, true)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
    return true
end
psicofunctions:register()

local vavafunctions = CreatureEvent("vavafunctions")
function vavafunctions.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "vavasz" then
        creature:say("Meu bom, pra que isso? Tu ta me estressando EU QUERO O BONG", TALKTYPE_MONSTER_SAY)
        Game.createMonster("Vava abstinente", creature:getPosition(), true, true)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
    return false -- Return false if the condition is not met
end
vavafunctions:register()

local trollboss1 = CreatureEvent("trollboss1")
function trollboss1.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "enhanced orshabaal" then
        creature:say("KKKKKKKKKKKKKKKKKK achou que era bug ne?", TALKTYPE_MONSTER_SAY)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
end

local trollboss2 = CreatureEvent("trollboss2")
function trollboss2.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "corrupted apocalypse" then
        creature:say("Tu me da panico, cara, sem brincadeira.", TALKTYPE_MONSTER_SAY)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
end

local trollboss3 = CreatureEvent("trollboss3")
function trollboss3.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "immortal ferumbras" then
        creature:say("Se voce me mandar 300 conto no pix, eu te dou uma ajudinha.", TALKTYPE_MONSTER_SAY)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
end

local trollboss4 = CreatureEvent("trollboss4")
function trollboss4.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "astonish morgaroth" then
        creature:say("KKKKKK voce nao vai conseguir, filho", TALKTYPE_MONSTER_SAY)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
end

local trollboss5 = CreatureEvent("trollboss5")
function trollboss5.onDeath(creature, corpse, lasthitkiller, mostdamagekiller, lasthitunjustified, mostdamageunjustified)
    if creature:getName():lower() == "unbreakable ghazbaran" then
        creature:say("Mano, so para. Na moral.", TALKTYPE_MONSTER_SAY)
        addEvent(checkBlood, 1, creature:getPosition())
        return true
    end
end

trollboss1:register()
trollboss2:register()
trollboss3:register()
trollboss4:register()
trollboss5:register()

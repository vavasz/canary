local bosses = {
    ["ex pos-termino"] = { storage = Storage.exquest.exdeath },
    ["talarico"] = { storage = Storage.exquest.psicodeath },
    ["vava depresso"] = { storage = Storage.exquest.vavaszdeath },
    ["ademiro"] = { storage = Storage.exquest.admdeath },
    ["enhanced orshabaal"] = { storage = Storage.exquest.trollboss1death },
    ["corrupted apocalypse"] = { storage = Storage.exquest.trollboss2death },
    ["immortal ferumbras"] = { storage = Storage.exquest.trollboss3death },
    ["astonish morgaroth"] = { storage = Storage.exquest.trollboss4death },
    ["unbreakable ghazbaran"] = { storage = Storage.exquest.trollboss5death },
}

local bossEvent = CreatureEvent("bossDeath")
function bossEvent.onDeath(creature)
    local bossConfig = bosses[creature:getName():lower()]
    if not bossConfig then
        return true
    end

    onDeathForDamagingPlayers(creature, function(creature, player)
        if bossConfig.storage then
            player:setStorageValue(bossConfig.storage, 1)
        end
    end)
end

bossEvent:register()



local bosses = {
    ["enhanced orshabaal"] = { storage = Storage.exquest.trollboss1death },
    ["corrupted apocalypse"] = { storage = Storage.exquest.trollboss2death },
    ["immortal ferumbras"] = { storage = Storage.exquest.trollboss3death },
    ["astonish morgaroth"] = { storage = Storage.exquest.trollboss4death },
    ["unbreakable ghazbaran"] = { storage = Storage.exquest.trollboss5death },
}

local taskboss = CreatureEvent("trollbosstask")
function taskboss.onDeath(creature)
    local bossConfig = bosses[creature:getName():lower()]
    if not bossConfig then
        return true
    end
    
    onDeathForDamagingPlayers(creature, function(creature, player)
        if bossConfig.storage then
            player:setStorageValue(bossConfig.storage, 1)
        end

        local bossesKilled = 0
        for _, value in pairs(bosses) do
            if player:getStorageValue(value.storage) > 0 then
                bossesKilled = bossesKilled + 1
            end
        end

        if bossesKilled >= 5 then
            player:setStorageValue(Storage.exquest.trollbosstask, 1)
        end
    end)
    return true
end

taskboss:register()



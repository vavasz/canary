local monsterchange = Action()

local c = {
    items = {
        { id = 49707, monsters = { ["ex sem corote"] = { toBoss = "ex depois de comer lanche" } } },
        { id = 49631, monsters = { ["psiquiatra contrariado"] = { toBoss = "talarico" } } },
        { id = 49709, monsters = { ["vava abstinente"] = { toBoss = "ablazing vava" } } },
        { id = 49710, monsters = { ["ablazing vava"] = { toBoss = "vava depresso" } } }
    }
}

function monsterchange.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local tile = Tile(Position(toPosition))
    local creatures = tile:getCreatures()

    if creatures and #creatures > 0 then
        for _, creatureUid in pairs(creatures) do
            local creature = Creature(creatureUid)
            local name = creature:getName()
            
            for _, itemData in ipairs(c.items) do
                if itemData.id == item:getId() and itemData.monsters[name] then
                    item:remove(1)
                    local position = creature:getPosition()
                    local health = creature:getHealth()
                    creature:remove()
                    local newCreature = Game.createMonster(itemData.monsters[name].toBoss, position, true, true)
                    newCreature:setHealth(health)
                    player:say("Aparentemente voce conseguiu acalmar as coisas", TALKTYPE_MONSTER_SAY)
                    return true -- Exit after transforming
                end
            end
        end
    end

    return false -- No transformation happened
end

-- Register each item for the action
for _, itemData in ipairs(c.items) do
    monsterchange:id(itemData.id)
end

monsterchange:register()



local itemTransform = Action()

local transformations = {
    { fromItem = 49627, toItem = 49630, resultItem = 49633, message = "O fruto do trabalho e a riqueza" },
    { fromItem = 49634, toItem = 49635, resultItem = 49632, message = "O fruto do carinho e o amor" },
    { fromItem = 49633, toItem = 49632, resultItem = 49631, message = "Voce tera a felicidade." },
    { fromItem = 49703, toItem = 49704, resultItem = 49706, message = "Ta ficando melhor" },
    { fromItem = 49706, toItem = 49708, resultItem = 49707, message = "PER-FEI-TO. Ela vai gostar" },
}

function itemTransform.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    for _, transform in ipairs(transformations) do
        if item:getId() == transform.fromItem then
            -- Check if target is valid and is an item
            if target and target:isItem() then
                local targetItem = target:getId()
                if targetItem == transform.toItem then
                    item:remove(1)  -- Remove the item being used
                    target:remove(1)  -- Remove the target item
                    player:addItem(transform.resultItem, 1)  -- Give the result item
                    player:sendTextMessage(MESSAGE_INFO_DESCR, transform.message)  -- Send message
                    return true  -- Transformation successful
                end
            end
        end
    end

    return false  -- No transformation happened
end

-- Register each item for the action
for _, transform in ipairs(transformations) do
    itemTransform:id(transform.fromItem)  -- Register the fromItem
end

itemTransform:register()
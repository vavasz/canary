local c = {
    storage = 61924,
    itemId = 49427,
    actionId = 64503
}

local removeitem4 = MoveEvent()

function removeitem4.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    if player:getStorageValue(c.storage) < 0 then
        if player:removeItem(c.itemId, 1) then
            player:setStorageValue(c.storage, 1)
        else
            player:teleportTo(fromPosition)
        end
    end

return true
end

removeitem4:type("stepin")
removeitem4:aid(c.actionId)
removeitem4:register()
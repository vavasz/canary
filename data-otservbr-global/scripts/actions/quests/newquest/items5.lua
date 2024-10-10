local c = {
    storage = 61925,
    itemId = 49428,
    actionId = 64502
}

local removeitem5 = MoveEvent()

function removeitem5.onStepIn(creature, item, position, fromPosition)
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

removeitem5:type("stepin")
removeitem5:aid(c.actionId)
removeitem5:register()
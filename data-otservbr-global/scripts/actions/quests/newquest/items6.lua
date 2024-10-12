local c = {
    storage = 61926,
    itemId = 49429,
    actionId = 64501
}

local removeitem6 = MoveEvent()

function removeitem6.onStepIn(creature, item, position, fromPosition)
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

removeitem6:type("stepin")
removeitem6:aid(c.actionId)
removeitem6:register()
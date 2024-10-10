local c = {
    storage = 61922,
    itemId = 49425,
    actionId = 64505
}

local removeitem2 = MoveEvent()

function removeitem2.onStepIn(creature, item, position, fromPosition)
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

removeitem2:type("stepin")
removeitem2:aid(c.actionId)
removeitem2:register()
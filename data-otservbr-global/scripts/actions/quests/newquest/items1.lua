local c = {
    storage = 61921,
    itemId = 49424,
    actionId = 64500
}

local removeitem1 = MoveEvent()

function removeitem1.onStepIn(creature, item, position, fromPosition)
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

removeitem1:type("stepin")
removeitem1:aid(c.actionId)
removeitem1:register()
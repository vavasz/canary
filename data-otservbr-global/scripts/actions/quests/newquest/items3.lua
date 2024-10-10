local c = {
    storage = 61923,
    itemId = 49426,
    actionId = 64504
}

local removeitem3 = MoveEvent()

function removeitem3.onStepIn(creature, item, position, fromPosition)
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

removeitem3:type("stepin")
removeitem3:aid(c.actionId)
removeitem3:register()
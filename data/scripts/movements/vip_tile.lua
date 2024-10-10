local config = {
    -- Coloca as posições que vc quer aqui
    { x = 32363, y = 32241, z = 7 },
    { x = 32363, y = 32242, z = 7 },
}

local vipTile = MoveEvent()
function vipTile.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()

    if not player then
        return false
    end

    for value in pairs(config) do
        if Position(config[value]) == player:getPosition() then
            if player:isVip() then
                return true
            end
            player:teleportTo(fromPosition)   
            fromPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to be VIP to pass.")
            return true
        end
    end    
end

for value in pairs(config) do
    vipTile:position(config[value])
end

vipTile:register()
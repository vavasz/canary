local c = {
firstTp = Position(1190, 334, 6), -- where the teleport that gives access sends the player
secondTp = Position(1112, 482, 6), -- where the teleport that needs access sends the player
firstAid = 57017, -- actoin id of the first teleport
secondAid = 57018, -- actoin id of the second teleport
sto = 93118, -- storage that gives access
message = "Voce precisa de TODOS os atalhos para matar o boss." -- message if player dont have access
}

local firstTeleport = MoveEvent()

function firstTeleport.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return
    end

    if player then
        player:setStorageValue(c.sto, 1)
        player:teleportTo(c.firstTp)
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
				player:sendTextMessage(MESSAGE_STATUS, "Voce pode matar o boss e desbravar o resto do game. Recomendo ter TODOS os acessos antes")
    end
return true
end
firstTeleport:aid(c.firstAid)
firstTeleport:type("stepin")
firstTeleport:register()

local secondTeleport = MoveEvent()

function secondTeleport.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return
    end

    if player and player:getStorageValue(c.sto) <= 0 then
        player:teleportTo(fromPosition)
        player:sendCancelMessage(c.message)
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
    else
        player:teleportTo(c.secondTp)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    end
return true
end
secondTeleport:aid(c.secondAid)
secondTeleport:type("stepin")
secondTeleport:register()

local c = {
    firstTp = Position(604, 53, 0), -- where the teleport that gives access sends the player
    secondTp = Position(790, 567, 7), -- where the teleport that needs access sends the player
firstAid = 57025, -- actoin id of the first teleport
secondAid = 57026, -- actoin id of the second teleport
sto = 93122, -- storage that gives access
message = "Voce ainda nao liberou esse atalho. A melhor hunt de Knight do game!. Para isso, mate o boss quase impossivel." -- message if player dont have access
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
				player:sendTextMessage(MESSAGE_STATUS, "Voce liberou o acesso a melhor hunt de Knight do game!")
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

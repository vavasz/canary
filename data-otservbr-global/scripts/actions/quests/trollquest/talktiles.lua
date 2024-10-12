--------talktiles-------

local talklouco = MoveEvent()

function talklouco.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    player:say("Se voce tem sanidade mental, volte.", TALKTYPE_MONSTER_SAY)
end

talklouco:type("stepin")
talklouco:position(Position(389, 1281, 0), Position(413, 1271, 0))
talklouco:register()


local talkaviso = MoveEvent()

function talkaviso.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    player:say("Voce tem certeza que esta com todos os itens? TEM CERTEZA?", TALKTYPE_MONSTER_SAY)
end

talkaviso:type("stepin")
talkaviso:position(Position(3103, 34263, 2), Position(3125, 34293, 2), Position(3152, 34276, 2))
talkaviso:register()


------ talknodeath -----

local storages = {
    [1] = { storage = 61964, actionId = 1001 },
    [2] = { storage = 61954, actionId = 1002 },
    [3] = { storage = 61955, actionId = 1003 },
    [4] = { storage = 61956, actionId = 1004 },
    [5] = { storage = 61957, actionId = 1005 },
    [6] = { storage = 61966, actionId = 1006 },
}

local explorer = MoveEvent()

function explorer.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    for _, data in pairs(storages) do
local actId = item:getAttribute(ITEM_ATTRIBUTE_ACTIONID)
        if actId == data.actionId and player:getStorageValue(data.storage) < 0 then
            player:teleportTo(fromPosition)
            player:say("Ainda nao. Explore mais.", TALKTYPE_MONSTER_SAY)
            return true
        end
    end

    return true
end

explorer:type("stepin")

for _, data in pairs(storages) do
    explorer:aid(data.actionId)
end

explorer:register() 


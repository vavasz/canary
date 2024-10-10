local talkremoveitem = MoveEvent()

function talkremoveitem.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    player:say("Seu pergaminho foi usado como acesso ao boss. Talvez voce o encontre por ai novamente.", TALKTYPE_MONSTER_SAY)
end

talkremoveitem:type("stepin")
talkremoveitem:position(Position(510, 2873, 1), Position(180, 3142, 1), Position(286, 3135, 1), Position(569, 3118, 1), Position(749, 3124, 1),Position(952, 3087, 1))
talkremoveitem:register()
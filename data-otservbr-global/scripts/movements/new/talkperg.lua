local talkbeforeperg = MoveEvent()

function talkbeforeperg.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end

    player:say("Sem o pergaminho em maos, voce NUNCA passara aqui", TALKTYPE_MONSTER_SAY)
end

talkbeforeperg:type("stepin")
talkbeforeperg:position(Position(506, 2873, 1), Position(174, 3142, 1), Position(285, 3134, 1), Position(563, 3118, 1), Position(747, 3124, 1),Position(948, 3087, 1))
talkbeforeperg:register()